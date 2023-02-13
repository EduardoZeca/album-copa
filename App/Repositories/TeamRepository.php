<?php 

namespace App\Repositories;

use App\Connection\ConnectionFactory;
use PDO;

class TeamRepository {

    public $connection;

    public function __construct()
    {
        $factory = new ConnectionFactory();
        $this->connection = $factory->getConnection();
    }

    public function getAll(){
        $sql = "SELECT * FROM tb_selecoes";

        $table = $this->connection->query($sql); 
        $resultados = $table->fetchAll(PDO::FETCH_ASSOC);

        return $resultados;
    }

    public function getById(int $id){
        $sql = "SELECT * FROM tb_selecoes WHERE id = :id";

        $table = $this->connection->prepare($sql); 
        $table->bindParam(":id", $id);

        $table->execute();

        $resultados = $table->fetch(PDO::FETCH_ASSOC);

        return $resultados;
    }

    public function getByGroup(string $grupo){
        $sql = "SELECT * FROM tb_selecoes WHERE grupo = :grupo";

        $table = $this->connection->prepare($sql); 
        $table->bindParam(":grupo", $grupo);

        $table->execute();

        $resultados = $table->fetchAll(PDO::FETCH_ASSOC);

        return $resultados;
    }

    public function getByTeamName(string $nome){
        $sql = "SELECT * FROM tb_selecoes WHERE nome = :nome";

        $table = $this->connection->prepare($sql); 
        $table->bindParam(":nome", $nome);

        $table->execute();

        $resultados = $table->fetch(PDO::FETCH_ASSOC);

        return $resultados;
    }


}