// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

 
 contract profileStatus {  
   struct Status {   // this is the struct that will be used to store the status of the user what is struct in solidity so ?  struct is a user-defined data type that is used to store a collection of data. This data can be of different types.
   string statusMessage;
   bool   exists;
   }
   
   mapping (address => Status ) public UserStatus;
   
   event StatusCreated (address indexed Wallet , string status); // this is the event that will be emitted when the status of a user is created
   event StatusUpdated (address indexed Wallet , string status); // this is the event that will be emitted when the status of a user is updated

   function createsStatus(string memory intialstatus) public {   // this is the function that will be used to create the status of a user
       require(UserStatus[msg.sender].exists == false, "Status already exists");  // this is the require statement that will check if the status of the user already exists or not

       UserStatus[msg.sender] = Status(intialstatus, true); // this is the statement that will create the status of the user
       emit StatusCreated(msg.sender, intialstatus);
   }

    function updateStatus(string memory newstatus) public {  // this is the function that will be used to update the status of a user
         require(UserStatus[msg.sender].exists == true, "Status does not exist");  // this is the require statement that will check if the status of the user exists or not
    
         UserStatus[msg.sender].statusMessage = newstatus;  // this is the statement that will update the status of the user
         emit StatusUpdated(msg.sender, newstatus);  // this is the event that will be emitted when the status of the user is updated
    }

    function getStatus(address user) public view returns (string memory) {   // this is the function that will be used to get the status of a user
        require(UserStatus[user].exists == true, "Status does not exist");
        return UserStatus[user].statusMessage;   
    }


 }