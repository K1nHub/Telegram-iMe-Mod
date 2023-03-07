package org.fork.p046ui.fragment;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.Components.RecyclerListView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RecentChatsDialogTypesSettingsActivity.kt */
/* renamed from: org.fork.ui.fragment.RecentChatsDialogTypesSettingsActivity$listView$2 */
/* loaded from: classes4.dex */
public final class RecentChatsDialogTypesSettingsActivity$listView$2 extends Lambda implements Function0<RecyclerListView> {
    final /* synthetic */ RecentChatsDialogTypesSettingsActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecentChatsDialogTypesSettingsActivity$listView$2(RecentChatsDialogTypesSettingsActivity recentChatsDialogTypesSettingsActivity) {
        super(0);
        this.this$0 = recentChatsDialogTypesSettingsActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final RecyclerListView invoke() {
        RecyclerListView initListView;
        initListView = this.this$0.initListView();
        return initListView;
    }
}
