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
import com.binance.android.opensdk.p012a.DialogC0371a;
import com.binance.android.opensdk.p014c.C0379a;
import com.binance.android.opensdk.p014c.C0382d;
import java.util.Locale;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.XiaomiUtilities;
/* renamed from: com.binance.android.opensdk.b.a */
/* loaded from: classes.dex */
public final class C0375a implements BinanceAPI {

    /* renamed from: a */
    private final int f62a;

    /* renamed from: b */
    private BinanceListener f63b;

    /* renamed from: c */
    private final Activity f64c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.binance.android.opensdk.b.a$a */
    /* loaded from: classes.dex */
    public static final class C0376a extends Lambda implements Function0<Unit> {
        C0376a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            C0375a.this.m832a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.binance.android.opensdk.b.a$b */
    /* loaded from: classes.dex */
    public static final class C0377b extends Lambda implements Function0<Unit> {

        /* renamed from: b */
        final /* synthetic */ String f67b;

        /* renamed from: c */
        final /* synthetic */ OAuthParams f68c;

        /* renamed from: d */
        final /* synthetic */ ChallengeParams f69d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0377b(String str, OAuthParams oAuthParams, ChallengeParams challengeParams) {
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
            C0375a.this.m827a(this.f67b, this.f68c, this.f69d);
        }
    }

    public C0375a(Activity activity) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        this.f64c = activity;
        this.f62a = 12017;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final void m832a() {
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
    private final void m831a(OAuthParams oAuthParams, ChallengeParams challengeParams, BinanceListener binanceListener, boolean z) {
        int i;
        String m816b = C0379a.m816b(this.f64c);
        if (m816b == null || !C0379a.m817a(m816b)) {
            i = XiaomiUtilities.OP_BLUETOOTH_CHANGE;
        } else if (C0379a.m818a(oAuthParams)) {
            AppStatus m820a = C0379a.m820a(this.f64c);
            if (m820a != AppStatus.Supported || z) {
                new DialogC0371a(this.f64c, Integer.valueOf(z ? R$string.binance_opensdk_login_failed_tips : R$string.binance_opensdk_login_to_connect), m820a == AppStatus.UnInstalled ? R$string.binance_opensdk_download : R$string.binance_opensdk_upgrade, new C0376a(), new C0377b(m816b, oAuthParams, challengeParams)).show();
                return;
            } else {
                m826a(m816b, oAuthParams, challengeParams, binanceListener);
                return;
            }
        } else {
            i = XiaomiUtilities.OP_DATA_CONNECT_CHANGE;
        }
        binanceListener.onError(i);
    }

    /* renamed from: a */
    static /* synthetic */ void m829a(C0375a c0375a, OAuthParams oAuthParams, ChallengeParams challengeParams, BinanceListener binanceListener, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = false;
        }
        c0375a.m831a(oAuthParams, challengeParams, binanceListener, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final void m827a(String str, OAuthParams oAuthParams, ChallengeParams challengeParams) {
        String m822b;
        String m823b;
        StringBuilder sb = new StringBuilder();
        sb.append("https://accounts.binance.com/");
        sb.append(C0379a.m821a());
        sb.append("/oauth/authorize?response_type=code&client_id=");
        sb.append(str);
        m822b = C0378b.m822b(oAuthParams);
        sb.append(m822b);
        m823b = C0378b.m823b(challengeParams);
        sb.append(m823b);
        this.f64c.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(sb.toString())));
    }

    /* renamed from: a */
    private final void m826a(String str, OAuthParams oAuthParams, ChallengeParams challengeParams, BinanceListener binanceListener) {
        this.f63b = binanceListener;
        Intent intent = new Intent();
        intent.putExtra("binance_opensdk_client_id", str);
        intent.putExtra("binance_opensdk_redirect_uri", oAuthParams.getRedirectUri());
        intent.putExtra("binance_opensdk_scope", oAuthParams.getScope());
        intent.putExtra("binance_opensdk_state", oAuthParams.getState());
        intent.setClassName("com.binance.dev", "com.binance.dev.open.BinanceEntryActivity");
        intent.putExtra("binance_opensdk_package_name", this.f64c.getPackageName());
        intent.putExtra("binance_opensdk_signature", C0382d.m812a(this.f64c));
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
        m829a(this, oauthParams, null, listener, false, 8, null);
    }
}
