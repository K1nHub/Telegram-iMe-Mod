package com.smedialink.p031ui.topics;

import android.widget.TextView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TopicView.kt */
/* renamed from: com.smedialink.ui.topics.TopicView$nameTextView$2 */
/* loaded from: classes3.dex */
public final class TopicView$nameTextView$2 extends Lambda implements Function0<TextView> {
    final /* synthetic */ TopicView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicView$nameTextView$2(TopicView topicView) {
        super(0);
        this.this$0 = topicView;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TextView invoke() {
        TextView initNameTextView;
        initNameTextView = this.this$0.initNameTextView();
        return initNameTextView;
    }
}
