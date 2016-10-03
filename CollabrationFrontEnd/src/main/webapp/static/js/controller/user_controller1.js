'use strict';

angular.module('myApp').controller('UserController', ['$scope', 'UserService', function($scope, UserService) {
    var self = this;
    self.user={Blogname:'',contents:''};
    self.users=[];

    self.submit = submit;
    self.edit = edit;
    self.remove = remove;
     self.reset = reset;
    
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
        function updateUser(user, Id){
            UserService.updateUser(user, Id)
                .then(
                fetchAllUsers,
                function(errResponse){
                    console.error('Error while updating User');
                }
            );
        }

        function deleteUser(Id){
            UserService.deleteUser(Id)
                .then(
                fetchAllUsers,
                function(errResponse){
                    console.error('Error while deleting User');
                }
            );
        }
     
       
     
       
        function edit(Id){
            console.log('id to be edited', Id);
            for(var i = 0; i < self.users.length; i++){
                if(self.users[i].Id === Id) {
                    self.user = angular.copy(self.users[i]);
                    break;
                }
            }
        }
     
     
           
        function remove(Id){
            console.log('id to be deleted', Id);
            if(self.user.Id === Id) {//clean form if the user to be deleted is shown there.
                reset();
            }
            deleteUser(Id);
        }
     
    function submit() {
     /*   if(self.user.id===null){
            console.log('Saving New User', self.user);
    */       
    	createUser(self.user);
     /*   }else{
            updateUser(self.user, self.user.id);
            console.log('User updated with id ', self.user.id);
        }*/
        reset();
    }

    function reset(){
        self.user={BlogName:'',Contents:''};
        $scope.myForm.$setPristine(); //reset Form
    }

}]);










