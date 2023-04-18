package com.iMe.p031ui.base.mvp;

import android.app.Activity;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MvpFragment.kt */
/* renamed from: com.iMe.ui.base.mvp.MvpFragment$mvpBaseDelegate$2$1$context$2 */
/* loaded from: classes3.dex */
public final class MvpFragment$mvpBaseDelegate$2$1$context$2 extends Lambda implements Function0<Activity> {
    final /* synthetic */ MvpFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MvpFragment$mvpBaseDelegate$2$1$context$2(MvpFragment mvpFragment) {
        super(0);
        this.this$0 = mvpFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Activity invoke() {
        return this.this$0.getParentActivity();
    }
}
