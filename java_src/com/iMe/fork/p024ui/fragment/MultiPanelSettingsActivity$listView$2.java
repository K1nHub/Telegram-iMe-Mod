package com.iMe.fork.p024ui.fragment;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p044ui.Components.RecyclerListView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MultiPanelSettingsActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.MultiPanelSettingsActivity$listView$2 */
/* loaded from: classes3.dex */
public final class MultiPanelSettingsActivity$listView$2 extends Lambda implements Function0<RecyclerListView> {
    final /* synthetic */ MultiPanelSettingsActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MultiPanelSettingsActivity$listView$2(MultiPanelSettingsActivity multiPanelSettingsActivity) {
        super(0);
        this.this$0 = multiPanelSettingsActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final RecyclerListView invoke() {
        RecyclerListView initListView;
        initListView = this.this$0.initListView();
        return initListView;
    }
}