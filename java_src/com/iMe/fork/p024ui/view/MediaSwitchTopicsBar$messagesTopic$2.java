package com.iMe.fork.p024ui.view;

import com.iMe.p031ui.topics.TopicView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MediaSwitchTopicsBar.kt */
/* renamed from: com.iMe.fork.ui.view.MediaSwitchTopicsBar$messagesTopic$2 */
/* loaded from: classes3.dex */
public final class MediaSwitchTopicsBar$messagesTopic$2 extends Lambda implements Function0<TopicView> {
    final /* synthetic */ MediaSwitchTopicsBar this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaSwitchTopicsBar$messagesTopic$2(MediaSwitchTopicsBar mediaSwitchTopicsBar) {
        super(0);
        this.this$0 = mediaSwitchTopicsBar;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TopicView invoke() {
        TopicView initTopic;
        initTopic = this.this$0.initTopic(true);
        return initTopic;
    }
}