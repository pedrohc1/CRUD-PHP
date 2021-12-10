<h1>Listar Reserva</h1>

<?php

$sql ="SELECT * FROM reserva AS c INNER JOIN aluno AS d ON d.id_aluno = c.aluno_id_aluno
INNER JOIN atendente AS f ON f.id_atendente = c.atendente_id_atendente
INNER JOIN livro AS j ON j.id_livro = c.livro_id_livro";
   

$res = $conn->query($sql) or die($conn->error);

$qtd = $res->num_rows;

print "<p>Encontrou <b>$qtd</b> resultado(s)</p>";

if ($qtd > 0) {
    print "<table class='table table-striped table-hover table-bordered'>";
    print "<tr>";
    print "<th>Data da Reserva</th>";
    print "<th>Data da Devolucao</th>";
    print "<th>Aluno</th>";
    print "<th>Atendente</th>";
    print "<th>Livro</th>";
    print "</tr>";
    while ($row = $res->fetch_object()) {
        print "<tr>";
        print "<td>" . $row->data_emprestimo . "</td>";
        print "<td>" . $row->data_devolucao . "</td>";
        print "<td>" . $row->nome_aluno . "</td>";
        print "<td>" . $row->nome_atendente . "</td>";
        print "<td>" . $row->titulo_livro . "</td>";
        print "</tr>";
    }
    print "</table>";
} else {
    print "<div class='alert alert-danger'>Não encontrou resultados.</div>";
}


?>