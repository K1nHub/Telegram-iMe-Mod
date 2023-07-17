package com.iMe.fork.p024ui.view;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p043ui.Components.RLottieImageView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FloatingActionButton.kt */
/* renamed from: com.iMe.fork.ui.view.FloatingActionButton$iconView$2 */
/* loaded from: classes3.dex */
public final class FloatingActionButton$iconView$2 extends Lambda implements Function0<RLottieImageView> {
    final /* synthetic */ FloatingActionButton this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FloatingActionButton$iconView$2(FloatingActionButton floatingActionButton) {
        super(0);
        this.this$0 = floatingActionButton;
    }

    @Override // kotlin.jvm.functions.Function0
    public final RLottieImageView invoke() {
        RLottieImageView initIconView;
        initIconView = this.this$0.initIconView();
        return initIconView;
    }
}
