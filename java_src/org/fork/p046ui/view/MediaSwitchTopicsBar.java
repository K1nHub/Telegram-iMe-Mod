package org.fork.p046ui.view;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import com.smedialink.p031ui.topics.TopicView;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p048ui.Components.LayoutHelper;
/* compiled from: MediaSwitchTopicsBar.kt */
/* renamed from: org.fork.ui.view.MediaSwitchTopicsBar */
/* loaded from: classes4.dex */
public final class MediaSwitchTopicsBar extends LinearLayout {
    private boolean currentMessagesContextMenu;
    private final Function1<Boolean, Unit> delegate;
    private final Lazy mediaTopic$delegate;
    private final Lazy messagesTopic$delegate;

    static {
        new Companion(null);
    }

    public final boolean getCurrentMessagesContextMenu() {
        return this.currentMessagesContextMenu;
    }

    public final void setCurrentMessagesContextMenu(boolean z) {
        this.currentMessagesContextMenu = z;
    }

    public final Function1<Boolean, Unit> getDelegate() {
        return this.delegate;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public MediaSwitchTopicsBar(Context context, boolean z, Function1<? super Boolean, Unit> delegate) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.currentMessagesContextMenu = z;
        this.delegate = delegate;
        lazy = LazyKt__LazyJVMKt.lazy(new MediaSwitchTopicsBar$mediaTopic$2(this));
        this.mediaTopic$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new MediaSwitchTopicsBar$messagesTopic$2(this));
        this.messagesTopic$delegate = lazy2;
        setGravity(17);
        addView(getMessagesTopic(), LayoutHelper.createLinear(-2, 24, 8, 6, 8, 6));
        addView(getMediaTopic(), LayoutHelper.createLinear(-2, 24, 8, 6, 8, 6));
        updateSelectedTopicAndColors();
    }

    private final TopicView getMediaTopic() {
        return (TopicView) this.mediaTopic$delegate.getValue();
    }

    private final TopicView getMessagesTopic() {
        return (TopicView) this.messagesTopic$delegate.getValue();
    }

    public final void updateSelectedTopicAndColors() {
        getMessagesTopic().setMessagesContextMenu(true, this.currentMessagesContextMenu);
        getMediaTopic().setMessagesContextMenu(false, !this.currentMessagesContextMenu);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TopicView initTopic(final boolean z) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        TopicView topicView = new TopicView(context, null, 0, 16, 6, null);
        topicView.setOnClickListener(new View.OnClickListener() { // from class: org.fork.ui.view.MediaSwitchTopicsBar$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MediaSwitchTopicsBar.initTopic$lambda$1$lambda$0(MediaSwitchTopicsBar.this, z, view);
            }
        });
        return topicView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initTopic$lambda$1$lambda$0(MediaSwitchTopicsBar this$0, boolean z, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.currentMessagesContextMenu == z) {
            return;
        }
        this$0.currentMessagesContextMenu = z;
        this$0.delegate.invoke(Boolean.valueOf(z));
        this$0.updateSelectedTopicAndColors();
    }

    /* compiled from: MediaSwitchTopicsBar.kt */
    /* renamed from: org.fork.ui.view.MediaSwitchTopicsBar$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
