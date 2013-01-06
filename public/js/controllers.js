'use strict';

/* Controllers */

angular.module('myApp', ['ngSanitize']);
function PreviewCtrl($scope, $http, $timeout) {
		$scope.no_load = false;
		$scope.render_preview = function(){
				if(!$scope.no_load){
						$scope.set_timeout();
				}
		};

		$scope.set_timeout = function(){
				$scope.no_load = true;
				$timeout(function(){
						$scope.no_load = false;
						$http.post('/', {markdown: $scope.markdown}).success(function(data) {
								$scope.preview = data;
						});
				}, 500);
		};
}
PreviewCtrl.$inject = ['$scope', '$http', '$timeout'];
