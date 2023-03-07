package com.smedialink.p031ui.base.mvp;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.java.KoinJavaComponent;
/* compiled from: JavaMvpBottomSheet.kt */
/* renamed from: com.smedialink.ui.base.mvp.JavaMvpBottomSheet */
/* loaded from: classes3.dex */
public abstract class JavaMvpBottomSheet extends MvpBottomSheet {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaMvpBottomSheet(Context context, boolean z) {
        super(context, z);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public JavaMvpBottomSheet(Context context, int i) {
        this(context, true);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpBottomSheet, org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinJavaComponent.getKoin();
    }
}
