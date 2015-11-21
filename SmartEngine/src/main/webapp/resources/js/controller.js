var neuApp = angular.module('neuApp', ['ngFileUpload']);

neuApp.controller('MainCtrl',
		['$scope', 'Upload', '$timeout',function($scope, Upload, $timeout) {

	$scope.upload = function(sentence) {
		$(".loading-effect-container").fadeIn(500);
		Upload.upload({
			url: 'php/sentenceupload',
			method: 'POST',
			data: { setence: sentence, ip: 'userip' }
		}).then(function(resp) {
			$(".loading-effect-container").fadeOut(500);

		});
	};

	$scope.uploadFile = function(file, errFiles) {
		$(".loading-effect-container").fadeIn(500);
		$("#upload-submenu").fadeOut(100);

		$scope.file = file;
		if (file) {
			file.upload = Upload.upload({
				url: 'file_upload',
				method: 'GET',
				data: { file: file }
			})

			file.upload.then(function (resp) {
				var data = resp.data;
				console.log(data);
				//resp = JSON.stringify(eval('('+ data +')'));
				//var result = JSON.parse(data)
				//console.log(result.toString());
				$(".loading-effect-container").fadeOut(500);
			});
		}
	};

	$scope.uploadFiles = function(files) {
		$(".loading-effect-container").fadeIn(500);
		$("#upload-submenu").fadeOut(100);
		$scope.files = files;
		if (files && files.length) {
			Upload.upload({
				url: 'multi_file_upload',
				data: {
					files: files
				}
			}).then(function(response) {
				$(".loading-effect-container").fadeOut(500);
			});
		}
	};

}]);