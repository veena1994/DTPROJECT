'use strict';

angular.module('myApp').factory('UserService', ['$http', '$q', function($http, $q){

 /*   var REST_SERVICE_URI = 'http://localhost:8080/Spring4MVCAngularJSExample/user/';
*/ 
	var REST_SERVICE_URI = 'http://localhost:8052/CollabrationBackEnd/createblog';
	var REST_SERVICE_FETCH_URI = 'http://localhost:8052/CollabrationBackEnd/blogs';
	var REST_SERVICE_UPDATE_URI = 'http://localhost:8052/CollabrationBackEnd/blogs';
	var REST_SERVICE_DELETE_URI = 'http://localhost:8052/CollabrationBackEnd/blogs';

    var factory = {
        
       fetchAllUsers: fetchAllUsers,
       createUser: createUser,
       updateUser:updateUser,
       deleteUser:deleteUser
    };

    return factory;
    
    function fetchAllUsers() {
        var deferred = $q.defer();
        $http.get(REST_SERVICE_FETCH_URI)
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while fetching Users');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }

    
    function createUser(user) {
        var deferred = $q.defer();
        console.log('inside user service')
        $http.post(REST_SERVICE_URI, user)
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while creating User');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }


    function updateUser(user, Id) {
        var deferred = $q.defer();
        $http.put(REST_SERVICE_UPDATE_URI+Id, user)
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while updating User');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }
 
    function deleteUser(Id) {
        var deferred = $q.defer();
        $http,delete(REST_SERVICE_DELETE_URI+Id)
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while deleting User');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }
    
 
}]);


