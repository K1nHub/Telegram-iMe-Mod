package com.iMe.fork.p024ui.dialog;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.browser.Browser;
/* compiled from: SettingsHelpBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.SettingsHelpBottomSheet$items$5 */
/* loaded from: classes3.dex */
final class SettingsHelpBottomSheet$items$5 extends Lambda implements Function0<Unit> {
    final /* synthetic */ SettingsHelpBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsHelpBottomSheet$items$5(SettingsHelpBottomSheet settingsHelpBottomSheet) {
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
        Browser.openUrl(this.this$0.getContext(), LocaleController.getInternalString(C3417R.string.settings_help_alert_faq_url));
    }
}
