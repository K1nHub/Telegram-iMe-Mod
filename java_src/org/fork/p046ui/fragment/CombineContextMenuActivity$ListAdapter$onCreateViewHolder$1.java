package org.fork.p046ui.fragment;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.fork.p046ui.fragment.CombineContextMenuActivity;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CombineContextMenuActivity.kt */
/* renamed from: org.fork.ui.fragment.CombineContextMenuActivity$ListAdapter$onCreateViewHolder$1 */
/* loaded from: classes4.dex */
public final class CombineContextMenuActivity$ListAdapter$onCreateViewHolder$1 extends Lambda implements Function1<Boolean, Unit> {
    final /* synthetic */ CombineContextMenuActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombineContextMenuActivity$ListAdapter$onCreateViewHolder$1(CombineContextMenuActivity combineContextMenuActivity) {
        super(1);
        this.this$0 = combineContextMenuActivity;
    }

    public final void invoke(boolean z) {
        CombineContextMenuActivity.ListAdapter listAdapter;
        this.this$0.setCurrentMessagesContextMenu(z);
        listAdapter = this.this$0.getListAdapter();
        listAdapter.updateRows();
        listAdapter.notifyDataSetChanged();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
        invoke(bool.booleanValue());
        return Unit.INSTANCE;
    }
}
