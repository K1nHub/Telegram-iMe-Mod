package com.iMe.p031ui.shop;

import android.widget.FrameLayout;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BotSettingsActivity.kt */
/* renamed from: com.iMe.ui.shop.BotSettingsActivity$rootView$2 */
/* loaded from: classes3.dex */
public final class BotSettingsActivity$rootView$2 extends Lambda implements Function0<FrameLayout> {
    final /* synthetic */ BotSettingsActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BotSettingsActivity$rootView$2(BotSettingsActivity botSettingsActivity) {
        super(0);
        this.this$0 = botSettingsActivity;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final FrameLayout invoke() {
        FrameLayout initRootView;
        initRootView = this.this$0.initRootView();
        return initRootView;
    }
}
