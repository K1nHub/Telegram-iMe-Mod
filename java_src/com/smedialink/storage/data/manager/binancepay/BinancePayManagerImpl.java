package com.smedialink.storage.data.manager.binancepay;

import com.smedialink.storage.data.utils.extentions.DateExtKt;
import com.smedialink.storage.domain.manager.binancepay.BinancePayManager;
import com.smedialink.storage.domain.model.binancepay.BinanceAuthTokens;
import com.smedialink.storage.domain.model.binancepay.BinanceUserInfo;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinancePayManagerImpl.kt */
/* loaded from: classes3.dex */
public final class BinancePayManagerImpl implements BinancePayManager {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;

    static {
        new Companion(null);
    }

    public BinancePayManagerImpl(CryptoPreferenceHelper cryptoPreferenceHelper) {
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
    }

    @Override // com.smedialink.storage.domain.manager.binancepay.BinancePayManager
    public boolean isAuthorized() {
        String accessToken = getAccessToken();
        if (accessToken == null || accessToken.length() == 0) {
            return false;
        }
        String refreshToken = getRefreshToken();
        return !(refreshToken == null || refreshToken.length() == 0) && isRefreshTokenValid();
    }

    @Override // com.smedialink.storage.domain.manager.binancepay.BinancePayManager
    public BinanceUserInfo getUser() {
        return this.cryptoPreferenceHelper.getBinanceUserInfo().getInfo();
    }

    @Override // com.smedialink.storage.domain.manager.binancepay.BinancePayManager
    public String getAccessToken() {
        BinanceAuthTokens authTokens = this.cryptoPreferenceHelper.getBinanceAuthSession().getAuthTokens();
        if (authTokens == null) {
            return null;
        }
        return authTokens.getAccessToken();
    }

    @Override // com.smedialink.storage.domain.manager.binancepay.BinancePayManager
    public String getRefreshToken() {
        BinanceAuthTokens authTokens = this.cryptoPreferenceHelper.getBinanceAuthSession().getAuthTokens();
        if (authTokens == null) {
            return null;
        }
        return authTokens.getRefreshToken();
    }

    public boolean isRefreshTokenValid() {
        return this.cryptoPreferenceHelper.getBinanceAuthSession().getUpdateTimestamp() + getRefreshTokenExpiresInMillis() > DateExtKt.now();
    }

    @Override // com.smedialink.storage.domain.manager.binancepay.BinancePayManager
    public void logout() {
        this.cryptoPreferenceHelper.resetBinanceAccount();
    }

    private final long getRefreshTokenExpiresInMillis() {
        return TimeUnit.DAYS.toMillis(30L);
    }

    /* compiled from: BinancePayManagerImpl.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
