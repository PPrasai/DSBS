services.factory( 'SchemeService', function ( $http ) {
	return {
		getAll: function () {
			return $http({
				method: 'GET',
				url: 'backend/schemes/getSchemes'
			}).then( function ( result ) {
				console.log("INFO: scheme response received");
				console.log( result.data );
				return result.data;
			}, function ( result ) {
				console.log( result.data );
			});
		},
		addNew: function ( newScheme ) {
			return $http( {
				method: 'POST',
				url: 'backend/schemes/addNew',
				data: newScheme
			}).then( function ( result ) {
				console.log("INFO: scheme response received");
				console.log( result.data );
			}, function( err ) {
				console.log( err );
			});
		}
	};
});
