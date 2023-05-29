package com.iMe.fork.p024ui.fragment;

import com.iMe.fork.enums.DialogType;
import com.iMe.fork.p024ui.fragment.ChatAttachAlertButtonsSettingsActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ChatAttachAlertButtonsSettingsActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.ChatAttachAlertButtonsSettingsActivity$ListAdapter$onCreateViewHolder$1 */
/* loaded from: classes3.dex */
public final class C1512xcb29bd9c extends Lambda implements Function1<DialogType, Unit> {
    final /* synthetic */ ChatAttachAlertButtonsSettingsActivity this$0;
    final /* synthetic */ ChatAttachAlertButtonsSettingsActivity.ListAdapter this$1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1512xcb29bd9c(ChatAttachAlertButtonsSettingsActivity chatAttachAlertButtonsSettingsActivity, ChatAttachAlertButtonsSettingsActivity.ListAdapter listAdapter) {
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
