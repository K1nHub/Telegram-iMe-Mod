package org.fork.p046ui.dialog;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.fork.p046ui.dialog.ChatLanguageSettingsBottomSheet;
/* compiled from: ChatLanguageSettingsBottomSheet.kt */
/* renamed from: org.fork.ui.dialog.ChatLanguageSettingsBottomSheet$listAdapter$2 */
/* loaded from: classes4.dex */
final class ChatLanguageSettingsBottomSheet$listAdapter$2 extends Lambda implements Function0<ChatLanguageSettingsBottomSheet.ListAdapter> {
    final /* synthetic */ ChatLanguageSettingsBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatLanguageSettingsBottomSheet$listAdapter$2(ChatLanguageSettingsBottomSheet chatLanguageSettingsBottomSheet) {
        super(0);
        this.this$0 = chatLanguageSettingsBottomSheet;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ChatLanguageSettingsBottomSheet.ListAdapter invoke() {
        return new ChatLanguageSettingsBottomSheet.ListAdapter(this.this$0);
    }
}
