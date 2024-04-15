namespace sap.ui.apontamento;

entity Apontamento 
{
    key UUID: UUID @Core.Computed;
    Data : Date @mandatory;
    QuantidadeHoras : Integer @mandatory;
    @readonly
    status : String default 'Aguardando Aprovação';
    funcionario : String @mandatory @cds.on.insert: $user @cds.on.update: $user;
    projeto : Association to one Projeto @mandatory;
    @readonly
    NomeProjeto: Association to Projeto on NomeProjeto.CodProjeto = projeto.CodProjeto;
}

@cds.odata.valuelist
entity Funcionario
{
    key CodFuncionario : String @title: 'E-mail do Funcionário';
    Nome : String(500) @mandatory;
}

@cds.odata.valuelist
entity Aprovadores
{
    key CodAprovador : String @title: 'E-mail do Aprovador';
    projeto : Association to many Projeto on projeto.aprovadores = $self;
    Nome : String(500) @mandatory;   
}

@cds.odata.valuelist
entity Projeto
{
    key CodProjeto : String(20) @title: 'Código do Projeto'; 
    Nome : String(500) @mandatory;
    aprovadores : Association to one Aprovadores @mandatory;
}

entity ProjetoFuncionario
{
    key projeto: Association to one Projeto @title: 'Projeto';
    key funcionario : Association to one Funcionario @title: 'Funcionário'; 
    @readonly
    NomeProjeto: Association to Projeto on NomeProjeto.CodProjeto = projeto.CodProjeto;  
}



