package com.microsoft.appcenter.utils.context;

import android.text.TextUtils;
import com.microsoft.appcenter.utils.AppCenterLog;
import java.util.Collections;
import java.util.Set;
import p033j$.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4.dex */
public class UserIdContext {
    private static UserIdContext sInstance;
    private final Set<Listener> mListeners = Collections.newSetFromMap(new ConcurrentHashMap());
    private String mUserId;

    /* loaded from: classes4.dex */
    public interface Listener {
        void onNewUserId(String userId);
    }

    public static synchronized UserIdContext getInstance() {
        UserIdContext userIdContext;
        synchronized (UserIdContext.class) {
            if (sInstance == null) {
                sInstance = new UserIdContext();
            }
            userIdContext = sInstance;
        }
        return userIdContext;
    }

    public static boolean checkUserIdValidForOneCollector(String userId) {
        if (userId == null) {
            return true;
        }
        if (userId.isEmpty()) {
            AppCenterLog.error("AppCenter", "userId must not be empty.");
            return false;
        }
        int indexOf = userId.indexOf(":");
        if (indexOf >= 0) {
            String substring = userId.substring(0, indexOf);
            if (!substring.equals("c")) {
                AppCenterLog.error("AppCenter", String.format("userId prefix must be '%s%s', '%s%s' is not supported.", "c", ":", substring, ":"));
                return false;
            } else if (indexOf == userId.length() - 1) {
                AppCenterLog.error("AppCenter", "userId must not be empty.");
                return false;
            }
        }
        return true;
    }

    public static boolean checkUserIdValidForAppCenter(String userId) {
        if (userId == null || userId.length() <= 256) {
            return true;
        }
        AppCenterLog.error("AppCenter", "userId is limited to 256 characters.");
        return false;
    }

    public synchronized String getUserId() {
        return this.mUserId;
    }

    public void setUserId(String userId) {
        if (updateUserId(userId)) {
            for (Listener listener : this.mListeners) {
                listener.onNewUserId(this.mUserId);
            }
        }
    }

    private synchronized boolean updateUserId(String userId) {
        if (TextUtils.equals(this.mUserId, userId)) {
            return false;
        }
        this.mUserId = userId;
        return true;
    }
}
