using { sap.ui.apontamento as my } from '../db/TimeTracker';
@path: '/odata/v4/service/risk'
service TimeTracker_srv @(requires: 'authenticated-user') {  
  entity Apontamento as projection on my.Apontamento actions {
    action aprovarStatus();
    action reprovarStatus();
  };
  entity Funcionario as projection on my.Funcionario;
  entity Projeto as projection on my.Projeto;
  entity ProjetoFuncionario as projection on my.ProjetoFuncionario;
  entity Aprovadores as projection on my.Aprovadores;

  annotate Apontamento with @odata.draft.enabled;
  annotate Funcionario with @odata.draft.enabled;
  annotate Projeto with @odata.draft.enabled;
  annotate ProjetoFuncionario with @odata.draft.enabled;
  annotate Aprovadores with @odata.draft.enabled;

}

