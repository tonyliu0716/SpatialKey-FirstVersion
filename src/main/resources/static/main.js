var app = angular.module('minmax', [
   'jcs-autoValidate',
    'angular-ladda'
]);

app.run(function (defaultErrorMessageResolver) {
    defaultErrorMessageResolver.getErrorMessages().then(function (errorMessages) {
        errorMessages['tooYoung'] = 'You must be at least {0} years old to use this site.';
        errorMessages['tooOld'] = 'You must be max {0} years old to use this site.';
        errorMessages['badUsername'] = 'Username can only contain numbers and letters and _.';
    })
});
// https://minmax-server.herokuapp.com/register/'

app.controller('MinMaxCtrl', function ($scope, $http) {
    $scope.formModel = {};
    
    $scope.submitting = false;
    
    $scope.onSubmit = function () {
        $scope.submitting = true;
        console.log("Hey, I am submitted!");
        console.log($scope.formModel);

        $http.post('https://minmax-server.herokuapp.com/register/',             $scope.formModel)

        .success(function(result) {
            $scope.submitting = false;
            console.log(":)");
        })
        .error(function (data) {
            $scope.submitting = false;
            console.log(":(");
        });
        
    };
});