package com.smedialink.p031ui.topics;

import android.widget.ImageView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TopicProfileCell.kt */
/* renamed from: com.smedialink.ui.topics.TopicProfileCell$deleteImageView$2 */
/* loaded from: classes3.dex */
public final class TopicProfileCell$deleteImageView$2 extends Lambda implements Function0<ImageView> {
    final /* synthetic */ TopicProfileCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicProfileCell$deleteImageView$2(TopicProfileCell topicProfileCell) {
        super(0);
        this.this$0 = topicProfileCell;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ImageView invoke() {
        ImageView initDeleteImageView;
        initDeleteImageView = this.this$0.initDeleteImageView();
        return initDeleteImageView;
    }
}
