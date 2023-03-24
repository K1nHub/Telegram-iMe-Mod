package org.fork.p046ui.dialog;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.browser.Browser;
/* compiled from: SettingsHelpBottomSheet.kt */
/* renamed from: org.fork.ui.dialog.SettingsHelpBottomSheet$items$6 */
/* loaded from: classes4.dex */
final class SettingsHelpBottomSheet$items$6 extends Lambda implements Function0<Unit> {
    final /* synthetic */ SettingsHelpBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsHelpBottomSheet$items$6(SettingsHelpBottomSheet settingsHelpBottomSheet) {
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
        Browser.openUrl(this.this$0.getContext(), LocaleController.getInternalString(C3301R.string.PrivacyPolicyUrl));
    }
}
