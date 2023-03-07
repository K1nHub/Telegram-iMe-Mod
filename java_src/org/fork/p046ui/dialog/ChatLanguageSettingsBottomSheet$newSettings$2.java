package org.fork.p046ui.dialog;

import com.smedialink.storage.domain.model.dialogs.DialogTranslationSettings;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: ChatLanguageSettingsBottomSheet.kt */
/* renamed from: org.fork.ui.dialog.ChatLanguageSettingsBottomSheet$newSettings$2 */
/* loaded from: classes4.dex */
final class ChatLanguageSettingsBottomSheet$newSettings$2 extends Lambda implements Function0<DialogTranslationSettings> {
    final /* synthetic */ DialogTranslationSettings $translationSettings;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatLanguageSettingsBottomSheet$newSettings$2(DialogTranslationSettings dialogTranslationSettings) {
        super(0);
        this.$translationSettings = dialogTranslationSettings;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final DialogTranslationSettings invoke() {
        DialogTranslationSettings copy;
        copy = r0.copy((r20 & 1) != 0 ? r0.isInTextTranslateEnabled : false, (r20 & 2) != 0 ? r0.inTextTranslateLangCode : null, (r20 & 4) != 0 ? r0.isOutTextTranslateEnabled : false, (r20 & 8) != 0 ? r0.outTextTranslateLangCode : null, (r20 & 16) != 0 ? r0.dialogId : 0L, (r20 & 32) != 0 ? r0.isEnabled : false, (r20 & 64) != 0 ? r0.incomingTargetLanguageCode : null, (r20 & 128) != 0 ? this.$translationSettings.outgoingTargetLanguageCode : null);
        return copy;
    }
}
