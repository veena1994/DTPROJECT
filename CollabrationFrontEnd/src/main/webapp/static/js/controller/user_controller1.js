'use strict';

angular.module('myApp').controller('UserController', ['$scope', 'UserService', function($scope, UserService) {
    var self = this;
    self.user={Blogname:'',contents:''};
    self.users=[];

    self.submit = submit;
  
    fetchAllUsers();

    function fetchAllUsers(){
        UserService.fetchAllUsers()
            .then(
            function(d) {
                self.users = d;
            },
            function(errResponse){
                console.error('Error while fetching Users');
            }
        );
    }


    function createUser(user){
    	console.log('inside controller');
        UserService.createUser(user)
        .then(
                fetchAllUsers,
                function(errResponse){
                    console.error('Error while creating User');
                }
            );
                   
           
    }
    function createblog(user){
    	console.log('inside controller');
        UserService.createblog(user)
        .then(
                fetchAllBlogs,
                function(errResponse){
                    console.error('Error while creating User');
                }
            );
                   
           
    }

    
    function submit() {
     /*   if(self.user.id===null){
            console.log('Saving New User', self.user);
    */       
    	createblog(self.user);
     /*   }else{
            updateUser(self.user, self.user.id);
            console.log('User updated with id ', self.user.id);
        }*/
        reset();
    }

    function reset(){
        self.user={id:null,username:'',address:'',email:''};
        $scope.myForm.$setPristine(); //reset Form
    }

}]);










/*'use strict';

angular.module('myApp').controller('BlogController', ['$scope', 'BlogService', function($scope, BlogService) {
    var self = this;
    self.blog={name:'',id:'',contents:''};
    self.blogs=[];

    self.submit = submit;
  
    fetchAllBlogs();

    function fetchAllBlogs(){
        BlogService.fetchAllBlogs()
            .then(
            function(d) {
                self.blogs = d;
            },
            function(errResponse){
                console.error('Error while fetching Users');
            }
        );
    }


    function createUser(user){
    	console.log('inside controller');
        UserService.createUser(user)
        .then(
                fetchAllUsers,
                function(errResponse){
                    console.error('Error while creating User');
                }
            );
                   
           
    }
    function createBlog(blog){
    	console.log('inside controller');
        BlogService.createBlog(blog)
        .then(
                fetchAllBlogs,
                function(errResponse){
                    console.error('Error while creating User');
                }
            );
                   
           
    }

    
    function submit() {
        if(self.user.id===null){
            console.log('Saving New User', self.user);
           
    	createBlog(self.blog);
        }else{
            updateUser(self.user, self.user.id);
            console.log('User updated with id ', self.user.id);
        }
        reset();
    }

    function reset(){
        self.user={id:null,username:'',address:'',email:''};
        $scope.myForm.$setPristine(); //reset Form
    }

}]);
*/