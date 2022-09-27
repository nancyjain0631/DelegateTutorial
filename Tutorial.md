#  Agenda
    What we want is, we want to save information in SecondViewController and that info should be there in ViewController
    Step 1: create view (navigation controller, secondViewController, labels, textfields, buttons)
    Step 2: attach then to corresponding files
    Step 3: Create protocol
    
    we want to pass data from SecondViewController , so we'll create protocol in SecondViewController file not class(outside class) and then, create a delegate variable in SecondViewController use the function defined in protocol using delegate var and pass things that we want to pass
    Step 4: go to file where we want to use that protocol,
    make extension and conform to the protocol, assign things
    
    IMP: also assign to self where we are using delegate

