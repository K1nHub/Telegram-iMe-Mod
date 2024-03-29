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
import com.binance.android.opensdk.p012a.DialogC0380a;
import com.binance.android.opensdk.p014c.C0388a;
import com.binance.android.opensdk.p014c.C0391d;
import java.util.Locale;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.XiaomiUtilities;
/* renamed from: com.binance.android.opensdk.b.a */
/* loaded from: classes.dex */
public final class C0384a implements BinanceAPI {

    /* renamed from: a */
    private final int f67a;

    /* renamed from: b */
    private BinanceListener f68b;

    /* renamed from: c */
    private final Activity f69c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.binance.android.opensdk.b.a$a */
    /* loaded from: classes.dex */
    public static final class C0385a extends Lambda implements Function0<Unit> {
        C0385a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            C0384a.this.m1147a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.binance.android.opensdk.b.a$b */
    /* loaded from: classes.dex */
    public static final class C0386b extends Lambda implements Function0<Unit> {

        /* renamed from: b */
        final /* synthetic */ String f72b;

        /* renamed from: c */
        final /* synthetic */ OAuthParams f73c;

        /* renamed from: d */
        final /* synthetic */ ChallengeParams f74d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0386b(String str, OAuthParams oAuthParams, ChallengeParams challengeParams) {
            super(0);
            this.f72b = str;
            this.f73c = oAuthParams;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            C0384a.this.m1142a(this.f72b, this.f73c, this.f74d);
        }
    }

    public C0384a(Activity activity) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        this.f69c = activity;
        this.f67a = 12017;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final void m1147a() {
        Locale local = Locale.getDefault();
        Intrinsics.checkExpressionValueIsNotNull(local, "local");
        String language = local.getLanguage();
        Locale locale = Locale.SIMPLIFIED_CHINESE;
        Intrinsics.checkExpressionValueIsNotNull(locale, "Locale.SIMPLIFIED_CHINESE");
        String str = Intrinsics.areEqual(language, locale.getLanguage()) ? "cn" : "en";
        Uri parse = Uri.parse("https://www.binance.com/" + str + "/download?link=kDFj/38cb47e");
        Intrinsics.checkExpressionValueIsNotNull(parse, "Uri.parse(\"https://www.b…nload?link=kDFj/38cb47e\")");
        this.f69c.startActivity(new Intent("android.intent.action.VIEW", parse));
    }

    /* renamed from: a */
    private final void m1146a(OAuthParams oAuthParams, ChallengeParams challengeParams, BinanceListener binanceListener, boolean z) {
        int i;
        String m1131b = C0388a.m1131b(this.f69c);
        if (m1131b == null || !C0388a.m1132a(m1131b)) {
            i = XiaomiUtilities.OP_BLUETOOTH_CHANGE;
        } else if (C0388a.m1133a(oAuthParams)) {
            AppStatus m1135a = C0388a.m1135a(this.f69c);
            if (m1135a != AppStatus.Supported || z) {
                new DialogC0380a(this.f69c, Integer.valueOf(z ? R$string.binance_opensdk_login_failed_tips : R$string.binance_opensdk_login_to_connect), m1135a == AppStatus.UnInstalled ? R$string.binance_opensdk_download : R$string.binance_opensdk_upgrade, new C0385a(), new C0386b(m1131b, oAuthParams, challengeParams)).show();
                return;
            } else {
                m1141a(m1131b, oAuthParams, challengeParams, binanceListener);
                return;
            }
        } else {
            i = XiaomiUtilities.OP_DATA_CONNECT_CHANGE;
        }
        binanceListener.onError(i);
    }

    /* renamed from: a */
    static /* synthetic */ void m1144a(C0384a c0384a, OAuthParams oAuthParams, ChallengeParams challengeParams, BinanceListener binanceListener, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = false;
        }
        c0384a.m1146a(oAuthParams, challengeParams, binanceListener, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final void m1142a(String str, OAuthParams oAuthParams, ChallengeParams challengeParams) {
        String m1137b;
        String m1138b;
        StringBuilder sb = new StringBuilder();
        sb.append("https://accounts.binance.com/");
        sb.append(C0388a.m1136a());
        sb.append("/oauth/authorize?response_type=code&client_id=");
        sb.append(str);
        m1137b = C0387b.m1137b(oAuthParams);
        sb.append(m1137b);
        m1138b = C0387b.m1138b(challengeParams);
        sb.append(m1138b);
        this.f69c.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(sb.toString())));
    }

    /* renamed from: a */
    private final void m1141a(String str, OAuthParams oAuthParams, ChallengeParams challengeParams, BinanceListener binanceListener) {
        this.f68b = binanceListener;
        Intent intent = new Intent();
        intent.putExtra("binance_opensdk_client_id", str);
        intent.putExtra("binance_opensdk_redirect_uri", oAuthParams.getRedirectUri());
        intent.putExtra("binance_opensdk_scope", oAuthParams.getScope());
        intent.putExtra("binance_opensdk_state", oAuthParams.getState());
        intent.setClassName("com.binance.dev", "com.binance.dev.open.BinanceEntryActivity");
        intent.putExtra("binance_opensdk_package_name", this.f69c.getPackageName());
        intent.putExtra("binance_opensdk_signature", C0391d.m1127a(this.f69c));
        Activity activity = this.f69c;
        if (activity == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.app.Activity");
        }
        activity.startActivityForResult(intent, this.f67a);
    }

    @Override // com.binance.android.opensdk.api.BinanceAPI
    public void authorize(OAuthParams oauthParams, BinanceListener listener) {
        Intrinsics.checkParameterIsNotNull(oauthParams, "oauthParams");
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        m1144a(this, oauthParams, null, listener, false, 8, null);
    }
}
