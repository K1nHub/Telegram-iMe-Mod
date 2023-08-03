package com.binance.android.opensdk.p014c;

import android.content.Context;
import android.os.Bundle;
import com.binance.android.opensdk.api.AppStatus;
import com.binance.android.opensdk.api.OAuthParams;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
/* renamed from: com.binance.android.opensdk.c.a */
/* loaded from: classes.dex */
public final class C0384a {
    /* renamed from: a */
    public static final AppStatus m842a(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        return !m841a(context, "com.binance.dev") ? AppStatus.UnInstalled : m837c(context) < ((float) 1) ? AppStatus.UnSupported : AppStatus.Supported;
    }

    /* renamed from: a */
    public static final String m843a() {
        Locale locale = Locale.getDefault();
        Intrinsics.checkExpressionValueIsNotNull(locale, "locale");
        String lang = locale.getLanguage();
        String country = locale.getCountry();
        if (Intrinsics.areEqual(lang, "zh") && Intrinsics.areEqual(country, "TW")) {
            return "tw";
        }
        if (Intrinsics.areEqual(lang, "zh")) {
            return "cn";
        }
        Intrinsics.checkExpressionValueIsNotNull(lang, "lang");
        return lang;
    }

    /* renamed from: a */
    public static final boolean m841a(Context context, String packageName) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(packageName, "packageName");
        return context.getPackageManager().getPackageInfo(packageName, 2048) != null;
    }

    /* renamed from: a */
    public static final boolean m840a(OAuthParams oAuthParams) {
        boolean isBlank;
        Intrinsics.checkParameterIsNotNull(oAuthParams, "oAuthParams");
        isBlank = StringsKt__StringsJVMKt.isBlank(oAuthParams.getRedirectUri());
        if (isBlank) {
            C0385b.m836a("redirectUri cannot be null");
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0010  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0016 A[RETURN] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m839a(java.lang.String r2) {
        /*
            r0 = 0
            r1 = 1
            if (r2 == 0) goto Ld
            boolean r2 = kotlin.text.StringsKt.isBlank(r2)
            if (r2 == 0) goto Lb
            goto Ld
        Lb:
            r2 = r0
            goto Le
        Ld:
            r2 = r1
        Le:
            if (r2 == 0) goto L16
            java.lang.String r2 = "clientId cannot be null"
            com.binance.android.opensdk.p014c.C0385b.m836a(r2)
            return r0
        L16:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.binance.android.opensdk.p014c.C0384a.m839a(java.lang.String):boolean");
    }

    /* renamed from: b */
    public static final String m838b(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
        if (bundle != null) {
            return bundle.getString("BINANCE_CLIENT_ID");
        }
        return null;
    }

    /* renamed from: c */
    public static final float m837c(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        try {
            return context.getPackageManager().getApplicationInfo("com.binance.dev", 128).metaData.getFloat("com.binance.dev.open.sdk.version", BitmapDescriptorFactory.HUE_RED);
        } catch (Exception unused) {
            return BitmapDescriptorFactory.HUE_RED;
        }
    }
}
