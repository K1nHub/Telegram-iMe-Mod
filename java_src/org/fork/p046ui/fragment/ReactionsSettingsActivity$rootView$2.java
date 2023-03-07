package org.fork.p046ui.fragment;

import android.widget.FrameLayout;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ReactionsSettingsActivity.kt */
/* renamed from: org.fork.ui.fragment.ReactionsSettingsActivity$rootView$2 */
/* loaded from: classes4.dex */
public final class ReactionsSettingsActivity$rootView$2 extends Lambda implements Function0<FrameLayout> {
    final /* synthetic */ ReactionsSettingsActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReactionsSettingsActivity$rootView$2(ReactionsSettingsActivity reactionsSettingsActivity) {
        super(0);
        this.this$0 = reactionsSettingsActivity;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final FrameLayout invoke() {
        FrameLayout initRootView;
        initRootView = this.this$0.initRootView();
        return initRootView;
    }
}
