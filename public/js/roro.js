var app=angular.module('roroApp',[]);
	app.controller('roroCtrl',function($scope){
		var index;
		$scope.text1=true;	
		$scope.text2=false;
		$scope.text3=false;
		$scope.text4=false;	
		$scope.freccina1=true;
		$scope.freccina2=false;	
		$scope.freccina3=false;
		$scope.freccina4=false;
		$scope.res_src="img/3_roero/fascia_triangoli_rossa.png";
		$scope.roroFunction=function(index)
		
		{
			console.log(index);
			if (index==1)
			{
				$scope.text1=true;	
				$scope.text2=false;
				$scope.text3=false;
				$scope.text4=false;	

				$scope.freccina1=true;
				$scope.freccina2=false;	
				$scope.freccina3=false;
				$scope.freccina4=false;
				$scope.roro2_background={
					"background-color": "#d34758"
				}
				
				$scope.res_src="img/3_roero/fascia_triangoli_rossa.png";
			}
			if (index==2)
			{
				$scope.text1=false;	
				$scope.text2=true;	
				$scope.text3=false;
				$scope.text4=false;	
				$scope.freccina1=false;
				$scope.freccina2=true;	
				$scope.freccina3=false;
				$scope.freccina4=false;	
				$scope.roro2_background={
					"background-color": "#55ac98"
				}	
				$scope.res_src="img/3_roero/fascia_triangoli_verde.png";
			}
			if (index==3)
			{
				$scope.text1=false;	
				$scope.text2=false;	
				$scope.text3=true;
				$scope.text4=false;		
				$scope.freccina1=false;
				$scope.freccina2=false;	
				$scope.freccina3=true;
				$scope.freccina4=false;
				$scope.roro2_background={
					"background-color": "#de635a"
				}	
				$scope.res_src="img/3_roero/fascia_triangoli_arancio.png";	
			}
			if (index==4)
			{
				$scope.text1=false;	
				$scope.text2=false;	
				$scope.text3=false;
				$scope.text4=true;	
				$scope.freccina1=false;
				$scope.freccina2=false;	
				$scope.freccina3=false;
				$scope.freccina4=true;	
				$scope.roro2_background={
					"background-color": "#a86f89"
				}	
				$scope.res_src="img/3_roero/fascia_triangoli_viola.png";	
			}
		}
	});