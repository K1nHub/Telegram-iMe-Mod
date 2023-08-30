package com.iMe.storage.data.manager.auth;

import com.auth0.android.jwt.JWT;
import com.iMe.storage.data.locale.prefs.model.auth.AuthTokensMetadata;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.manager.auth.AuthManager;
import com.iMe.storage.domain.model.wallet.SessionTokens;
import com.iMe.storage.domain.model.wallet.User;
import com.iMe.storage.domain.storage.BasePreferenceHelper;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import timber.log.Timber;
/* compiled from: AuthManagerImpl.kt */
/* loaded from: classes3.dex */
public final class AuthManagerImpl implements AuthManager {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final TelegramGateway telegramGateway;

    static {
        new Companion(null);
    }

    public AuthManagerImpl(TelegramGateway telegramGateway, CryptoPreferenceHelper cryptoPreferenceHelper) {
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        this.telegramGateway = telegramGateway;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
    }

    @Override // com.iMe.storage.domain.manager.auth.AuthManager
    public boolean isAuthorized() {
        String accessToken = getAccessToken();
        if (accessToken == null || accessToken.length() == 0) {
            String refreshToken = getRefreshToken();
            if (refreshToken == null || refreshToken.length() == 0) {
                return false;
            }
        }
        return true;
    }

    @Override // com.iMe.storage.domain.manager.auth.AuthManager
    public User getUser() {
        String accessToken = getAccessToken();
        if (accessToken == null || accessToken.length() == 0) {
            return null;
        }
        try {
            String accessToken2 = getAccessToken();
            String str = "";
            if (accessToken2 == null) {
                accessToken2 = "";
            }
            String asString = new JWT(accessToken2).getClaim("uid").asString();
            if (asString != null) {
                str = asString;
            }
            return new User(str);
        } catch (Exception e) {
            Timber.m6e(e);
            return null;
        }
    }

    @Override // com.iMe.storage.domain.manager.auth.AuthManager
    public String getAccessToken() {
        SessionTokens authTokens = this.cryptoPreferenceHelper.getAuthSession().getAuthTokens();
        if (authTokens != null) {
            return authTokens.getToken();
        }
        return null;
    }

    @Override // com.iMe.storage.domain.manager.auth.AuthManager
    public String getRefreshToken() {
        String refreshToken;
        SessionTokens authTokens = this.cryptoPreferenceHelper.getAuthSession().getAuthTokens();
        return (authTokens == null || (refreshToken = authTokens.getRefreshToken()) == null) ? getOldRefreshToken() : refreshToken;
    }

    public String getOldRefreshToken() {
        return this.telegramGateway.getWalletRefreshToken();
    }

    @Override // com.iMe.storage.domain.manager.auth.AuthManager
    public void setSession(SessionTokens session) {
        Intrinsics.checkNotNullParameter(session, "session");
        this.cryptoPreferenceHelper.setAuthSession(new AuthTokensMetadata(session, DateExtKt.now()));
        this.telegramGateway.setWalletRefreshToken(null);
    }

    @Override // com.iMe.storage.domain.manager.auth.AuthManager
    public void logout() {
        CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
        cryptoPreferenceHelper.remove(BasePreferenceHelper.CC.withTgAccount$default(cryptoPreferenceHelper, "auth_session", null, 2, null));
    }

    /* compiled from: AuthManagerImpl.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
