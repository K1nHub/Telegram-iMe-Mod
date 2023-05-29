package com.binance.android.opensdk.p014c;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import com.google.android.exoplayer2.C0475C;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.binance.android.opensdk.c.d */
/* loaded from: classes.dex */
public final class C0387d {
    /* renamed from: a */
    private static final Signature m814a(PackageInfo packageInfo) {
        SigningInfo signingInfo = packageInfo.signingInfo;
        Signature[] apkContentsSigners = signingInfo.hasMultipleSigners() ? signingInfo.getApkContentsSigners() : signingInfo.getSigningCertificateHistory();
        Intrinsics.checkExpressionValueIsNotNull(apkContentsSigners, "if (hasMultipleSigners()…tificateHistory\n        }");
        return (Signature) ArraysKt.firstOrNull(apkContentsSigners);
    }

    /* renamed from: a */
    public static final String m816a(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        String packageName = context.getPackageName();
        Intrinsics.checkExpressionValueIsNotNull(packageName, "context.packageName");
        return m815a(context, packageName);
    }

    /* renamed from: a */
    private static final String m815a(Context context, String str) {
        Signature signature;
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, C0475C.BUFFER_FLAG_FIRST_SAMPLE);
                Intrinsics.checkExpressionValueIsNotNull(packageInfo, "context.packageManager.g…FICATES\n                )");
                signature = m814a(packageInfo);
            } else {
                signature = context.getPackageManager().getPackageInfo(str, 64).signatures[0];
            }
            if (signature == null) {
                return "";
            }
            byte[] byteArray = signature.toByteArray();
            Intrinsics.checkExpressionValueIsNotNull(byteArray, "signature.toByteArray()");
            return C0386c.m817a(byteArray);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}
