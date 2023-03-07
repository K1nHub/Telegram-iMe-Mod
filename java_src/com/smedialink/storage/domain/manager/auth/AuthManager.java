package com.smedialink.storage.domain.manager.auth;

import com.smedialink.storage.domain.model.wallet.SessionTokens;
import com.smedialink.storage.domain.model.wallet.User;
/* compiled from: AuthManager.kt */
/* loaded from: classes3.dex */
public interface AuthManager {
    String getAccessToken();

    String getRefreshToken();

    User getUser();

    boolean isAuthorized();

    void logout();

    void setSession(SessionTokens sessionTokens);
}
