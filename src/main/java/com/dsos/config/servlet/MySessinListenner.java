package com.dsos.config.servlet;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Created by zgq7 on 2019/2/26.
 * 监听 httpRequestServlet（web容器中） session 的创建
 */
@WebListener
public class MySessinListenner implements HttpSessionListener, HttpSessionAttributeListener {

    private static final Logger log = LoggerFactory.getLogger(MySessinListenner.class);

    public MySessinListenner() {
        log.info("session is initializing");
    }

    @Override
    public void attributeAdded(HttpSessionBindingEvent se) {
        //log.info("session id of {} been attributed ", se.getSession().getId());
    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent se) {
        //log.info("session id of {} been removed ", se.getSession().getId());
    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent se) {
        //log.info("session id of {} been replaced ", se.getSession().getId());
    }

    @Override
    public void sessionCreated(HttpSessionEvent se) {
        log.info("session id of {} been created , maxLife {} ", se.getSession().getId(), se.getSession().getMaxInactiveInterval());
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        log.info("session id of {} been destroyed ", se.getSession().getId());
    }
}