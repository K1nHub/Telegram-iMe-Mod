package com.iMe.p032ui.topics;

import android.content.Context;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: TopicProfileCell.kt */
/* renamed from: com.iMe.ui.topics.TopicProfileCell$topicView$2 */
/* loaded from: classes3.dex */
final class TopicProfileCell$topicView$2 extends Lambda implements Function0<TopicView> {
    final /* synthetic */ Context $context;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicProfileCell$topicView$2(Context context) {
        super(0);
        this.$context = context;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TopicView invoke() {
        return new TopicView(this.$context, null, 0, 0, 14, null);
    }
}
