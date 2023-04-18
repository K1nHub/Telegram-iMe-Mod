package com.iMe.fork.p024ui.fragment;

import android.widget.FrameLayout;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ChooseIntervalSettingsActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.ChooseIntervalSettingsActivity$rootView$2 */
/* loaded from: classes3.dex */
public final class ChooseIntervalSettingsActivity$rootView$2 extends Lambda implements Function0<FrameLayout> {
    final /* synthetic */ ChooseIntervalSettingsActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChooseIntervalSettingsActivity$rootView$2(ChooseIntervalSettingsActivity chooseIntervalSettingsActivity) {
        super(0);
        this.this$0 = chooseIntervalSettingsActivity;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final FrameLayout invoke() {
        FrameLayout initRootView;
        initRootView = this.this$0.initRootView();
        return initRootView;
    }
}
