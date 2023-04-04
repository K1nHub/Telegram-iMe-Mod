package com.iMe.fork.p025ui.view;

import com.iMe.p032ui.topics.TopicView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ArchiveSwitchTopicsBar.kt */
/* renamed from: com.iMe.fork.ui.view.ArchiveSwitchTopicsBar$archiveTopic$2 */
/* loaded from: classes3.dex */
public final class ArchiveSwitchTopicsBar$archiveTopic$2 extends Lambda implements Function0<TopicView> {
    final /* synthetic */ ArchiveSwitchTopicsBar this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ArchiveSwitchTopicsBar$archiveTopic$2(ArchiveSwitchTopicsBar archiveSwitchTopicsBar) {
        super(0);
        this.this$0 = archiveSwitchTopicsBar;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TopicView invoke() {
        TopicView initTopic;
        initTopic = this.this$0.initTopic(true);
        return initTopic;
    }
}
