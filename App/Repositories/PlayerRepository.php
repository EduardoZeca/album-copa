<?php 

namespace App\Repositories;

use App\Connection\ConnectionFactory;
use PDO;

class PlayerRepository {

    public $connection;

    public function __construct()
    {
        $factory = new ConnectionFactory();
        $this->connection = $factory->getConnection();
    }

    public function getAll(){
        $sql = "SELECT * FROM tb_jogadores";

        $table = $this->connection->query($sql); 
        $resultados = $table->fetchAll(PDO::FETCH_ASSOC);

        return $resultados;
    }

    public function getByPlayerId(int $id){
        $sql = "SELECT * FROM tb_jogadores WHERE id = :id";

        $table = $this->connection->prepare($sql); 
        $table->bindParam(":id", $id);

        $table->execute();

        $resultados = $table->fetch(PDO::FETCH_ASSOC);

        return $resultados;
    }

    public function getByPlayerName(string $playerName){
        $sql = "SELECT * FROM tb_jogadores WHERE nome LIKE :playerName";

        $playerName = "%".$playerName."%";

        $table = $this->connection->prepare($sql); 
        $table->bindParam(":playerName", $playerName);

        $table->execute();

        $resultados = $table->fetchAll(PDO::FETCH_ASSOC);

        return $resultados;
    }

    public function getByPlayerPosition(string $playerPosition){
        $sql = "SELECT * FROM tb_jogadores WHERE posicao = :playerPosition";

        $table = $this->connection->prepare($sql); 
        $table->bindParam(":playerPosition", $playerPosition);

        $table->execute();

        $resultados = $table->fetchAll(PDO::FETCH_ASSOC);

        return $resultados;
    }
    
    public function getByPlayerTeam(int $idSelecao){
        $sql = "SELECT * FROM tb_jogadores WHERE id_selecao = :idSelecao";

        $table = $this->connection->prepare($sql); 
        $table->bindParam(":idSelecao", $idSelecao, PDO::PARAM_INT);

        $table->execute();

        $resultados = $table->fetchAll(PDO::FETCH_ASSOC);

        return $resultados;
    }
}