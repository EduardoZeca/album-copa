<?php

use Slim\App;
use App\Controllers\TeamController;
use App\Controllers\PlayerController;

$app = new App();

/**
 * As linhas 12 a 20 são necessárias para se permitir o acesso dessas rotas por outros sistemas.
 * O padrão é ter acesso liberado somentre para quem estiver no mesmo servidor. Essa restrição está relacionada ao CORS 
 */
$app->options('/{routes:.+}', function ($request, $response, $args) {
    return $response;
});

$app->add(function ($req, $res, $next) {
    $response = $next($req, $res);
    return $response->withHeader('Access-Control-Allow-Origin', '*')
    ->withHeader('Access-Control-Allow-Headers', 'X-Requested-With, Content-Type, Accept, Origin, Authorization')->withHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
});

/**
 * Adicione o mapeamento das rotas para os métodos do controlador de recados nas linhas abaixo
 */

//Rotas para Seleções
$app->get ('/selecoes', TeamController::class . ":getAllTeams");
$app->get ('/selecoes/grupo', TeamController::class . ":getByGroup");
$app->get ('/selecoes/nome', TeamController::class . ":getByTeamName");
$app->get ('/selecoes/{id}', TeamController::class . ":getById");

//Rotas para Jogadores
$app->get ('/jogadores', PlayerController::class . ":getAllPlayers");
$app->get ('/jogadores/nome', PlayerController::class . ":getByPlayerName");
$app->get ('/jogadores/posicao', PlayerController::class . ":getByPlayerPosition");
$app->get ('/jogadores/idSelecao', PlayerController::class . ":getByPlayerTeam");
$app->get ('/jogadores/{id}', PlayerController::class . ":getByPlayerId");


$app->run();
