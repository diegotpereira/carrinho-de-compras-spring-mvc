var app = angular.module("meuApp", []).controller(
    "meuControle",
    function($scope, $http) {

        var BASE_PATH = "http://localhost:8080";

        $scope.getProdutoLista = function() {
            $http.get(BASE_PATH + "/getProdutosLista")
                .success(function(data) {
                    $scope.produtos = data;
                });
        }

        $scope.addNoCarrinho = function(produtoId) {
            $http.put(BASE_PATH + "/carrinho/add/" + produtoId)
                .success(function() {
                    alert("Adicionado com sucesso");
                })
        }

        $scope.atualizarCarrinho = function() {
            $http.get(BASE_PATH + "/carrinho/getCarrinho/" +
                $scope.carrinhoId).success(function(data) {

                $scope.carrinhos = data;
            })
        }

        $scope.getCarrinho = function(carrinhoId) {
            $scope.carrinhoId = carrinhoId;
            $scope.atualizarCarrinho(carrinhoId);
        }
        $scope.removerDoCarrinho = function(carrinhoItemId) {
            $http.put(BASE_PATH + "/carrinho/removerCarrinhoItem/" +
                carrinhoItemId).success(function() {
                $scope.atualizarCarrinho();
            });
        }

        $scope.limparCarrinho = function() {
            $http.put(BASE_PATH + "/carrinho/removerTodosItens/" +
                $scope.carrinhoId).success(function() {
                $scope.atualizarCarrinho();
            });
        }

        $scope.calcularValorTotal = function(data) {
            var valorTotal = 0.0;
            $scope.carrinhos = data;
            console.log(carrinhoItem);
            for (var i = 0; i < $scope.carrinhos.carrinhoItem.length; i++)
                valorTotal = valorTotal + $scope.carrinhos.carrinhoItem[i].preco;
            return valorTotal;

        }
    });