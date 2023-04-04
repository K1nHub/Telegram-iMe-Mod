package com.iMe.p032ui.base.mvp.view;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import moxy.MvpDelegate;
/* compiled from: MvpNoParentCustomView.kt */
/* renamed from: com.iMe.ui.base.mvp.view.MvpNoParentCustomView$mMvpDelegate$2 */
/* loaded from: classes3.dex */
final class MvpNoParentCustomView$mMvpDelegate$2 extends Lambda implements Function0<MvpDelegate<MvpNoParentCustomView>> {
    final /* synthetic */ MvpNoParentCustomView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MvpNoParentCustomView$mMvpDelegate$2(MvpNoParentCustomView mvpNoParentCustomView) {
        super(0);
        this.this$0 = mvpNoParentCustomView;
    }

    @Override // kotlin.jvm.functions.Function0
    public final MvpDelegate<MvpNoParentCustomView> invoke() {
        return new MvpDelegate<>(this.this$0);
    }
}
