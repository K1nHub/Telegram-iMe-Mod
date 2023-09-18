package com.google.firebase.analytics.ktx;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.ktx.Firebase;
import com.google.firebase.ktx.FirebaseKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: com.google.firebase:firebase-analytics-ktx@@19.0.2 */
/* loaded from: classes4.dex */
public final class AnalyticsKt {
    private static volatile FirebaseAnalytics zza;
    private static final Object zzb = new Object();

    public static final FirebaseAnalytics getANALYTICS() {
        return zza;
    }

    public static final FirebaseAnalytics getAnalytics(Firebase firebase) {
        Intrinsics.checkNotNullParameter(firebase, "<this>");
        if (zza == null) {
            synchronized (zzb) {
                if (getANALYTICS() == null) {
                    setANALYTICS(FirebaseAnalytics.getInstance(FirebaseKt.getApp(Firebase.INSTANCE).getApplicationContext()));
                }
            }
        }
        FirebaseAnalytics firebaseAnalytics = zza;
        Intrinsics.checkNotNull(firebaseAnalytics);
        return firebaseAnalytics;
    }

    public static final void setANALYTICS(FirebaseAnalytics firebaseAnalytics) {
        zza = firebaseAnalytics;
    }
}
