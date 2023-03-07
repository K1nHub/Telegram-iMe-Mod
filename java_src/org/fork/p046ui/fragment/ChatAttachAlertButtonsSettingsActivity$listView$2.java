package org.fork.p046ui.fragment;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.Components.RecyclerListView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ChatAttachAlertButtonsSettingsActivity.kt */
/* renamed from: org.fork.ui.fragment.ChatAttachAlertButtonsSettingsActivity$listView$2 */
/* loaded from: classes4.dex */
public final class ChatAttachAlertButtonsSettingsActivity$listView$2 extends Lambda implements Function0<RecyclerListView> {
    final /* synthetic */ ChatAttachAlertButtonsSettingsActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatAttachAlertButtonsSettingsActivity$listView$2(ChatAttachAlertButtonsSettingsActivity chatAttachAlertButtonsSettingsActivity) {
        super(0);
        this.this$0 = chatAttachAlertButtonsSettingsActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final RecyclerListView invoke() {
        RecyclerListView initListView;
        initListView = this.this$0.initListView();
        return initListView;
    }
}
