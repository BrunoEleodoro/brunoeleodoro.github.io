'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "fb800d37cb51ce25f91a8114a375508b",
"index.html": "8797d6ad690ce7c29fbe0fb84b1345a1",
"/": "8797d6ad690ce7c29fbe0fb84b1345a1",
"main.dart.js": "aa650ecf543ec7d92b10436c176e143d",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "190711d25f577894a01d6e4cc37c8249",
"assets/AssetManifest.json": "f0afb52e9d5b295dc31dcb78fb9add65",
"assets/NOTICES": "db710f4b9e0c9c28324f60e7734025c3",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "ffed6899ceb84c60a1efa51c809a57e4",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "eaed33dc9678381a55cb5c13edaf241d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "3241d1d9c15448a4da96df05f3292ffe",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/assets/talk-geolocation.png": "ce3ca101e077ef0db8a0ebad208dcb56",
"assets/assets/hack-in-sampa2.jpeg": "4bc0c2d3ccb7abaabfc9211e3dd143f5",
"assets/assets/hack-in-sampa3.jpg": "bdb7fccbc757cb94aa8a6f70127d3e09",
"assets/assets/hack-campinas.jpg": "bad10c1e292e74b663e27ac5527f19e5",
"assets/assets/hack-synvia.jpg": "3446cc08b27d074d31fe3314c95460bc",
"assets/assets/hack-sherlock.png": "9b56445eaf3911f724c4bc849bbd60f2",
"assets/assets/hack-ima.jpg": "4b495a5c3ac0b0773ae3038445df408e",
"assets/assets/language-flutter.png": "1581778e963a224c0cd47e08b27c0eea",
"assets/assets/hack-ibm.jpg": "a2753d18bfebbf2b6f157fcfc6e8b288",
"assets/assets/hack-dplasma.jpg": "d6839f77a2077647180d3dfea7a16262",
"assets/assets/talk-fluttertalks.jpg": "35e280295ea1d75e432cc7b03675a210",
"assets/assets/language-mongo.png": "4dd5973612e521132d61ef050d1f4488",
"assets/assets/language-docker.png": "15c490e97ec5f2e412f80ef6c4252848",
"assets/assets/hack-santos.jpg": "f624bd5aa6dd68be4489651c7f5e60be",
"assets/assets/language-node.png": "b3370842b0743c371f81a26385c70912",
"assets/assets/hack-callforcode.jpg": "64e8632c856acdfa6783689698236983",
"assets/assets/language-react.png": "4c37725dbd3c2eb9a8e00899b5d3c9fd",
"assets/assets/hack-nasa.jpg": "10ce01c1e65ac41db509b43010546f89",
"assets/assets/hack-cvlatam.jpg": "223147c3f2128f184ed6e2001370a1a6",
"assets/assets/talk-unicamp.jpg": "b82a66db3dc9c1d928305a8a46ff26d8",
"assets/assets/hack-flutter.jpg": "2473fb2be029f370f65d28930fb961a1",
"assets/assets/hack-callforcode2.jpeg": "bebfce127a576a081966a21b1a38edcb",
"assets/assets/talk-movile.png": "5a7693e0a6edcb93efdf97f59ad94dfc"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
