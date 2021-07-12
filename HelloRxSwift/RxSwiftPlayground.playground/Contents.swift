import UIKit
import RxSwift
import RxCocoa

//let observable1 = Observable.just(1)
//let observable2 = Observable.of(1,2,3)
//let observable3 = Observable.of([1,2,3])
//let observable4 = Observable.from([1,2,3,4,5])
//
//
//observable4.subscribe { event in
//    if let element = event.element {
//        print(element)
//    }
//}
//
//observable3.subscribe { event in
//    if let elemnt = event.element {
//        print(elemnt)
//    }
//}
//
//let subscription4 = observable4.subscribe(onNext: { element in
//    print(element)
//})

let disposeBag = DisposeBag()

//Observable.of("A","B","C")
//    .subscribe {
//        print($0)
//    }.disposed(by: disposeBag)
//
//Observable<String>.create { observer in
//    observer.onNext("A")
//    observer.onCompleted()
//    observer.onNext("?")
//    return Disposables.create()
//}.subscribe(onNext: { print($0) }, onError: { print($0) }, onCompleted: { print("Completed") }, onDisposed: { print("Disposed") })
//.disposed(by: disposeBag)
//
//let subject = PublishSubject<String>()
//
//subject.onNext("Issue 1")
//
//subject.subscribe { event in
//    print(event)
//}
//
//subject.onNext("Issue 2")
//subject.onNext("Issue 3")
//
//// subject.dispose()
//
//subject.onCompleted()
//
//subject.onNext("Issue 4")
//
//playgroundTimeLimit(seconds: 10)

// Lecture 14

//let subject = BehaviorSubject(value: "Initial Value")
//
//subject.onNext("Last value")
//
//subject.subscribe { event in
//    print(event)
//}
//
//subject.onNext("Issue 1")

// Lecture 15

//let subject = ReplaySubject<String>.create(bufferSize: 2)
//
//subject.onNext("Issue 1")
//subject.onNext("Issue 2")
//subject.onNext("Issue 3")
//
//subject.subscribe {
//    print($0)
//}
//
//subject.onNext("Issue 4")
//subject.onNext("Issue 5")
//subject.onNext("Issue 6")
//
//print("[Subscription 2]")
//
//subject.subscribe {
//    print ($0)
//}

// Lecture 16

//let variable = Variable("Initial Value") // Deprecated, use BehaviorRelay
//
//variable.value = "Hellow World"
//
//variable.asObservable()
//    .subscribe {
//        print($0)
//    }

//let variable = Variable([String])
//
//variable.value.append("Item 1")
//
//variable.asObservable()
//    .subscribe {
//        print($0)
//    }
//
//variable.value.append("item 2")

// Lecture 17

let relay = BehaviorRelay(value: "Initial value")

relay.asObservable()
    .subscribe {
        print($0)
    }

relay.accept("Hello World")

let relay1 = BehaviorRelay(value: [String]())

relay1.asObservable()
    .subscribe {
        print($0)
    }

relay1.accept(["Item 1"])

relay1.accept(relay1.value + ["Item 2"])

var value = relay1.value

value.append("Item 3")
value.append(contentsOf: ["Item 4", "Item 5"])

relay1.accept(value)
