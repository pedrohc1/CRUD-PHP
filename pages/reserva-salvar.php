<h1>Salvar Reserva</h1>

<?php
switch ($_REQUEST["acao"]) {
    case 'cadastrar':
        $reserva = $_POST["data_reserva"];
        $devolucao = $_POST["data_devolucao"];
        $atendente = $_POST["atendente_id_atendente"];
        $aluno = $_POST["aluno_id_aluno"];
        $livro = $_POST["livro_id_livro"];

        $sql = "INSERT INTO reserva (data_emprestimo, data_devolucao, atendente_id_atendente, aluno_id_aluno, livro_id_livro   )
					VALUES ('{$reserva}', '{$devolucao}', '{$atendente}', '{$aluno}', '{$livro}')";

        $res = $conn->query($sql) or die($conn->error);

        if ($res == true) {
            print "<script>alert('Cadastrado com sucesso!');</script>";
            print "<script>location.href='?page=livro-listar';</script>";
        } else {
            print "<script>alert('Não foi possível cadastrar!');</script>";
            print "<script>location.href='?page=livro-listar';</script>";
        }

        break;

    case 'editar':
        $titulo = $_POST["titulo_livro"];
        $autor = $_POST["autor_livro"];
        $editora = $_POST["editora_livro"];
        $edicao = $_POST["edicao_livro"];
        $ano = $_POST["ano_livro"];
        $categoria =$_POST["categoria_id_categoria"];

        $sql = "UPDATE livro SET 
						titulo_livro='{$titulo}',
					    autor_livro='{$autor}',
                        editora_livro='{$editora}',
                        edicao_livro='{$edicao}',
                        ano_livro='{$ano}',
                        categoria_id_categoria='{$categoria}'
					WHERE
						id_livro=".$_POST["id_livro"];

        $res = $conn->query($sql) or die($conn->error);

        if ($res == true) {
            print "<script>alert('Editado com sucesso!');</script>";
            print "<script>location.href='?page=livro-listar';</script>";
        } else {
            print "<script>alert('Não foi possível editar!');</script>";
            print "<script>location.href='?page=livro-listar';</script>";
        }

        break;

    case 'excluir':
        $sql = "DELETE FROM livro
					WHERE id_livro=" . $_REQUEST["id_livro"];

        $res = $conn->query($sql) or die($conn->error);

        if ($res == true) {
            print "<script>alert('Excluído com sucesso!');</script>";
            print "<script>location.href='?page=livro-listar';</script>";
        } else {
            print "<script>alert('Não foi possível excluir!');</script>";
            print "<script>location.href='?page=livro-listar';</script>";
        }
        break;
}
