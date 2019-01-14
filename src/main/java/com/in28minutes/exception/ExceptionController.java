/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.in28minutes.exception;

import javax.servlet.http.HttpServletRequest;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

/**
 *
 * @author Mihailo
 */
@ControllerAdvice
public class ExceptionController {
    private Log logger = LogFactory.getLog(ExceptionController.class);
    
    @ExceptionHandler(value = Exception.class)
    public String handlingException (HttpServletRequest request, Exception ex){
        logger.error("Request: " +request.getRequestURI(), ex);
        return "error";
    }
}
