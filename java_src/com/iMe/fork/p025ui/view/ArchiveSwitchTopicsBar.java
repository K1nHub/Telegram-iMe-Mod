package com.iMe.fork.p025ui.view;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import com.iMe.p032ui.topics.TopicView;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p048ui.Components.LayoutHelper;
/* compiled from: ArchiveSwitchTopicsBar.kt */
/* renamed from: com.iMe.fork.ui.view.ArchiveSwitchTopicsBar */
/* loaded from: classes3.dex */
public final class ArchiveSwitchTopicsBar extends LinearLayout {
    private final Lazy archiveTopic$delegate;
    private boolean currentArchive;
    private final Function1<Boolean, Unit> delegate;
    private final Lazy mainTopic$delegate;

    static {
        new Companion(null);
    }

    public final boolean getCurrentArchive() {
        return this.currentArchive;
    }

    public final void setCurrentArchive(boolean z) {
        this.currentArchive = z;
    }

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
        lazy = LazyKt__LazyJVMKt.lazy(new ArchiveSwitchTopicsBar$mainTopic$2(this));
        this.mainTopic$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new ArchiveSwitchTopicsBar$archiveTopic$2(this));
        this.archiveTopic$delegate = lazy2;
        setGravity(17);
        addView(getMainTopic(), LayoutHelper.createLinear(-2, 24, 8, 6, 8, 6));
        addView(getArchiveTopic(), LayoutHelper.createLinear(-2, 24, 8, 6, 8, 6));
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

    /* compiled from: ArchiveSwitchTopicsBar.kt */
    /* renamed from: com.iMe.fork.ui.view.ArchiveSwitchTopicsBar$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
