(function(){
    var app = angular.module('store', []);
    app.controller('HouseController', function(){
        this.products = houses;
    });
    
    var houses = [
        {
            name: "Sushant's house" 
        },
        {
            name: "Gourav' house"
        },
        {
            name: "Sudhanshu's house"
        },
        {
            name: "Altaf's house"
        },
        {
            name: "Vishal's house"
        },
        {
            name: "Amit's house"
        },
        {
            name: "Vidushi's house"
        },
        {
            name: "Sasha's house"
        }
    ];
        
})();