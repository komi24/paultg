// Ionic Starter App

// angular.module is a global place for creating, registering and retrieving Angular modules
// 'starter' is the name of this angular module example (also set in a <body> attribute in index.html)
// the 2nd parameter is an array of 'requires'
angular.module('starter.services', ['ngResource'])
.service('ogury', function () {
    var CPresage = {
      adToServe: function(onAdEvent, onAdNotFound) {
        cordova.exec(onAdEvent, onAdNotFound, 'CPresage', 'adToServe', [{}]);
      }
    };
    return {
        adToServe: function () {
            var ad = {
                onAdEvent: function (event) {
                    console.log('onAdEvent called here');
                    if (event == 'AdFound') {
                        console.log('AD FOUND');
                        // If you want to do specific stuff when an ad is about to be displayed, even just a log
                    } else if (event == 'AdClosed') {
                        console.log('AD CLOSED');
                        // If you want to do specific stuff when an ad is clicked or dismissed, even just a log
                    }
                    else if (event == 'AdError') {
                        console.log('AD ERROR');
                    }
                    else if (event == 'AdDisplayed') {
                        console.log('AD DISPLAYED');
                    }
                },
                onAdNotFound: function (error) {
                    console.log('AD NOT FOUND',error);
                    // If you want to do specific stuff when no ad to display, even just a log
                }
            };
            if (typeof CPresage !== "undefined") {
              console.log("test");
                CPresage.adToServe(ad.onAdEvent, ad.onAdNotFound);
            }
        }
    };
})


angular.module('starter', ['ionic', 'starter.services'])
.run(function($ionicPlatform) {
  $ionicPlatform.ready(function() {
    if(window.cordova && window.cordova.plugins.Keyboard) {
      // Hide the accessory bar by default (remove this to show the accessory bar above the keyboard
      // for form inputs)
      cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true);

      // Don't remove this line unless you know what you are doing. It stops the viewport
      // from snapping when text inputs are focused. Ionic handles this internally for
      // a much nicer keyboard experience.
      cordova.plugins.Keyboard.disableScroll(true);
    }
    if(window.StatusBar) {
      StatusBar.styleDefault();
    }
  });
})
.controller("appCtrl", function($scope, $ionicPlatform, $ionicHistory, ogury){
 
  $ionicPlatform.ready(function() {
  // this is the complete list of currently supported params you can pass to the plugin (all optional)
  var options = {
    message: 'Un bouton ===> Tu fermes bien ta grande gueule !', // not supported on some apps (Facebook, Instagram)
    url: 'https://play.google.com/store/apps/details?id=appinventor.ai_paul_bejannin.Ta_Gueule_Bouton&hl=fr',
  }


  var onSuccess = function(result) {
    console.log("Share completed? " + result.completed); // On Android apps mostly return false even while it's true
    console.log("Shared to app: " + result.app); // On Android result.app is currently empty. On iOS it's empty when sharing is cancelled (result.completed=false)
  }

  var onError = function(msg) {
    console.log("Sharing failed with message: " + msg);
  }

    
    $scope.loaded = false;
    $scope.oldVolume = 0;
    $scope.volume = 50;
    $scope.tagueule = function() {
    // Preload an audio track before we play it
    console.log("ok");
      ogury.adToServe();
    console.log("ok");
      if(! $scope.loaded){
        window.plugins.NativeAudio.preloadComplex("master", "img/tagueule1.mp3", ($scope.volume+1)/1000, 5, 0, function(msg) {
          $scope.oldVolume = $scope.volume;
          $scope.loaded = true;
          window.plugins.NativeAudio.play("master"); // Play audio track
        }, function(msg) {
          console.log('error: ' + msg); // Loading error
        });
      } else if ($scope.volume !== $scope.oldVolume) {
        window.plugins.NativeAudio.unload("master", function(msg) {
          $scope.loaded = false;
          window.plugins.NativeAudio.preloadComplex("master", "img/tagueule1.mp3", ($scope.volume+1)/1000, 5, 0, function(msg) {
            $scope.loaded = true;
            $scope.oldVolume = $scope.volume;
            window.plugins.NativeAudio.play("master"); // Play audio track
          }, function(msg) {
            console.log('error: ' + msg); // Loading error
          });
        }, function(msg) {
          console.log('error: ' + msg); // Loading error
        });
      } else {
        window.plugins.NativeAudio.play("master");
      }
    };  
    $scope.quitter = function(){
      if(navigator.app && navigator.app.exit ) {
        console.log("1")
        navigator.app.exit();
      } else if (navigator.app && navigator.app.exitApp) {
        console.log("4")
        navigator.app.exitApp();
      } else if (navigator.device) {
        console.log("2")
        navigator.device.exit();
      } else {
        console.log("3")
        $ionicHistory.goBack();
      }
    }
    $scope.share = function(){
      window.plugins.socialsharing.shareWithOptions(options, onSuccess, onError);
    }
  });
})
