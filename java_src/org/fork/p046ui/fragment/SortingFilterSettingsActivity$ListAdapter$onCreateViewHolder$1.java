package org.fork.p046ui.fragment;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.fork.p046ui.fragment.SortingFilterSettingsActivity;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SortingFilterSettingsActivity.kt */
/* renamed from: org.fork.ui.fragment.SortingFilterSettingsActivity$ListAdapter$onCreateViewHolder$1 */
/* loaded from: classes4.dex */
public final class SortingFilterSettingsActivity$ListAdapter$onCreateViewHolder$1 extends Lambda implements Function1<Boolean, Unit> {
    final /* synthetic */ SortingFilterSettingsActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SortingFilterSettingsActivity$ListAdapter$onCreateViewHolder$1(SortingFilterSettingsActivity sortingFilterSettingsActivity) {
        super(1);
        this.this$0 = sortingFilterSettingsActivity;
    }

    public final void invoke(boolean z) {
        this.this$0.setCurrentArchive(z);
        SortingFilterSettingsActivity.ListAdapter listAdapter = this.this$0.getListAdapter();
        listAdapter.updateRows();
        listAdapter.notifyDataSetChanged();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
        invoke(bool.booleanValue());
        return Unit.INSTANCE;
    }
}
