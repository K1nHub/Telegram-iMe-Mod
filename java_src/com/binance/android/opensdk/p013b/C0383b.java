package com.binance.android.opensdk.p013b;

import com.binance.android.opensdk.api.ChallengeParams;
import com.binance.android.opensdk.api.OAuthParams;
/* renamed from: com.binance.android.opensdk.b.b */
/* loaded from: classes.dex */
public final class C0383b {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static final String m1137b(ChallengeParams challengeParams) {
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static final String m1136b(OAuthParams oAuthParams) {
        return "&redirect_uri=" + oAuthParams.getRedirectUri() + "&state=" + oAuthParams.getState() + "&scope=" + oAuthParams.getScope();
    }
}
