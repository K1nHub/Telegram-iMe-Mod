package org.fork.p046ui.fragment;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.fork.enums.DialogType;
import org.fork.p046ui.fragment.ChatAttachAlertButtonsSettingsActivity;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ChatAttachAlertButtonsSettingsActivity.kt */
/* renamed from: org.fork.ui.fragment.ChatAttachAlertButtonsSettingsActivity$ListAdapter$onCreateViewHolder$1 */
/* loaded from: classes4.dex */
public final class C3157xcb29bd9c extends Lambda implements Function1<DialogType, Unit> {
    final /* synthetic */ ChatAttachAlertButtonsSettingsActivity this$0;
    final /* synthetic */ ChatAttachAlertButtonsSettingsActivity.ListAdapter this$1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3157xcb29bd9c(ChatAttachAlertButtonsSettingsActivity chatAttachAlertButtonsSettingsActivity, ChatAttachAlertButtonsSettingsActivity.ListAdapter listAdapter) {
        super(1);
        this.this$0 = chatAttachAlertButtonsSettingsActivity;
        this.this$1 = listAdapter;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(DialogType dialogType) {
        ChatAttachAlertButtonsSettingsActivity.ListAdapter listAdapter;
        Intrinsics.checkNotNullParameter(dialogType, "dialogType");
        this.this$0.setCurrentDialogType(dialogType);
        this.this$1.updateRows();
        listAdapter = this.this$0.getListAdapter();
        listAdapter.notifyDataSetChanged();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DialogType dialogType) {
        invoke2(dialogType);
        return Unit.INSTANCE;
    }
}
