package org.fork.p046ui.fragment;

import android.widget.FrameLayout;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SettingsToolsCategoryActivity.kt */
/* renamed from: org.fork.ui.fragment.SettingsToolsCategoryActivity$rootView$2 */
/* loaded from: classes4.dex */
public final class SettingsToolsCategoryActivity$rootView$2 extends Lambda implements Function0<FrameLayout> {
    final /* synthetic */ SettingsToolsCategoryActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsToolsCategoryActivity$rootView$2(SettingsToolsCategoryActivity settingsToolsCategoryActivity) {
        super(0);
        this.this$0 = settingsToolsCategoryActivity;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final FrameLayout invoke() {
        FrameLayout initRootView;
        initRootView = this.this$0.initRootView();
        return initRootView;
    }
}
