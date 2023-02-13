<?php

namespace App\Controllers;

use Slim\Http\Request;
use Slim\Http\Response;
use App\Repositories\TeamRepository;

class TeamController {

    //adicione a variável de repository nesta linha
    public $teamRepository;

    public function __construct()
    {
        //adicione o algoritmo para criar um "objeto da classe TeamRepository"
        $this->teamRepository = new TeamRepository();
    }

    public function getAllTeams(Request $request, Response $response, array $args){
        
        $team = $this->teamRepository->getAll();
        return $response->withJson($team)->withStatus(200);
        
    }

    public function getById(Request $request, Response $response, array $args){
        
        $id = $args['id'];

        $team = $this->teamRepository->getById($id);
        return $response->withJson($team)->withStatus(200);
    }

    public function getByTeamName(Request $request, Response $response, array $args){

        $teamName = $request->getParam('nome');
        
        $team = $this->teamRepository->getByTeamName($teamName);
        return $response->withJson($team)->withStatus(200);
    }

    public function getByGroup(Request $request, Response $response, array $args){

        $teamGroup = $request->getParam('grupo');
        
        $team = $this->teamRepository->getByGroup($teamGroup);
        return $response->withJson($team)->withStatus(200);
    }

    public function create(Request $request, Response $response, array $args){

        //Obter campo por campo
        //$data = $request->getParam('nome_do_campo');

        //Obter todos os campos do formulario
        //$data = $request->getParams();
        
        //obter todos os dados de envio
        $data = $request->getParsedBody();

        $data['id'] = $this->teamRepository->create($data['texto']);

        return $response->withJson(["id" => $data]);

    }

    public function update(Request $request, Response $response, array $args){
        $data = $request->getParsedBody();

       $this->teamRepository->update($data['id'], $data['texto']);

        $response->write("chamou update");
        
        return $response;
    }

    public function delete(Request $request, Response $response, array $args){
        $response->write("chamou o delete");
        return $response;
    }

}