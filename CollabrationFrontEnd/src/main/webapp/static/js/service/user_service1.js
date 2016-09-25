'use strict';

angular.module('myApp').factory('UserService', ['$http', '$q', function($http, $q){

 /*   var REST_SERVICE_URI = 'http://localhost:8080/Spring4MVCAngularJSExample/user/';
*/ 
	var REST_SERVICE_URI = 'http://localhost:8002/CollabrationBackEnd/createblog';

    var factory = {
        
       fetchAllUsers: fetchAllUsers,
       createblog: createblog
        
    };

    return factory;
    
    function fetchAllUsers() {
        var deferred = $q.defer();
        $http.get(REST_SERVICE_URI)
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

    
    function createblog(user) {
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


    
}]);









/*'use strict';

angular.module('myApp').factory('BlogService', ['$http', '$q', function($http, $q){
    var REST_SERVICE_URI = 'http://localhost:8080/Spring4MVCAngularJSExample/user/';
 
	var REST_SERVICE_URI = 'http://localhost:8080/alumni/blog11/';

    var factory = {
        
       fetchAllBlogs: fetchAllBlogs,
       createBlog: createblog
        
    };

    return factory;
    
    function fetchAllBlogs() {
        var deferred = $q.defer();
        $http.get(REST_SERVICE_URI)
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

*/
    
