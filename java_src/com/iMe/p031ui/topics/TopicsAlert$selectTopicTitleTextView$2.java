package com.iMe.p031ui.topics;

import android.widget.TextView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TopicsAlert.kt */
/* renamed from: com.iMe.ui.topics.TopicsAlert$selectTopicTitleTextView$2 */
/* loaded from: classes3.dex */
public final class TopicsAlert$selectTopicTitleTextView$2 extends Lambda implements Function0<TextView> {
    final /* synthetic */ TopicsAlert this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicsAlert$selectTopicTitleTextView$2(TopicsAlert topicsAlert) {
        super(0);
        this.this$0 = topicsAlert;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TextView invoke() {
        TextView initSelectTopicTitleTextView;
        initSelectTopicTitleTextView = this.this$0.initSelectTopicTitleTextView();
        return initSelectTopicTitleTextView;
    }
}