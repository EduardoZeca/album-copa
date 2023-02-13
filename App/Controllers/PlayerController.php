<?php

namespace App\Controllers;

use Slim\Http\Request;
use Slim\Http\Response;
use App\Repositories\PlayerRepository;

class PlayerController {

    //adicione a variável de repository nesta linha
    public $playerRepository;

    public function __construct()
    {
        //adicione o algoritmo para criar um "objeto da classe PlayerRepository"
        $this->playerRepository = new PlayerRepository();
    }

    public function getAllPlayers(Request $request, Response $response, array $args){
        
        $player = $this->playerRepository->getAll();
        return $response->withJson($player)->withStatus(200);
    }

    public function getByPlayerId(Request $request, Response $response, array $args){
        
        $id = $args['id'];

        $player = $this->playerRepository->getByPlayerId($id);
        return $response->withJson($player)->withStatus(200);
    }

    public function getByPlayerName(Request $request, Response $response, array $args){

        $playerName = $request->getParam('nome');
        
        $player = $this->playerRepository->getByPlayerName($playerName);
        return $response->withJson($player)->withStatus(200);
    }

    public function getByPlayerTeam(Request $request, Response $response, array $args){

        $playerTeam = $request->getParam('idSelecao');
        
        $players = $this->playerRepository->getByPlayerTeam($playerTeam);
        return $response->withJson($players)->withStatus(200);
    }

    public function getByPlayerPosition(Request $request, Response $response, array $args){

        $playerPosition = $request->getParam('posicao');
        
        $player = $this->playerRepository->getByPlayerPosition($playerPosition);
        return $response->withJson($player)->withStatus(200);
    }

    public function create(Request $request, Response $response, array $args){

        //Obter campo por campo
        //$data = $request->getParam('nome_do_campo');

        //Obter todos os campos do formulario
        //$data = $request->getParams();
        
        //obter todos os dados de envio
        $data = $request->getParsedBody();

        $data['id'] = $this->playerRepository->create($data['texto']);

        return $response->withJson(["id" => $data]);

    }

}