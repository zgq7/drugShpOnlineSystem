package com.dsos.config.session;

import com.dsos.config.servlet.MySessinListenner;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * 用于收集session
 * Created by Administrator on 2019/4/1 0001.
 */
public class SessionCollections {
    private static final Logger log = LoggerFactory.getLogger(SessionCollections.class);

    private static SessionCollections instance = new SessionCollections();
    private Map<String, HttpSession> sessionMap;

    public SessionCollections() {
        sessionMap = new HashMap<>();
        System.out.println(123);
    }

    /**
     * 初始化SessionCollections，使其保持为单例
     **/
    public static SessionCollections getinstance() {
        if (instance == null) {
            return new SessionCollections();
        }
        return instance;
    }

    public Map<String, HttpSession> getSessionList() {
        return sessionMap;
    }


    /**
     * 添加session，key为session.id
     **/
    public void addSession(HttpSession session) {
        if (session != null) {
            sessionMap.put(session.getId(), session);
            log.info("session of id: {} been add in map ,map now size : {}", session.getId(), sessionMap.size());
        }
    }

    /**
     * 通过session.id移除session
     **/
    public void delSession(HttpSession session) {
        if (session != null) {
            sessionMap.remove(session.getId());
            log.info("session of id: {} been add in map ,map now size : {}", session.getId(), sessionMap.size());
        }
    }

    /**
     * 通过session.id获取具体的session
     **/
    public synchronized HttpSession getSession(String sessionId) {
        if (sessionId == null) {
            return null;
        }
        return sessionMap.get(sessionId);
    }

}
