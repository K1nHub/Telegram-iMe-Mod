package com.iMe.fork.p024ui.view;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import com.iMe.p031ui.topics.TopicView;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p043ui.Components.LayoutHelper;
/* compiled from: ArchiveSwitchTopicsBar.kt */
/* renamed from: com.iMe.fork.ui.view.ArchiveSwitchTopicsBar */
/* loaded from: classes3.dex */
public final class ArchiveSwitchTopicsBar extends LinearLayout {
    private final Lazy archiveTopic$delegate;
    private boolean currentArchive;
    private final Function1<Boolean, Unit> delegate;
    private final Lazy mainTopic$delegate;

    public final Function1<Boolean, Unit> getDelegate() {
        return this.delegate;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ArchiveSwitchTopicsBar(Context context, boolean z, Function1<? super Boolean, Unit> delegate) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.currentArchive = z;
        this.delegate = delegate;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<TopicView>() { // from class: com.iMe.fork.ui.view.ArchiveSwitchTopicsBar$mainTopic$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TopicView invoke() {
                TopicView initTopic;
                initTopic = ArchiveSwitchTopicsBar.this.initTopic(false);
                return initTopic;
            }
        });
        this.mainTopic$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<TopicView>() { // from class: com.iMe.fork.ui.view.ArchiveSwitchTopicsBar$archiveTopic$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TopicView invoke() {
                TopicView initTopic;
                initTopic = ArchiveSwitchTopicsBar.this.initTopic(true);
                return initTopic;
            }
        });
        this.archiveTopic$delegate = lazy2;
        setGravity(17);
        addView(getMainTopic(), LayoutHelper.createLinear(-2, -1));
        addView(getArchiveTopic(), LayoutHelper.createLinear(-2, -1));
        updateSelectedTopicAndColors();
    }

    private final TopicView getMainTopic() {
        return (TopicView) this.mainTopic$delegate.getValue();
    }

    private final TopicView getArchiveTopic() {
        return (TopicView) this.archiveTopic$delegate.getValue();
    }

    public final void updateSelectedTopicAndColors() {
        getMainTopic().setArchive(false, !this.currentArchive);
        getArchiveTopic().setArchive(true, this.currentArchive);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TopicView initTopic(final boolean z) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        TopicView topicView = new TopicView(context, null, 0, 16, 6, null);
        topicView.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.view.ArchiveSwitchTopicsBar$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ArchiveSwitchTopicsBar.initTopic$lambda$1$lambda$0(ArchiveSwitchTopicsBar.this, z, view);
            }
        });
        return topicView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initTopic$lambda$1$lambda$0(ArchiveSwitchTopicsBar this$0, boolean z, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.currentArchive == z) {
            return;
        }
        this$0.currentArchive = z;
        this$0.delegate.invoke(Boolean.valueOf(z));
        this$0.updateSelectedTopicAndColors();
    }
}
