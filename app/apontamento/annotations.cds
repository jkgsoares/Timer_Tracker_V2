using TimeTracker_srv as service from '../../srv/TimeTracker_srv';

annotate service.Apontamento with @(

UI.LineItem: [
    {
        $Type: 'UI.DataField',
        Label: 'Funcionario',
        Value: funcionario,
    },
    {
        $Type: 'UI.DataField',
        Label: 'Projeto',
        Value: projeto_CodProjeto,
    },
    {
        $Type: 'UI.DataField',
        Label: 'Nome do Projeto',
        Value: NomeProjeto.Nome,
    },
    {
        $Type: 'UI.DataField',
        Label: 'Data',
        Value: Data,
    },
    {
        $Type: 'UI.DataField',
        Label: 'Horas Trabalhadas',
        Value: QuantidadeHoras,
    },
    {
        $Type: 'UI.DataField',
        Label: 'Status',
        Value: status,
    },
    {
        $Type : 'UI.DataFieldForAction',
        Action : 'TimeTracker_srv.aprovarStatus',
        Label : '{i18n>Aprovarstatus}',
    },
        {
        $Type : 'UI.DataFieldForAction',
        Action : 'TimeTracker_srv.reprovarStatus',
        Label : '{i18n>Reprovarstatus}',
    }
    
]);

annotate service.Funcionario with @(UI.LineItem: [
    {
        $Type: 'UI.DataField',
        Label: 'E-mail de Funcionário',
        Value: CodFuncionario,
    },
    {
        $Type: 'UI.DataField',
        Label: 'Nome',
        Value: Nome,
    }
]);

annotate service.Status with @(UI.LineItem: [
    {
        $Type: 'UI.DataField',
        Label: 'ID',
        Value: ID,
    },
    {
        $Type: 'UI.DataField',
        Label: 'Descricao',
        Value: Descricao,
    }

],

);

annotate service.Projeto with @(UI.LineItem: [
     {
        $Type: 'UI.DataField',
        Label: 'Código de Projeto',
        Value: CodProjeto,
    },
    {
        $Type: 'UI.DataField',
        Label: 'Nome do Projeto',
        Value: Nome,
    },
    {
        $Type: 'UI.DataField',
        Label: 'E-mail do Aprovador',
        Value: aprovadores_CodAprovador,
    }

],

);

annotate service.ProjetoFuncionario with @(UI.LineItem: [
    {
        $Type: 'UI.DataField',
        Label: 'Projeto',
        Value: projeto_CodProjeto,
    },
    {
        $Type: 'UI.DataField',
        Label: 'Nome do Projeto',
        Value: NomeProjeto.Nome,
    },
    {
        $Type: 'UI.DataField',
        Label: 'Funcionário',
        Value: funcionario_CodFuncionario,
    }

],

);

annotate service.Aprovadores with @(UI.LineItem: [
    {
        $Type: 'UI.DataField',
        Label: 'E-mail do Aprovador',
        Value: CodAprovador,
    },
    {
        $Type: 'UI.DataField',
        Label: 'Nome',
        Value: Nome,
    }

],

);
annotate service.Apontamento with @(

    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Funcionario',
                Value: funcionario,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Projeto',
                Value: projeto_CodProjeto,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Nome do Projeto',
                 Value: NomeProjeto.Nome,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Data',
                Value: Data,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Horas Trabalhadas',
                Value: QuantidadeHoras,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Status',
                Value: status,
            }
        ],
    },

    UI.Facets                     : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup1'
    }, ]
);

annotate service.Funcionario with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'E-mail de Funcionário',
                Value: CodFuncionario,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Nome',
                Value: Nome,
            },          
        ],
    },
    UI.Facets                     : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup1',
    }, ]
);

annotate service.Status with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'ID',
                Value: ID,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Descrição',
                Value: Descricao,
            },
        ],
    },
    UI.Facets                     : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup1',
    }, ]
);

annotate service.Projeto with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Código de Projeto',
                Value: CodProjeto,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Nome do Projeto',
                Value: Nome,
            },
            {
                $Type: 'UI.DataField',
                Label: 'E-mail do Aprovador',
                Value: aprovadores_CodAprovador,
            },
        ],
    },
    UI.Facets                     : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup1',
    }, ]
);

annotate service.ProjetoFuncionario with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Projeto',
                Value: projeto_CodProjeto,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Nome do Projeto',
                Value: NomeProjeto.Nome,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Funcionário',
                Value: funcionario_CodFuncionario,
            },
        ],
    },
    UI.Facets                     : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup1',
    }, ]
);

annotate service.Aprovadores with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
        $Type: 'UI.DataField',
        Label: 'E-mail do Aprovador',
        Value: CodAprovador,
             },
             {
        $Type: 'UI.DataField',
        Label: 'Nome',
        Value: Nome,
            }          
        ],
    },
    UI.Facets                     : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup1',
    }, ]
);

