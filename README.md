# R-P-chalange
This is a code challenge project

# Summury
`RPComment` and `RPAnnotation` can be used as a `Data` and pass to a `Server` or anywhere else and can be recivied.
Unit Tests work!


# Assumptions
1. - The best option is to avoid any changes of `RPComment` and `RPAnnotation`. It means that I have to use `Adapter` to convert from `RPComment` and `RPAnnotation` to storable types.
2. - I don't know if I just need to send data to server or I also have to recive it. I think that to have a possibility to convert `RPComment` <-> `StorableCommment` is better, I want to implement this function.
3. - Because the task doesn't require to make a code that thorouhly works, I want to use unit-tesing to test small pieses of code to show that it works as expected.
4. - To emulate a real application and to create a new istance of `RPComment` and `RPAnnotation` I want to use `Factory`.
5. - To avoid any changes of `RPComment` and `RPAnnotation` I don't want to use `Interface` with these types, but I don't want to restrict me to use `Interface` with any other types.
6. - To send/recive data to/from server I want to use JSON and `Codable` protocol that helps me to convert data easly.
7. - Protocol `IServerApiProtocol` will be used as a fake `ServerApi` and will do nothing.
8. - Because `ServerAPI` can be changed it also means that we need to have a possibility to support two or more versions of `SeverAPI` in the application.
9. - I want to use `Interface` to have a flexible `Codable` part of code.
10. - I want to have fun doing the task.

# Pre design
```
RPCommentFactory     ->  RPComment     <->  RPCommentAdapter    <-> ICodableComment     <-> Server
RPAnnotationFactory  ->  RPAnnotation  <->  RPAnnotationAdapter <-> ICodableAnnotation  <-> Server
```
