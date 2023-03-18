package com.binance.android.opensdk.p013b;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import com.binance.android.opensdk.R$string;
import com.binance.android.opensdk.api.AppStatus;
import com.binance.android.opensdk.api.BinanceAPI;
import com.binance.android.opensdk.api.BinanceListener;
import com.binance.android.opensdk.api.ChallengeParams;
import com.binance.android.opensdk.api.OAuthParams;
import com.binance.android.opensdk.p012a.DialogC0379a;
import com.binance.android.opensdk.p014c.C0387a;
import com.binance.android.opensdk.p014c.C0390d;
import java.util.Locale;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.XiaomiUtilities;
/* renamed from: com.binance.android.opensdk.b.a */
/* loaded from: classes.dex */
public final class C0383a implements BinanceAPI {

    /* renamed from: a */
    private final int f62a;

    /* renamed from: b */
    private BinanceListener f63b;

    /* renamed from: c */
    private final Activity f64c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.binance.android.opensdk.b.a$a */
    /* loaded from: classes.dex */
    public static final class C0384a extends Lambda implements Function0<Unit> {
        C0384a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            C0383a.this.m847a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.binance.android.opensdk.b.a$b */
    /* loaded from: classes.dex */
    public static final class C0385b extends Lambda implements Function0<Unit> {

        /* renamed from: b */
        final /* synthetic */ String f67b;

        /* renamed from: c */
        final /* synthetic */ OAuthParams f68c;

        /* renamed from: d */
        final /* synthetic */ ChallengeParams f69d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0385b(String str, OAuthParams oAuthParams, ChallengeParams challengeParams) {
            super(0);
            this.f67b = str;
            this.f68c = oAuthParams;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            C0383a.this.m842a(this.f67b, this.f68c, this.f69d);
        }
    }

    public C0383a(Activity activity) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        this.f64c = activity;
        this.f62a = 12017;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final void m847a() {
        Locale local = Locale.getDefault();
        Intrinsics.checkExpressionValueIsNotNull(local, "local");
        String language = local.getLanguage();
        Locale locale = Locale.SIMPLIFIED_CHINESE;
        Intrinsics.checkExpressionValueIsNotNull(locale, "Locale.SIMPLIFIED_CHINESE");
        String str = Intrinsics.areEqual(language, locale.getLanguage()) ? "cn" : "en";
        Uri parse = Uri.parse("https://www.binance.com/" + str + "/download?link=kDFj/38cb47e");
        Intrinsics.checkExpressionValueIsNotNull(parse, "Uri.parse(\"https://www.b…nload?link=kDFj/38cb47e\")");
        this.f64c.startActivity(new Intent("android.intent.action.VIEW", parse));
    }

    /* renamed from: a */
    private final void m846a(OAuthParams oAuthParams, ChallengeParams challengeParams, BinanceListener binanceListener, boolean z) {
        int i;
        String m831b = C0387a.m831b(this.f64c);
        if (m831b == null || !C0387a.m832a(m831b)) {
            i = XiaomiUtilities.OP_BLUETOOTH_CHANGE;
        } else if (C0387a.m833a(oAuthParams)) {
            AppStatus m835a = C0387a.m835a(this.f64c);
            if (m835a != AppStatus.Supported || z) {
                new DialogC0379a(this.f64c, Integer.valueOf(z ? R$string.binance_opensdk_login_failed_tips : R$string.binance_opensdk_login_to_connect), m835a == AppStatus.UnInstalled ? R$string.binance_opensdk_download : R$string.binance_opensdk_upgrade, new C0384a(), new C0385b(m831b, oAuthParams, challengeParams)).show();
                return;
            } else {
                m841a(m831b, oAuthParams, challengeParams, binanceListener);
                return;
            }
        } else {
            i = XiaomiUtilities.OP_DATA_CONNECT_CHANGE;
        }
        binanceListener.onError(i);
    }

    /* renamed from: a */
    static /* synthetic */ void m844a(C0383a c0383a, OAuthParams oAuthParams, ChallengeParams challengeParams, BinanceListener binanceListener, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = false;
        }
        c0383a.m846a(oAuthParams, challengeParams, binanceListener, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final void m842a(String str, OAuthParams oAuthParams, ChallengeParams challengeParams) {
        String m837b;
        String m838b;
        StringBuilder sb = new StringBuilder();
        sb.append("https://accounts.binance.com/");
        sb.append(C0387a.m836a());
        sb.append("/oauth/authorize?response_type=code&client_id=");
        sb.append(str);
        m837b = C0386b.m837b(oAuthParams);
        sb.append(m837b);
        m838b = C0386b.m838b(challengeParams);
        sb.append(m838b);
        this.f64c.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(sb.toString())));
    }

    /* renamed from: a */
    private final void m841a(String str, OAuthParams oAuthParams, ChallengeParams challengeParams, BinanceListener binanceListener) {
        this.f63b = binanceListener;
        Intent intent = new Intent();
        intent.putExtra("binance_opensdk_client_id", str);
        intent.putExtra("binance_opensdk_redirect_uri", oAuthParams.getRedirectUri());
        intent.putExtra("binance_opensdk_scope", oAuthParams.getScope());
        intent.putExtra("binance_opensdk_state", oAuthParams.getState());
        intent.setClassName("com.binance.dev", "com.binance.dev.open.BinanceEntryActivity");
        intent.putExtra("binance_opensdk_package_name", this.f64c.getPackageName());
        intent.putExtra("binance_opensdk_signature", C0390d.m827a(this.f64c));
        Activity activity = this.f64c;
        if (activity == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.app.Activity");
        }
        activity.startActivityForResult(intent, this.f62a);
    }

    @Override // com.binance.android.opensdk.api.BinanceAPI
    public void authorize(OAuthParams oauthParams, BinanceListener listener) {
        Intrinsics.checkParameterIsNotNull(oauthParams, "oauthParams");
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        m844a(this, oauthParams, null, listener, false, 8, null);
    }
}
