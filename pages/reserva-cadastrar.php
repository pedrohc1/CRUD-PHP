<h1>Cadastar Reserva</h1>

<form action="?page=reserva-salvar" method="POST">
    <input type="hidden" name="acao" value="cadastrar">
    <div class="mb-3">
        <label>Data da Reserva</label>
        <input type="text" name="data_reserva" class="form-control">
    </div>
    <div class="mb-3">
        <label>Data da Devolucao</label>
        <input type="text" name="data_devolucao" class="form-control">
    </div>
    <div class=mb-3>
        <label>livro</label>
        <select name="livro_id_livro" class="form-control">
            <?php
            $sql = "SELECT *FROM livro";

            $res = $conn->query($sql) or die($conn->error);

            if ($res->num_rows > 0) {
                while ($row = $res->fetch_object()) {
                    print "<option value='" . $row->id_livro . "'>";
                    print $row->titulo_livro . "</option>";
                }
            } else {
                print "Nao ha livro cadastrados";
            }
            ?>
        </select>
    </div>
    <div class=mb-3>
        <label>aluno</label>
        <select name="aluno_id_aluno" class="form-control">
            <?php
            $sql = "SELECT *FROM aluno";

            $res = $conn->query($sql) or die($conn->error);

            if ($res->num_rows > 0) {
                while ($row = $res->fetch_object()) {
                    print "<option value='" . $row->id_aluno . "'>";
                    print $row->nome_aluno . "</option>";
                }
            } else {
                print "Nao ha alunos cadastrados";
            }
            ?>
        </select>
    </div>
    <div class=mb-3>
        <label>Atendente</label>
        <select name="atendente_id_atendente" class="form-control">
            <?php
            $sql = "SELECT *FROM atendente";

            $res = $conn->query($sql) or die($conn->error);

            if ($res->num_rows > 0) {
                while ($row = $res->fetch_object()) {
                    print "<option value='" . $row->id_atendente . "'>";
                    print $row->nome_atendente . "</option>";
                }
            } else {
                print "Nao ha atendentes cadastrados";
            }
            ?>
        </select>
    </div>
    <div class="mb-3">
        <button type="submit" class="btn btn-success">Enviar</button>
    </div>
</form>