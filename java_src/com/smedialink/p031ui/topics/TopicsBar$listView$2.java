package com.smedialink.p031ui.topics;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.Components.RecyclerListView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TopicsBar.kt */
/* renamed from: com.smedialink.ui.topics.TopicsBar$listView$2 */
/* loaded from: classes3.dex */
public final class TopicsBar$listView$2 extends Lambda implements Function0<RecyclerListView> {
    final /* synthetic */ TopicsBar this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicsBar$listView$2(TopicsBar topicsBar) {
        super(0);
        this.this$0 = topicsBar;
    }

    @Override // kotlin.jvm.functions.Function0
    public final RecyclerListView invoke() {
        RecyclerListView initListView;
        initListView = this.this$0.initListView();
        return initListView;
    }
}
