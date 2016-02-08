(function(){
	var app = angular.module('homestayz', ['ngRoute']);
 	app.controller('HouseController', function(){
  	this.products = houses;
 	});
	app.controller('RentController', function(){
		this.tab = 1;
		this.selectTab = function(setTab) {
			this.tab = setTab;
		};
		this.isSelected = function(checkTab) {
			return this.tab === checkTab;
		};
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