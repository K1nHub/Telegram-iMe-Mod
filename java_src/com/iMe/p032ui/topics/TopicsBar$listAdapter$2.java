package com.iMe.p032ui.topics;

import com.iMe.p032ui.topics.TopicsBar;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: TopicsBar.kt */
/* renamed from: com.iMe.ui.topics.TopicsBar$listAdapter$2 */
/* loaded from: classes3.dex */
final class TopicsBar$listAdapter$2 extends Lambda implements Function0<TopicsBar.ListAdapter> {
    final /* synthetic */ TopicsBar this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicsBar$listAdapter$2(TopicsBar topicsBar) {
        super(0);
        this.this$0 = topicsBar;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TopicsBar.ListAdapter invoke() {
        return new TopicsBar.ListAdapter();
    }
}
