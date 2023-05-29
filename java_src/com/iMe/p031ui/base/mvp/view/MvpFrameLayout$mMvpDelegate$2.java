package com.iMe.p031ui.base.mvp.view;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import moxy.MvpDelegate;
/* compiled from: MvpFrameLayout.kt */
/* renamed from: com.iMe.ui.base.mvp.view.MvpFrameLayout$mMvpDelegate$2 */
/* loaded from: classes.dex */
final class MvpFrameLayout$mMvpDelegate$2 extends Lambda implements Function0<MvpDelegate<MvpFrameLayout>> {
    final /* synthetic */ MvpFrameLayout this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MvpFrameLayout$mMvpDelegate$2(MvpFrameLayout mvpFrameLayout) {
        super(0);
        this.this$0 = mvpFrameLayout;
    }

    @Override // kotlin.jvm.functions.Function0
    public final MvpDelegate<MvpFrameLayout> invoke() {
        return new MvpDelegate<>(this.this$0);
    }
}
