package com.iMe.fork.p024ui.dialog;

import android.widget.ScrollView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SettingsHelpBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.SettingsHelpBottomSheet$rootView$2 */
/* loaded from: classes3.dex */
public final class SettingsHelpBottomSheet$rootView$2 extends Lambda implements Function0<ScrollView> {
    final /* synthetic */ SettingsHelpBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsHelpBottomSheet$rootView$2(SettingsHelpBottomSheet settingsHelpBottomSheet) {
        super(0);
        this.this$0 = settingsHelpBottomSheet;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ScrollView invoke() {
        ScrollView initRootView;
        initRootView = this.this$0.initRootView();
        return initRootView;
    }
}
