package com.iMe.fork.p025ui.dialog;

import androidx.core.widget.NestedScrollView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ClearCacheBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.ClearCacheBottomSheet$rootScrollingView$2 */
/* loaded from: classes3.dex */
public final class ClearCacheBottomSheet$rootScrollingView$2 extends Lambda implements Function0<NestedScrollView> {
    final /* synthetic */ ClearCacheBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClearCacheBottomSheet$rootScrollingView$2(ClearCacheBottomSheet clearCacheBottomSheet) {
        super(0);
        this.this$0 = clearCacheBottomSheet;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final NestedScrollView invoke() {
        NestedScrollView initRootScrollView;
        initRootScrollView = this.this$0.initRootScrollView();
        return initRootScrollView;
    }
}
