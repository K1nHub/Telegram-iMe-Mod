package org.fork.p046ui.dialog;

import android.widget.LinearLayout;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ClearCacheBottomSheet.kt */
/* renamed from: org.fork.ui.dialog.ClearCacheBottomSheet$rootLinear$2 */
/* loaded from: classes4.dex */
public final class ClearCacheBottomSheet$rootLinear$2 extends Lambda implements Function0<LinearLayout> {
    final /* synthetic */ ClearCacheBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClearCacheBottomSheet$rootLinear$2(ClearCacheBottomSheet clearCacheBottomSheet) {
        super(0);
        this.this$0 = clearCacheBottomSheet;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final LinearLayout invoke() {
        LinearLayout initRootLinear;
        initRootLinear = this.this$0.initRootLinear();
        return initRootLinear;
    }
}
