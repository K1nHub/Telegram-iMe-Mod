package com.iMe.fork.p024ui.view;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FloatingActionButtonsCell.kt */
/* renamed from: com.iMe.fork.ui.view.FloatingActionButtonsCell$fabsView$2 */
/* loaded from: classes3.dex */
public final class FloatingActionButtonsCell$fabsView$2 extends Lambda implements Function0<FabsView> {
    final /* synthetic */ FloatingActionButtonsCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FloatingActionButtonsCell$fabsView$2(FloatingActionButtonsCell floatingActionButtonsCell) {
        super(0);
        this.this$0 = floatingActionButtonsCell;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final FabsView invoke() {
        FabsView initFabsView;
        initFabsView = this.this$0.initFabsView();
        return initFabsView;
    }
}
