function TodoCtrl($scope) {
    $scope.beans = [
        ["1", "clear"],
        ["2", "clear"],
        ["3", "clear"],
        ["4", "clear"],
        ["5", "clear"]
    ];

    $scope.run = function(bean) {
        for (var i = 0; i < $scope.beans.length; i++) {
            if (i + 1 <= parseInt(bean[0])) {
                $scope.beans[i][1] = "";
            } else {
                //loop through old active and remove
                $scope.beans[i][1] = "clear";
            }
        }
    }
}