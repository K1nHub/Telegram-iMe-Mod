package org.fork.p046ui.fragment;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.fork.enums.DialogType;
import org.fork.p046ui.fragment.MultiPanelSettingsActivity;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MultiPanelSettingsActivity.kt */
/* renamed from: org.fork.ui.fragment.MultiPanelSettingsActivity$ListAdapter$onCreateViewHolder$1 */
/* loaded from: classes4.dex */
public final class MultiPanelSettingsActivity$ListAdapter$onCreateViewHolder$1 extends Lambda implements Function1<DialogType, Unit> {
    final /* synthetic */ MultiPanelSettingsActivity this$0;
    final /* synthetic */ MultiPanelSettingsActivity.ListAdapter this$1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MultiPanelSettingsActivity$ListAdapter$onCreateViewHolder$1(MultiPanelSettingsActivity multiPanelSettingsActivity, MultiPanelSettingsActivity.ListAdapter listAdapter) {
        super(1);
        this.this$0 = multiPanelSettingsActivity;
        this.this$1 = listAdapter;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(DialogType dialogType) {
        Intrinsics.checkNotNullParameter(dialogType, "dialogType");
        this.this$0.setCurrentDialogType(dialogType);
        this.this$1.updateRows();
        this.this$0.getListAdapter().notifyDataSetChanged();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DialogType dialogType) {
        invoke2(dialogType);
        return Unit.INSTANCE;
    }
}
