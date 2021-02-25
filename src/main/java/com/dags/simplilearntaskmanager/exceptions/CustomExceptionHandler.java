package com.dags.simplilearntaskmanager.exceptions;

import org.springframework.core.annotation.AnnotationUtils;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@ControllerAdvice
public class CustomExceptionHandler {

    @ExceptionHandler
    public final ModelAndView handleUserAlreadyExistsException(HttpServletRequest httpServletRequest,
                                                               UserAlreadyExistsException userAlreadyExistsException) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("taskIdException", userAlreadyExistsException);
        modelAndView.addObject("url", httpServletRequest.getRequestURL());
        modelAndView.setViewName("registration");
        return modelAndView;
    }


    @ExceptionHandler
    public final ModelAndView handleTaskIdException(HttpServletRequest httpServletRequest,
                                                    TaskIdException taskIdException) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("taskIdException", taskIdException);
        modelAndView.addObject("url", httpServletRequest.getRequestURL());
        modelAndView.setViewName("error");
        return modelAndView;
    }


    @ExceptionHandler
    public ModelAndView handleGeneralException(HttpServletRequest httpServletRequest,
                                               Exception exception) throws Exception {

        if (AnnotationUtils.findAnnotation(exception.getClass(), ResponseStatus.class) != null)
            throw exception;

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("exception", exception);
        modelAndView.addObject("url", httpServletRequest.getRequestURL());
        modelAndView.setViewName("error");
        return modelAndView;
    }
}
