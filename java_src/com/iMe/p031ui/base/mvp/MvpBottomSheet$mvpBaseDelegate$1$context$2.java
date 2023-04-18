package com.iMe.p031ui.base.mvp;

import android.content.Context;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MvpBottomSheet.kt */
/* renamed from: com.iMe.ui.base.mvp.MvpBottomSheet$mvpBaseDelegate$1$context$2 */
/* loaded from: classes3.dex */
public final class MvpBottomSheet$mvpBaseDelegate$1$context$2 extends Lambda implements Function0<Context> {
    final /* synthetic */ MvpBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MvpBottomSheet$mvpBaseDelegate$1$context$2(MvpBottomSheet mvpBottomSheet) {
        super(0);
        this.this$0 = mvpBottomSheet;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Context invoke() {
        Context context = this.this$0.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "this@MvpBottomSheet.context");
        return context;
    }
}
