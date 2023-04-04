package com.iMe.p032ui.topics;

import com.iMe.storage.domain.model.topics.TopicModel;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: TopicsAlert.kt */
/* renamed from: com.iMe.ui.topics.TopicsAlert$topics$2 */
/* loaded from: classes3.dex */
final class TopicsAlert$topics$2 extends Lambda implements Function0<List<? extends TopicModel>> {
    final /* synthetic */ TopicsAlert this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicsAlert$topics$2(TopicsAlert topicsAlert) {
        super(0);
        this.this$0 = topicsAlert;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends TopicModel> invoke() {
        return this.this$0.getParentFragment().getTopicsController().getAlertTopics();
    }
}
