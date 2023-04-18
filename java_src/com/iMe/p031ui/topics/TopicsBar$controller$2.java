package com.iMe.p031ui.topics;

import com.iMe.fork.controller.ForkTopicsController;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TopicsBar.kt */
/* renamed from: com.iMe.ui.topics.TopicsBar$controller$2 */
/* loaded from: classes3.dex */
public final class TopicsBar$controller$2 extends Lambda implements Function0<ForkTopicsController> {
    final /* synthetic */ TopicsBar this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicsBar$controller$2(TopicsBar topicsBar) {
        super(0);
        this.this$0 = topicsBar;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ForkTopicsController invoke() {
        return ForkTopicsController.Companion.getInstance(this.this$0.currentAccount);
    }
}
