package com.iMe.p031ui.topics;

import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.controller.ForkTopicsController;
import com.iMe.p031ui.topics.TopicsBar;
import com.iMe.storage.domain.model.topics.TopicModel;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RecyclerListView;
/* compiled from: TopicsBar.kt */
/* renamed from: com.iMe.ui.topics.TopicsBar */
/* loaded from: classes6.dex */
public final class TopicsBar extends FrameLayout {
    private final Lazy controller$delegate;
    private final int currentAccount;
    private final List<TopicModel> data;
    private final Delegate delegate;
    private float editingAnimationProgress;
    private boolean editingForwardAnimation;
    private boolean isEditing;
    private long lastEditingAnimationTime;
    private final Lazy listAdapter$delegate;
    private final Lazy listView$delegate;
    private long selectedTopicId;

    /* compiled from: TopicsBar.kt */
    /* renamed from: com.iMe.ui.topics.TopicsBar$Delegate */
    /* loaded from: classes6.dex */
    public interface Delegate {
        boolean canPerformActions();

        boolean isTabMenuVisible();

        void onTopicClick(long j);

        boolean onTopicLongClick(TopicView topicView);
    }

    public final Delegate getDelegate() {
        return this.delegate;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicsBar(Context context, Delegate delegate) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Intrinsics.checkNotNullParameter(context, "context");
        this.delegate = delegate;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<RecyclerListView>() { // from class: com.iMe.ui.topics.TopicsBar$listView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final RecyclerListView invoke() {
                RecyclerListView initListView;
                initListView = TopicsBar.this.initListView();
                return initListView;
            }
        });
        this.listView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<ListAdapter>() { // from class: com.iMe.ui.topics.TopicsBar$listAdapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TopicsBar.ListAdapter invoke() {
                return new TopicsBar.ListAdapter();
            }
        });
        this.listAdapter$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<ForkTopicsController>() { // from class: com.iMe.ui.topics.TopicsBar$controller$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ForkTopicsController invoke() {
                return ForkTopicsController.Companion.getInstance(TopicsBar.this.currentAccount);
            }
        });
        this.controller$delegate = lazy3;
        this.data = new ArrayList();
        this.selectedTopicId = -1L;
        this.currentAccount = UserConfig.selectedAccount;
        addView(getListView(), LayoutHelper.createFrame(-1, -1));
        setupListeners();
    }

    public final RecyclerListView getListView() {
        return (RecyclerListView) this.listView$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ListAdapter getListAdapter() {
        return (ListAdapter) this.listAdapter$delegate.getValue();
    }

    private final ForkTopicsController getController() {
        return (ForkTopicsController) this.controller$delegate.getValue();
    }

    public final boolean setData(List<TopicModel> newData) {
        boolean z;
        Intrinsics.checkNotNullParameter(newData, "newData");
        boolean z2 = true;
        boolean z3 = newData.size() + 1 != this.data.size();
        this.data.clear();
        this.data.addAll(newData);
        TopicModel createNewTopic = getController().createNewTopic(null, -2L, 0);
        if (getController().isNoTopicFirstEnabled()) {
            this.data.add(0, createNewTopic);
        } else {
            this.data.add(createNewTopic);
        }
        List<TopicModel> list = this.data;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (((TopicModel) it.next()).getTopicId() != this.selectedTopicId) {
                    z = true;
                    continue;
                } else {
                    z = false;
                    continue;
                }
                if (!z) {
                    z2 = false;
                    break;
                }
            }
        }
        if (z2) {
            resetSelectedTopic();
        }
        notifyDataSetChanged();
        return z3;
    }

    public final void setSelectedTopicId(long j) {
        this.selectedTopicId = j;
    }

    public final void resetSelectedTopic() {
        if (this.selectedTopicId == -1) {
            return;
        }
        this.selectedTopicId = -1L;
        Delegate delegate = this.delegate;
        Intrinsics.checkNotNull(delegate);
        delegate.onTopicClick(this.selectedTopicId);
    }

    public final boolean allowReorder() {
        return this.data.size() > 2;
    }

    public final boolean isEditing() {
        return this.isEditing;
    }

    public final void notifyDataSetChanged() {
        getListAdapter().notifyDataSetChanged();
    }

    public final void setEditing(boolean z) {
        this.isEditing = z;
        this.editingForwardAnimation = true;
        getListView().invalidateViews();
        invalidate();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        getParent().requestDisallowInterceptTouchEvent(true);
        return super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0082  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean drawChild(android.graphics.Canvas r7, android.view.View r8, long r9) {
        /*
            r6 = this;
            java.lang.String r0 = "canvas"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.lang.String r0 = "child"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            boolean r7 = super.drawChild(r7, r8, r9)
            long r8 = android.os.SystemClock.elapsedRealtime()
            long r0 = r6.lastEditingAnimationTime
            long r0 = r8 - r0
            r2 = 17
            long r0 = java.lang.Math.min(r2, r0)
            r6.lastEditingAnimationTime = r8
            boolean r8 = r6.isEditing
            r9 = 1
            r10 = 0
            r2 = 0
            if (r8 != 0) goto L33
            float r3 = r6.editingAnimationProgress
            int r3 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r3 != 0) goto L2d
            r3 = r9
            goto L2e
        L2d:
            r3 = r10
        L2e:
            if (r3 != 0) goto L31
            goto L33
        L31:
            r9 = r10
            goto L80
        L33:
            boolean r3 = r6.editingForwardAnimation
            r4 = 1123024896(0x42f00000, float:120.0)
            if (r3 == 0) goto L5e
            float r3 = r6.editingAnimationProgress
            int r5 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r5 > 0) goto L41
            r5 = r9
            goto L42
        L41:
            r5 = r10
        L42:
            float r0 = (float) r0
            float r0 = r0 / r4
            float r3 = r3 + r0
            r6.editingAnimationProgress = r3
            if (r8 != 0) goto L51
            if (r5 == 0) goto L51
            int r8 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r8 < 0) goto L51
            r6.editingAnimationProgress = r2
        L51:
            float r8 = r6.editingAnimationProgress
            r0 = 1065353216(0x3f800000, float:1.0)
            int r8 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r8 < 0) goto L80
            r6.editingAnimationProgress = r0
            r6.editingForwardAnimation = r10
            goto L80
        L5e:
            float r3 = r6.editingAnimationProgress
            int r5 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r5 < 0) goto L65
            r10 = r9
        L65:
            float r0 = (float) r0
            float r0 = r0 / r4
            float r3 = r3 - r0
            r6.editingAnimationProgress = r3
            if (r8 != 0) goto L74
            if (r10 == 0) goto L74
            int r8 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r8 > 0) goto L74
            r6.editingAnimationProgress = r2
        L74:
            float r8 = r6.editingAnimationProgress
            r10 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r8 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r8 > 0) goto L80
            r6.editingAnimationProgress = r10
            r6.editingForwardAnimation = r9
        L80:
            if (r9 == 0) goto L8c
            org.telegram.ui.Components.RecyclerListView r8 = r6.getListView()
            r8.invalidateViews()
            r6.invalidate()
        L8c:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.topics.TopicsBar.drawChild(android.graphics.Canvas, android.view.View, long):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecyclerListView initListView() {
        final RecyclerListView recyclerListView = new RecyclerListView(getContext());
        recyclerListView.setClipToPadding(false);
        recyclerListView.setClipChildren(false);
        final Context context = recyclerListView.getContext();
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context) { // from class: com.iMe.ui.topics.TopicsBar$initListView$1$1
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return true;
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                Intrinsics.checkNotNullParameter(state, "state");
                Context context2 = recyclerView.getContext();
                final RecyclerListView recyclerListView2 = RecyclerListView.this;
                LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(context2) { // from class: com.iMe.ui.topics.TopicsBar$initListView$1$1$smoothScrollToPosition$linearSmoothScroller$1
                    @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
                    protected void onTargetFound(View targetView, RecyclerView.State state2, RecyclerView.SmoothScroller.Action action) {
                        Intrinsics.checkNotNullParameter(targetView, "targetView");
                        Intrinsics.checkNotNullParameter(state2, "state");
                        Intrinsics.checkNotNullParameter(action, "action");
                        int calculateDxToMakeVisible = calculateDxToMakeVisible(targetView, getHorizontalSnapPreference());
                        if (calculateDxToMakeVisible > 0 || (calculateDxToMakeVisible == 0 && targetView.getLeft() - AndroidUtilities.m72dp(21) < 0)) {
                            calculateDxToMakeVisible += AndroidUtilities.m72dp(60);
                        } else if (calculateDxToMakeVisible < 0 || targetView.getRight() + AndroidUtilities.m72dp(21) > RecyclerListView.this.getMeasuredWidth()) {
                            calculateDxToMakeVisible -= AndroidUtilities.m72dp(60);
                        }
                        int calculateDyToMakeVisible = calculateDyToMakeVisible(targetView, getVerticalSnapPreference());
                        int max = Math.max(180, calculateTimeForDeceleration((int) Math.sqrt((calculateDxToMakeVisible * calculateDxToMakeVisible) + (calculateDyToMakeVisible * calculateDyToMakeVisible))));
                        if (max > 0) {
                            action.update(-calculateDxToMakeVisible, -calculateDyToMakeVisible, max, this.mDecelerateInterpolator);
                        }
                    }
                };
                linearSmoothScroller.setTargetPosition(i);
                startSmoothScroll(linearSmoothScroller);
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
                Intrinsics.checkNotNullParameter(recycler, "recycler");
                Intrinsics.checkNotNullParameter(state, "state");
                TopicsBar.Delegate delegate = this.getDelegate();
                Intrinsics.checkNotNull(delegate);
                if (delegate.isTabMenuVisible()) {
                    i = 0;
                }
                return super.scrollHorizontallyBy(i, recycler, state);
            }
        };
        recyclerListView.setLayoutManager(linearLayoutManager);
        recyclerListView.setLayoutManager(linearLayoutManager);
        recyclerListView.setAdapter(getListAdapter());
        ViewExtKt.setHorizontalPadding(recyclerListView, 7);
        new ItemTouchHelper(new TouchHelperCallback()).attachToRecyclerView(recyclerListView);
        recyclerListView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.iMe.ui.topics.TopicsBar$initListView$1$3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                RecyclerListView.this.invalidate();
            }
        });
        return recyclerListView;
    }

    private final void setupListeners() {
        getListView().setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: com.iMe.ui.topics.TopicsBar$$ExternalSyntheticLambda0
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                TopicsBar.setupListeners$lambda$3(TopicsBar.this, view, i);
            }
        });
        getListView().setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: com.iMe.ui.topics.TopicsBar$$ExternalSyntheticLambda1
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i) {
                boolean z;
                z = TopicsBar.setupListeners$lambda$4(TopicsBar.this, view, i);
                return z;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$3(TopicsBar this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Delegate delegate = this$0.delegate;
        Intrinsics.checkNotNull(delegate);
        if (!delegate.canPerformActions() || this$0.isEditing) {
            return;
        }
        TopicModel topicModel = this$0.data.get(i);
        long topicId = topicModel.getTopicId() == this$0.selectedTopicId ? -1L : topicModel.getTopicId();
        this$0.selectedTopicId = topicId;
        this$0.delegate.onTopicClick(topicId);
        this$0.getListView().smoothScrollToPosition(i);
        this$0.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean setupListeners$lambda$4(TopicsBar this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Delegate delegate = this$0.delegate;
        Intrinsics.checkNotNull(delegate);
        return delegate.canPerformActions() && !this$0.isEditing && this$0.delegate.onTopicLongClick((TopicView) view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TopicsBar.kt */
    /* renamed from: com.iMe.ui.topics.TopicsBar$TouchHelperCallback */
    /* loaded from: classes6.dex */
    public final class TouchHelperCallback extends ItemTouchHelper.Callback {
        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
            Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        }

        public TouchHelperCallback() {
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean isLongPressDragEnabled() {
            return TopicsBar.this.isEditing;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
            return ItemTouchHelper.Callback.makeMovementFlags((!TopicsBar.this.isEditing || TopicsBar.this.getListAdapter().isNoTopicPosition(viewHolder.getAdapterPosition())) ? 0 : 12, 0);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder source, RecyclerView.ViewHolder target) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(target, "target");
            if (TopicsBar.this.getListAdapter().isNoTopicPosition(source.getAdapterPosition()) || TopicsBar.this.getListAdapter().isNoTopicPosition(target.getAdapterPosition())) {
                return false;
            }
            TopicsBar.this.getListAdapter().swapElements(source.getAdapterPosition(), target.getAdapterPosition());
            return true;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
            if (i != 0) {
                TopicsBar.this.getListView().cancelClickRunnables(false);
            }
            super.onSelectedChanged(viewHolder, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TopicsBar.kt */
    /* renamed from: com.iMe.ui.topics.TopicsBar$ListAdapter */
    /* loaded from: classes6.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return false;
        }

        public ListAdapter() {
        }

        public final boolean isNoTopicPosition(int i) {
            TopicModel topicModel = (TopicModel) CollectionsKt.getOrNull(TopicsBar.this.data, i);
            return topicModel != null && topicModel.getTopicId() == -2;
        }

        public final void swapElements(int i, int i2) {
            Collections.swap(TopicsBar.this.data, i, i2);
            notifyItemMoved(i, i2);
            ForkTopicsController.Companion.getInstance(TopicsBar.this.currentAccount).swapTopics((TopicModel) TopicsBar.this.data.get(i), (TopicModel) TopicsBar.this.data.get(i2));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return TopicsBar.this.data.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            final Context context = TopicsBar.this.getContext();
            final TopicsBar topicsBar = TopicsBar.this;
            TopicView topicView = new TopicView(context) { // from class: com.iMe.ui.topics.TopicsBar$ListAdapter$onCreateViewHolder$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(context, null, 0, 0, 14, null);
                    Intrinsics.checkNotNullExpressionValue(context, "context");
                }

                @Override // android.view.View
                protected void onDraw(Canvas canvas) {
                    float f;
                    float f2;
                    Intrinsics.checkNotNullParameter(canvas, "canvas");
                    TopicModel topic = getTopic();
                    if (!(topic != null && topic.getTopicId() == -2)) {
                        f = TopicsBar.this.editingAnimationProgress;
                        if (!(f == BitmapDescriptorFactory.HUE_RED)) {
                            f2 = TopicsBar.this.editingAnimationProgress;
                            float f3 = f2 * (this.position % 2 == 0 ? 1.0f : -1.0f);
                            canvas.translate(AndroidUtilities.m73dp(0.66f) * f3, BitmapDescriptorFactory.HUE_RED);
                            canvas.rotate(f3, getMeasuredWidth() / 2, getMeasuredHeight() / 2);
                        }
                    }
                    super.onDraw(canvas);
                }
            };
            topicView.setLayoutParams(LayoutHelper.createRecycler(-2, -1));
            return new RecyclerListView.Holder(topicView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            View view = holder.itemView;
            Intrinsics.checkNotNull(view, "null cannot be cast to non-null type com.iMe.ui.topics.TopicView");
            TopicView topicView = (TopicView) view;
            TopicsBar topicsBar = TopicsBar.this;
            TopicModel topicModel = (TopicModel) topicsBar.data.get(holder.getAdapterPosition());
            topicView.setTopic(topicModel, topicModel.getTopicId() == topicsBar.selectedTopicId);
            topicView.position = holder.getAdapterPosition();
            topicView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m72dp(4), Theme.getColor(Theme.key_windowBackgroundWhite)));
        }
    }
}
