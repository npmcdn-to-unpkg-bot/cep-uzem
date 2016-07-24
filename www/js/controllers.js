angular.module('starter.controllers', [])

.controller('DashCtrl', function($scope) {})

.controller('ChatsCtrl', function() {

})

.controller('TakvimCtrl',function($scope){
$scope.currentDate = new Date();
$scope.minDate = new Date(2105, 6, 1);
$scope.maxDate = new Date(2015, 6, 31);
 
$scope.datePickerCallback = function (val) {
    if (!val) { 
        console.log('Date not selected');
    } else {
        console.log('Selected date is : ', val);
    }
};
})


.controller('AccountCtrl', function($scope) {
  $scope.settings = {
    enableFriends: true
  };
});
