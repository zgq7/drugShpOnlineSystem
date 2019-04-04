package com.dsos.config.session;

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
    /**
     * key is sessionID
     * value is HttpSession
     **/
    private Map<String, HttpSession> sessionMap;
    /**
     * key is Session Id
     * List is infoMap
     **/
    private Map<String, Map<Object, Object>> sessionInfo;
    /**
     * key1 account
     * key2 userType as admin member chainner
     **/
    private Map<Object, Object> infoMap;

    public SessionCollections() {
        sessionMap = new HashMap<>();
        sessionInfo = new HashMap<>();
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

    public Map<String, HttpSession> getSessionMap() {
        return sessionMap;
    }

    /**
     * key is sessionID
     * Account is user's account
     **/
    public Map<String, Map<Object, Object>> getSessionInfo() {
        if (!sessionMap.isEmpty()) {
            for (Map.Entry entry : sessionMap.entrySet()) {
                HttpSession session = (HttpSession) entry.getValue();
                infoMap = new HashMap<>(2);
                infoMap.put("account", session.getAttribute("account"));
                infoMap.put("userType", session.getAttribute("userType"));
                sessionInfo.put(entry.getKey().toString(), infoMap);
            }
        }
        return sessionInfo;
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
