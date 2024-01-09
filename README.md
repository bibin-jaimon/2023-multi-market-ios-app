# Multi Market App Architecture using XCWorkspace and XCProjects

- A demonstration of how to setup a multi market ecommercial application.

- In this codebase have two apps `ECommerce` and `ECommerce.ca` which is having two features `Home` and `Account`.

<img width="1552" alt="image" src="https://github.com/bibin-jaimon/2023-multi-market-ios-app/assets/22428886/d89dd9d7-34b5-4082-8a36-043a7e0f3a86">

- We have created the Home and Account featuers as frameworks using XCFrameworks.
- The advantage of creating this as XCFrameworks is that we can independently work on Home if required.
- HomeApp is target to run the Home Framework alone. We don't have to run the entire app to work on Home features.
<img width="1552" alt="image" src="https://github.com/bibin-jaimon/2023-multi-market-ios-app/assets/22428886/423312b2-b54f-4c18-9eda-02036ed660c8">

- Created a dependency injection container to register all the dependencies. The advantage of using this approach is the decoupling of the code.
- Each plugins registed using a protocol.

<img width="1440" alt="image" src="https://github.com/bibin-jaimon/2023-multi-market-ios-app/assets/22428886/7c866a97-054a-427a-8878-4d2134e63c62">

- If Home wants to use Account framework, They don't have to import the framework they only need Dependency injection container and the protocol for the dependency!
<img width="1040" alt="image" src="https://github.com/bibin-jaimon/2023-multi-market-ios-app/assets/22428886/cea9a1e6-4139-47da-bd9d-abbaf53a931c">
