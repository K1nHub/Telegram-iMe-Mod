package com.iMe.p031ui.topics;

import android.widget.LinearLayout;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TopicView.kt */
/* renamed from: com.iMe.ui.topics.TopicView$ovalLayout$2 */
/* loaded from: classes3.dex */
public final class TopicView$ovalLayout$2 extends Lambda implements Function0<LinearLayout> {
    final /* synthetic */ TopicView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicView$ovalLayout$2(TopicView topicView) {
        super(0);
        this.this$0 = topicView;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final LinearLayout invoke() {
        LinearLayout initOvalLayout;
        initOvalLayout = this.this$0.initOvalLayout();
        return initOvalLayout;
    }
}
