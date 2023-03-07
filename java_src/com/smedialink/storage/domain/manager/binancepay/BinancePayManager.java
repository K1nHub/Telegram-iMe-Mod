package com.smedialink.storage.domain.manager.binancepay;

import com.smedialink.storage.domain.model.binancepay.BinanceUserInfo;
/* compiled from: BinancePayManager.kt */
/* loaded from: classes3.dex */
public interface BinancePayManager {
    String getAccessToken();

    String getRefreshToken();

    BinanceUserInfo getUser();

    boolean isAuthorized();

    void logout();
}
