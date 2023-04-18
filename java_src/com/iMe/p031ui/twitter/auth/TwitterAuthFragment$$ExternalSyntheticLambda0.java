package com.iMe.p031ui.twitter.auth;

import android.webkit.ValueCallback;
/* renamed from: com.iMe.ui.twitter.auth.TwitterAuthFragment$$ExternalSyntheticLambda0 */
/* loaded from: classes3.dex */
public final /* synthetic */ class TwitterAuthFragment$$ExternalSyntheticLambda0 implements ValueCallback {
    public static final /* synthetic */ TwitterAuthFragment$$ExternalSyntheticLambda0 INSTANCE = new TwitterAuthFragment$$ExternalSyntheticLambda0();

    private /* synthetic */ TwitterAuthFragment$$ExternalSyntheticLambda0() {
    }

    @Override // android.webkit.ValueCallback
    public final void onReceiveValue(Object obj) {
        TwitterAuthFragment.setupWebView$lambda$3$lambda$2((Boolean) obj);
    }
}
