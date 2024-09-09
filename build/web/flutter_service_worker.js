'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "9f358848828b0d8443db79b286eda04e",
"version.json": "c4fb2333b88a696e684daf93242d37af",
"index.html": "258e5f898900d956c2890c0599568562",
"/": "258e5f898900d956c2890c0599568562",
"main.dart.js": "c87d7aa61707a5ccd1258249f17a0cf7",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "52b6d970a7c8cae4c49603ae1feb9d59",
"assets/AssetManifest.json": "1cf896535771f1aae3078fd246c32b1e",
"assets/NOTICES": "6fb8fa72ccf262f28d7c7514ab35f8cc",
"assets/FontManifest.json": "459b0837ed0ec78af0d464c544eb79d9",
"assets/AssetManifest.bin.json": "a10190f00f2b24ae84b64f3e9f9ad4ad",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/lib/thumbnail/puring.jpeg": "a212971ca3d9b6144e51971ad081f414",
"assets/lib/thumbnail/bungamatahari.jpg": "015883ef985aac892c907688f947c72a",
"assets/lib/thumbnail/dracaena.jpg": "474f0ac7c5b1acd0a8769585fb27f12d",
"assets/lib/thumbnail/keladi.jpg": "f37c8fda6350238e61b7afb5166593ad",
"assets/lib/thumbnail/bamburejeki.jpg": "1e113aa5959a0374bdd14fb2e05a3336",
"assets/lib/thumbnail/asoka.jpg": "d22560ce0254bb0c6e2d8890f54570e8",
"assets/lib/thumbnail/anggrekbulan.jpg": "20662ef237c4c2ae58130b51c362f9b7",
"assets/lib/thumbnail/kaktusmini.jpg": "0d4c34c1f377625f332ec6c7c7af3e19",
"assets/lib/thumbnail/daundolar.webp": "930f4a7268f372cac9522dbc42c49351",
"assets/lib/thumbnail/beringin.jpg": "5f743215286228bc39947598cb3a128d",
"assets/lib/thumbnail/monstera.jpg": "503d50d03f38ee8d6111b5fd0b8ebb51",
"assets/lib/thumbnail/srirejeki.jpg": "cfe8b407a30201ffb18c97b740226299",
"assets/lib/thumbnail/kamboja.jpg": "e91a0a1337672082e282e151f9bf073e",
"assets/lib/thumbnail/palemkuning.webp": "376b4883579532f50a92f73368f7f5cd",
"assets/lib/thumbnail/anggrek.jpg": "9cf0718f5f6aa5ac490ea7126ab0a40f",
"assets/lib/thumbnail/begonia.jpg": "f308739088fff704f0f392be7aa3423f",
"assets/lib/thumbnail/kaktus.webp": "85e52d744059674f0a5fbbccb1ac3a7d",
"assets/lib/thumbnail/lidahmertua.jpg": "0ea2b7600ee44ae7776de0bf86c4cc8c",
"assets/lib/thumbnail/kemuning.jpg": "561d1fd144c81c7abdcae68d65ed0706",
"assets/lib/thumbnail/sansevieria.jpg": "324eef9284b93a252de8ccc4bf35a3ff",
"assets/lib/thumbnail/lidahbuaya.jpeg": "3b4f6cd40900538878dee53002a74966",
"assets/lib/thumbnail/aglonema.jpeg": "f950c9c34d26b1834a4ce60fe7b10309",
"assets/lib/thumbnail/sikas.jpg": "0262ed2205d7aa0c65d110cd6e5217b8",
"assets/lib/thumbnail/pothos.jpg": "66bbd73358a2d399896d551216bfc63f",
"assets/lib/thumbnail/melati.jpg": "583968cdfcebe7d081bde07da1f0bb88",
"assets/lib/thumbnail/mainhp.webp": "b05e8a846eca27b0eab3c538e3a2b1b0",
"assets/lib/thumbnail/mawar.webp": "d8fce08db485e09037e1ee4712a20345",
"assets/lib/thumbnail/bougainvillea.jpg": "50f8b1154e87cc6f0c4a7273ec15cf06",
"assets/lib/thumbnail/pakutandukrusa.jpg": "d586fe52437a6e66a38df9ba9533a189",
"assets/lib/thumbnail/pakuekorkuda.jpg": "f3c7b8ad28aab8da241d799378c502f8",
"assets/lib/thumbnail/sirihgading.jpg": "d90c0c200e45d904f20184f9cc09b482",
"assets/lib/thumbnail/anthurium.jpg": "e9e86e2878452e189b7d202bf174be1f",
"assets/lib/thumbnail/bonsaiserut.webp": "44828d2fdf4eff5d8444385d3d1b6bb6",
"assets/lib/thumbnail/sukulen.webp": "9b62edc889f61c137c440fab0005d631",
"assets/lib/thumbnail/zamioculcas.jpg": "77e638953ef8772999bb5638eb7aac71",
"assets/lib/thumbnail/daunungu.jpg": "6caae09b2804f0f183b772ac5d01c345",
"assets/lib/detail/bonsaiserut1.jpg": "99bba18e332cb8aa093bd9728f4c28ee",
"assets/lib/detail/beringin1.jpeg": "44dcba075c3cc7adf9a8b11d5d270de1",
"assets/lib/detail/bungamatahari1.jpeg": "074240d82287b1fb2234ba9a1501b8af",
"assets/lib/detail/pakutandukrusa1.jpeg": "8b180507a14cdb70486b3df1d49c3268",
"assets/lib/detail/kaktusmini1.jpg": "afea747978684d97d0ff3149d7d828ee",
"assets/lib/detail/sikas1.jpg": "9ed382ea175ebfefc09141eca5389f7f",
"assets/lib/detail/puring1.png": "e7b262848797cfc08ec5e3faaba70fc4",
"assets/lib/detail/anthurium1.jpg": "65defe623a5c2515b021964ef743bc52",
"assets/lib/detail/monstera1.jpg": "fca6f64f952860d26ffcdd246a33d293",
"assets/lib/detail/bougainvillea1.jpeg": "76cec49e93fe424ce78b3d95a03de72d",
"assets/lib/detail/kamboja1.jpg": "4229aff019497b9d14665e887e34203f",
"assets/lib/detail/kemuning1.jpg": "767600d25a7290fdec74a8faa3a8a696",
"assets/lib/detail/keladi1.jpg": "be2bab75ac2195d4bfa4c0f3b0eef741",
"assets/lib/detail/dracaena1.jpg": "db183911f001cd02c70ed5d179a53136",
"assets/lib/detail/zamioculcas1.webp": "0ecd62113e73f0e86cb7e31c43c1a78d",
"assets/lib/detail/bamburejeki1.jpg": "71041c4ff01d0ea73a6c42f6a6b5dd73",
"assets/lib/detail/melati1.jpeg": "3d1cfeb7016c4f30d6219584347e1786",
"assets/lib/detail/palemkuning1.JPG": "e02f6787124fc992f5389928783d8da1",
"assets/lib/detail/lidahmertua1.jpg": "0ea2b7600ee44ae7776de0bf86c4cc8c",
"assets/lib/detail/daundolar1.webp": "e37b00fb43871734be747d586bdcc629",
"assets/lib/detail/lidahbuaya1.jpg": "000f7ec8f4bd10af511afb097db98d97",
"assets/lib/detail/sirihgading1.jpeg": "42ca25431f978efef2f8ae0583ab1faa",
"assets/lib/detail/aglonema1.jpg": "f18ad48aff3bedd1516e97a105287eda",
"assets/lib/detail/anggrekbulan1.jpg": "cf38d32db80328c807b57bb268eed5a5",
"assets/lib/detail/asoka1.webp": "91e9b6801c6db085161f733df580f4e6",
"assets/lib/detail/daunungu1.jpg": "e4c6be121829bbb55bd91eca40022c1b",
"assets/lib/detail/srirejeki1.webp": "2a5f01ff006f1e9c35371c158d993b61",
"assets/lib/logo/logo.png": "77b6fb0ac2857ae80716e106aa33a333",
"assets/lib/font/VintageRough-DemoVersion-Regular.otf": "f993e8c1a2faa5f453ecfd9440db457a",
"assets/lib/font/Product-Sans-Regular.ttf": "eae9c18cee82a8a1a52e654911f8fe83",
"assets/AssetManifest.bin": "3a98d345929eb31ef783aca495f07835",
"assets/fonts/MaterialIcons-Regular.otf": "ed21c623a40b50cfa23f3578075ad2c9",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
