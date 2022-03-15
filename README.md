# demo_rx_dart

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


NOTE FOR GO_ROUTER:

--> pop page:
context.pop();

--> push and replace page:
context.go(PageOne.routeName);

--> push page:
context.push(PageOne.routeName);

--> Go to page with link url launcher: (Cái này tuơng tự context.go())
Link(uri: Uri.parse(PageTwo.routeName),
      builder: (context, followLink){
         return ElevatedButton(onPressed: followLink, child: const Text("Go to page 2 with link url launcher"));
      },
   )


--> Go can send parameters path: "home/:itemId/:itemId2"

--> Go Query parameter:
    on call: context.push(PageTwo.routeName +"?itemId=ItemId1");
    on go router builder: String queryData = state.queryParams["itemId"] ?? "";

--> Go can send extra parameters like Navigator.pushName(name, argument: object)


--> Có thể chia thành nhiều router theo cấu trúc:
    var router = GoRouter(
        routes: [
            GoRoute(
                path: "/",
                routes: [
                    GoRoute(
                    path: ""
                    ),
                    ....
                ]
            )
        ]
    );


    
    
    
    





