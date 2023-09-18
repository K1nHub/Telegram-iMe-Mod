package com.iMe.storage.domain.manager.auth;

import com.iMe.storage.domain.model.wallet.SessionTokens;
import com.iMe.storage.domain.model.wallet.User;
/* compiled from: AuthManager.kt */
/* loaded from: classes4.dex */
public interface AuthManager {
    String getAccessToken();

    String getRefreshToken();

    User getUser();

    boolean isAuthorized();

    void logout();

    void setSession(SessionTokens sessionTokens);
}
