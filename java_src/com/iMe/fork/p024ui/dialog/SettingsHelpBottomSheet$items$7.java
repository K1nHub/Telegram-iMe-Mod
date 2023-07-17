package com.iMe.fork.p024ui.dialog;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.Components.AlertsCreator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SettingsHelpBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.SettingsHelpBottomSheet$items$7 */
/* loaded from: classes3.dex */
public final class SettingsHelpBottomSheet$items$7 extends Lambda implements Function0<Unit> {
    final /* synthetic */ SettingsHelpBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsHelpBottomSheet$items$7(SettingsHelpBottomSheet settingsHelpBottomSheet) {
        super(0);
        this.this$0 = settingsHelpBottomSheet;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        BaseFragment baseFragment;
        BaseFragment baseFragment2;
        BaseFragment baseFragment3;
        baseFragment = this.this$0.fragment;
        baseFragment2 = this.this$0.fragment;
        baseFragment3 = this.this$0.fragment;
        baseFragment.showDialog(AlertsCreator.createSupportAlert(baseFragment2, baseFragment3.getResourceProvider()));
    }
}
