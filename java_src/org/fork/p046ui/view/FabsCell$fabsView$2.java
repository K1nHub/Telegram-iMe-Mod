package org.fork.p046ui.view;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FabsCell.kt */
/* renamed from: org.fork.ui.view.FabsCell$fabsView$2 */
/* loaded from: classes4.dex */
public final class FabsCell$fabsView$2 extends Lambda implements Function0<FabsView> {
    final /* synthetic */ FabsCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FabsCell$fabsView$2(FabsCell fabsCell) {
        super(0);
        this.this$0 = fabsCell;
    }

    @Override // kotlin.jvm.functions.Function0
    public final FabsView invoke() {
        FabsView initFabsView;
        initFabsView = this.this$0.initFabsView();
        return initFabsView;
    }
}
