app.controller( 'SchemeController', function( $scope, SchemeService, SharedResources ) {
	console.log( 'Scheme Controller loaded.' );

	$scope.schemeName = null;
	$scope.schemes = null;
	var schemelist = SchemeService.getAll();
	$scope.products = SharedResources.getResource( 'PRODUCTS' );

	$scope.newScheme = { 
		u_id: localStorage.getItem( 'u_id' ),
		p_id: null,
		c_id: null,
		schemeDailyStartTime: null,
		schemeDailyEndTime: null,
		schemeStartDate: null,
		schemeEndDate: null
	};

	console.log( 'Products: '+ $scope.products );

	$scope.catagories = SharedResources.getResource( 'CATEGORIES' );

	console.log( 'Categories: '+ $scope.catagories );

	schemelist.then( function ( result ) {
		$scope.schemes = result;
		SharedResources.setResource( {resName: 'SCHEMES', data: result} );
	});

	$scope.hideModal = function () {
		$('.addNewScheme').modal( 'hide' );
	}

	$scope.addNewSch = function () {
		$scope.hideModal();
		console.log( $scope.newScheme );

		SchemeService.addNew( $scope.newScheme );

	}

	$scope.newSchClicked = function () {
		console.log('Clicked.');
		setTimeout( function () {
			$scope.categories = SharedResources.getResource( 'CATEGORIES' );
			$scope.products = SharedResources.getResource( 'PRODUCTS' );
			console.log('Retrieved.');
		}, 2000 );
	}

});
