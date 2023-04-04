package com.iMe.p032ui.topics;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.ActionBar.SimpleTextView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TopicProfileCell.kt */
/* renamed from: com.iMe.ui.topics.TopicProfileCell$selectTopicTextView$2 */
/* loaded from: classes3.dex */
public final class TopicProfileCell$selectTopicTextView$2 extends Lambda implements Function0<SimpleTextView> {
    final /* synthetic */ TopicProfileCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicProfileCell$selectTopicTextView$2(TopicProfileCell topicProfileCell) {
        super(0);
        this.this$0 = topicProfileCell;
    }

    @Override // kotlin.jvm.functions.Function0
    public final SimpleTextView invoke() {
        SimpleTextView initSelectTopicTextView;
        initSelectTopicTextView = this.this$0.initSelectTopicTextView();
        return initSelectTopicTextView;
    }
}
