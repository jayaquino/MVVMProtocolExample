# MVVMProtocolExample


## Description
* Practice implementing protocols in a basic MVVM design pattern. Consists of just the root view, a table view, a API call model, and a table view cell view model. 
* Once the user presses a button to navigate to the table view, the view model through delegation performs a network call.
* Data is received and decoded by JSONDecoder. 
* The decoded data is sent back to the controller and displayed on the view.

# What I Learned
* Protocol and delegate relationship between the controller and the view model.
* API call can be further separated from the ViewModel using singleton pattern.
