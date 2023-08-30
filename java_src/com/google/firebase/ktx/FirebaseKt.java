package com.google.firebase.ktx;

import com.google.firebase.FirebaseApp;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Firebase.kt */
/* loaded from: classes3.dex */
public final class FirebaseKt {
    public static final FirebaseApp getApp(Firebase app) {
        Intrinsics.checkParameterIsNotNull(app, "$this$app");
        FirebaseApp firebaseApp = FirebaseApp.getInstance();
        Intrinsics.checkExpressionValueIsNotNull(firebaseApp, "FirebaseApp.getInstance()");
        return firebaseApp;
    }
}
