angular.module("app", []);
angular.module("app").controller("MainController", function(){
    var vm =this;
    vm.title = "Learn Angular by Example"
    vm.searchInput = "";
    vm.shows = [
        {
            title: "Fire eye",
            author: "Son",
            favorite: true
        },
        {
            title: "Life of me",
            author: "Draven",
            favorite: false
        },
        {
            title: "Learn AngularJs by Example",
            author: "FPT",
            favorite: true
        },
        {
            title: "who is the best",
            author: "Tan",
            favorite: false
        },
        {
            title: "Hoc code totay",
            author: "Fpt",
            favorite: true
        } 
    ];
    vm.orders = [
        {
            id: 1,
            title: "Author Ascending",
            key: "author",
            reverse: false
        },
        {
            id: 2,
            title: "Author Ascending",
            key: "author",
            reverse: true
        },
        {
            id: 3,
            title: "Title Ascending",
            key: "title",
            reverse: false
        },
        {
            id: 4,
            title: "Author Ascending",
            key: "author",
            reverse: true
        }
    ];
    vm.order =vm.orders[0];
    vm.new = {};
    vm.addShow = function () {
        vm.shows.push(vm.new);
        vm.new = {};
    };
});