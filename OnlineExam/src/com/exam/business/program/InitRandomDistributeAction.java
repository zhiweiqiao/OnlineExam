package com.exam.business.program;

import org.apache.struts.action.*;

import com.exam.dao.ExaminationPaperDAO;
import com.exam.dao.ExamineeDAO;
import com.exam.util.Selector;

import javax.servlet.http.*;
import java.util.ArrayList;
import java.sql.*;

public class InitRandomDistributeAction extends Action {
  public ActionForward execute(ActionMapping actionMapping, ActionForm actionForm, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
    RandomDistributeExamPaperForm randomDistributeExamPaperForm = (RandomDistributeExamPaperForm)actionForm;
    randomDistributeExamPaperForm.reset(actionMapping,httpServletRequest);
   
    ArrayList examinees = null;
    ExamineeDAO examineeDAO = null;

    Selector selector = null;
    ArrayList organizationOpts = null;
    ArrayList post_indexOpts = null;
    ArrayList stateOpts = null;
    ArrayList sexOpts = null;
    ArrayList education_indexOpts = null;
    ArrayList operationOpts = null;

    try {
      selector = new Selector();
      organizationOpts = selector.getOptions("organization_id");
      post_indexOpts = selector.getOptions("post_index");
      stateOpts = selector.getOptions("state");
      sexOpts = selector.getOptions("sex");
      education_indexOpts = selector.getOptions("education_index");
      operationOpts = selector.getOptions("operation");
      selector.close();
    } catch (Exception ex) {
      ex.printStackTrace();
    }

    httpServletRequest.setAttribute("organizationOpts", organizationOpts);
    httpServletRequest.setAttribute("post_indexOpts", post_indexOpts);
    httpServletRequest.setAttribute("stateOpts", stateOpts);
    httpServletRequest.setAttribute("sexOpts", sexOpts);
    httpServletRequest.setAttribute("education_indexOpts", education_indexOpts);
    httpServletRequest.setAttribute("operationOpts", operationOpts);



    examineeDAO = new ExamineeDAO();
    
    examinees = new ArrayList();
      try {
        examinees = (ArrayList) examineeDAO.getSearchWithoutPage(randomDistributeExamPaperForm);
      } catch (SQLException ex1) {
        ex1.printStackTrace();
      }

    httpServletRequest.setAttribute("examinees", examinees);
   
   ArrayList paperList = null;
   ExaminationPaperDAO eDao = null;
   paperList = new ArrayList();

  
   ArrayList e_typeOpts = null;
   ArrayList e_stateOpts = null;

   try {
     selector = new Selector();
     e_typeOpts = selector.getOptions("e_type");
     e_stateOpts = selector.getOptions("e_state");
     selector.close();
   } catch (Exception ex) {
     ex.printStackTrace();
   }

   httpServletRequest.setAttribute("e_typeOpts", e_typeOpts);
   httpServletRequest.setAttribute("e_stateOpts", e_stateOpts);

   
    eDao = new ExaminationPaperDAO();
    eDao.updateE_stateUnvalidateExamPaper();



    eDao = new ExaminationPaperDAO();
    

    try {
      paperList = (ArrayList) eDao.getValidateExaminationPaper(
          randomDistributeExamPaperForm);
    } catch (SQLException ex2) {
      ex2.printStackTrace();
    }
    String condistr = eDao.getConditionStr();
    eDao.setConditionStr(condistr);
    //pagestr = eDao.getPagestr(ipage);
    //randomDistributeExamPaperForm.setPagestr(pagestr);

    httpServletRequest.setAttribute("paperList", paperList);


    return actionMapping.findForward("randomdistribute");
  }
}
