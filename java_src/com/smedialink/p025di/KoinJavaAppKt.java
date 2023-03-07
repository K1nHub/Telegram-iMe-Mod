package com.smedialink.p025di;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.context.DefaultContextExtKt;
/* compiled from: KoinJavaApp.kt */
/* renamed from: com.smedialink.di.KoinJavaAppKt */
/* loaded from: classes3.dex */
public final class KoinJavaAppKt {
    public static final void start(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        DefaultContextExtKt.startKoin(new KoinJavaAppKt$start$1(context));
    }
}
