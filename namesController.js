angular.module('myApp', []).controller('nameCtrl', function($scope) {
    $scope.name = [
        {name:'Veena',country:'hup'},
        {name:'Jani',country:'Norway'},
        {name:'Hege',country:'Sweden'},
        {name:'Kai',country:'Denmark'}
    ];
});