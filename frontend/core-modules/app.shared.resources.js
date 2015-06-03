services.factory( 'SharedResources', function( $http ) {

	var SharedResources = [];

	var products_init = $http({
			method: 'GET',
			url: 'backend/inventory/getProducts'
		}).then( function ( result ) {
			console.log("INFO: Inventory response received");
			return result.data;
		}, function ( result ) {
			console.log('failure');
		}).then( function ( result ) {
			SharedResources.push( { resName: 'PRODUCTS', data: result });
			console.log('-----------'+ SharedResources );
		});

	var categories_init = $http({
			method: 'GET',
			url: 'backend/inventory/getCategories'
		}).then( function ( result ) {
			return result.data;
		}, function ( err ) {
			console.log( err );
		}).then( function ( result ) {
			SharedResources.push( { resName: 'CATEGORIES', data: result });
			console.log(SharedResources );
		});

	var schemes_init = $http({
				method: 'GET',
				url: 'backend/schemes/getSchemes'
			}).then( function ( result ) {
				console.log("INFO: scheme response received");
				console.log( result.data );
				return result.data;
			}, function ( result ) {
				console.log( result.data );
			}).then( function ( result ) {
				SharedResources.push( {resName: 'SCHEMES', data: result });
				console.log( SharedResources );
			});

	console.log( 'SharedResources core module loaded.' );

	return {
		getResource: function( resName ) {
			for (var i = SharedResources.length - 1; i >= 0; i--) {
				if (SharedResources[i].resName == resName) {
					return SharedResources[i].data;
				};
			};
		},

		setResource: function( res ) {
			SharedResources.push( res ); 
		}
	};

});