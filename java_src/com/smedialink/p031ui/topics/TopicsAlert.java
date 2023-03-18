package com.smedialink.p031ui.topics;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.storage.data.repository.topics.Topic;
import com.smedialink.storage.domain.model.topics.TopicModel;
import com.smedialink.utils.extentions.common.ViewExtKt;
import com.smedialink.utils.extentions.model.topic.TopicExtKt;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.fork.controller.ForkTopicsController;
import org.fork.enums.FilterActivityType;
import org.fork.p046ui.view.CircleCheckCell;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.BottomSheet;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.p048ui.FilterCreateActivity;
/* compiled from: TopicsAlert.kt */
/* renamed from: com.smedialink.ui.topics.TopicsAlert */
/* loaded from: classes3.dex */
public final class TopicsAlert extends BottomSheet {
    private final Lazy bottomShadow$delegate;
    private final Lazy createTopicButton$delegate;
    private final Lazy deleteOrCloseButton$delegate;
    private final List<Long> dialogIds;
    private boolean ignoreLayout;
    private int itemWidth;
    private final Lazy listAdapter$delegate;
    private final Lazy listView$delegate;
    private final BaseFragment parentFragment;
    private int scrollOffsetY;
    private final Lazy selectTopicTitleTextView$delegate;
    private Long selectedTopicId;
    private AnimatorSet shadowAnimation;
    private boolean shadowShowed;
    private final Lazy topShadow$delegate;
    private final Lazy topics$delegate;
    private final TopicsAlertDelegate topicsAlertDelegate;

    /* compiled from: TopicsAlert.kt */
    /* renamed from: com.smedialink.ui.topics.TopicsAlert$TopicsAlertDelegate */
    /* loaded from: classes3.dex */
    public interface TopicsAlertDelegate {
        void onTopicSelected();
    }

    static {
        new Companion(null);
    }

    @Override // org.telegram.p048ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    public final BaseFragment getParentFragment() {
        return this.parentFragment;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicsAlert(BaseFragment parentFragment, List<Long> dialogIds, boolean z, TopicsAlertDelegate topicsAlertDelegate) {
        super(parentFragment.getParentActivity(), false);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Lazy lazy7;
        Lazy lazy8;
        Intrinsics.checkNotNullParameter(parentFragment, "parentFragment");
        Intrinsics.checkNotNullParameter(dialogIds, "dialogIds");
        this.parentFragment = parentFragment;
        this.dialogIds = dialogIds;
        this.topicsAlertDelegate = topicsAlertDelegate;
        lazy = LazyKt__LazyJVMKt.lazy(new TopicsAlert$topics$2(this));
        this.topics$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new TopicsAlert$topShadow$2(this));
        this.topShadow$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new TopicsAlert$listView$2(this));
        this.listView$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new TopicsAlert$listAdapter$2(this));
        this.listAdapter$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new TopicsAlert$bottomShadow$2(this));
        this.bottomShadow$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new TopicsAlert$selectTopicTitleTextView$2(this));
        this.selectTopicTitleTextView$delegate = lazy6;
        lazy7 = LazyKt__LazyJVMKt.lazy(new TopicsAlert$deleteOrCloseButton$2(this));
        this.deleteOrCloseButton$delegate = lazy7;
        lazy8 = LazyKt__LazyJVMKt.lazy(new TopicsAlert$createTopicButton$2(this));
        this.createTopicButton$delegate = lazy8;
        if (!z) {
            TopicModel topicForDialog = ForkTopicsController.Companion.getInstance(this.currentAccount).getTopicForDialog(dialogIds.get(0).longValue());
            this.selectedTopicId = topicForDialog != null ? Long.valueOf(topicForDialog.getTopicId()) : null;
        }
        RootView rootView = new RootView();
        rootView.setWillNotDraw(false);
        int i = this.backgroundPaddingLeft;
        rootView.setPadding(i, 0, i, 0);
        rootView.addView(getTopShadow(), LayoutHelper.createFrame(-1, AndroidUtilities.getShadowHeight(), 48, 0, 48, 0, 0));
        rootView.addView(getListView(), LayoutHelper.createFrame(-1, -1, 48, 0, 48, 0, 48));
        rootView.addView(getBottomShadow(), LayoutHelper.createFrame(-1, AndroidUtilities.getShadowHeight(), 80, 0, 0, 0, 48));
        rootView.addView(getSelectTopicTitleTextView(), LayoutHelper.createFrame(-1, 50, 48));
        rootView.addView(getDeleteOrCloseButton(), LayoutHelper.createFrame(-2, 48, 83));
        rootView.addView(getCreateTopicButton(), LayoutHelper.createFrame(-2, 48, 85));
        this.containerView = rootView;
        setupListeners();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<TopicModel> getTopics() {
        return (List) this.topics$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View getTopShadow() {
        return (View) this.topShadow$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TopicsAlert$initListView$1 getListView() {
        return (TopicsAlert$initListView$1) this.listView$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ListAdapter getListAdapter() {
        return (ListAdapter) this.listAdapter$delegate.getValue();
    }

    private final View getBottomShadow() {
        return (View) this.bottomShadow$delegate.getValue();
    }

    private final TextView getSelectTopicTitleTextView() {
        return (TextView) this.selectTopicTitleTextView$delegate.getValue();
    }

    private final TextView getDeleteOrCloseButton() {
        return (TextView) this.deleteOrCloseButton$delegate.getValue();
    }

    private final TextView getCreateTopicButton() {
        return (TextView) this.createTopicButton$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View initShadow(boolean z) {
        View view = new View(getContext());
        view.setVisibility(z ? 8 : 0);
        view.setBackgroundColor(getThemedColor("dialogShadowLine"));
        return view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.smedialink.ui.topics.TopicsAlert$initListView$1, android.view.View, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, org.telegram.ui.Components.RecyclerListView] */
    public final TopicsAlert$initListView$1 initListView() {
        final Context context = getContext();
        ?? r1 = new RecyclerListView(context) { // from class: com.smedialink.ui.topics.TopicsAlert$initListView$1
            @Override // org.telegram.p048ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (TopicsAlert.this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        ViewExtKt.setHorizontalPadding(r1, 10);
        r1.setLayoutManager(new GridLayoutManager(r1.getContext(), 4));
        r1.setAdapter(getListAdapter());
        r1.setVerticalScrollBarEnabled(false);
        r1.setClipToPadding(false);
        r1.setEnabled(true);
        r1.setGlowColor(getThemedColor("dialogScrollGlow"));
        r1.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.smedialink.ui.topics.TopicsAlert$initListView$2$1
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
                Intrinsics.checkNotNullParameter(outRect, "outRect");
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(parent, "parent");
                Intrinsics.checkNotNullParameter(state, "state");
                RecyclerView.ViewHolder childViewHolder = parent.getChildViewHolder(view);
                Intrinsics.checkNotNull(childViewHolder, "null cannot be cast to non-null type org.telegram.ui.Components.RecyclerListView.Holder");
                int adapterPosition = ((RecyclerListView.Holder) childViewHolder).getAdapterPosition() % 4;
                outRect.left = adapterPosition == 0 ? 0 : AndroidUtilities.m50dp(4);
                outRect.right = adapterPosition != 3 ? AndroidUtilities.m50dp(4) : 0;
            }
        });
        return r1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initSelectTopicTitleTextView() {
        TextView textView = new TextView(getContext());
        ViewExtKt.singleLine(textView);
        ViewExtKt.setHorizontalPadding(textView, 18);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setGravity(16);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setText(LocaleController.getInternalString(C3286R.string.topics_select));
        textView.setTextColor(getThemedColor("dialogTextBlack"));
        textView.setTextSize(1, 20.0f);
        textView.setLinkTextColor(getThemedColor("dialogTextLink"));
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initBottomButton(boolean z) {
        TextView textView = new TextView(getContext());
        ViewExtKt.withMediumTypeface(textView);
        ViewExtKt.setHorizontalPadding(textView, 18);
        textView.setAllCaps(true);
        textView.setGravity(17);
        textView.setTextSize(1, 14.0f);
        if (z) {
            textView.setText(LocaleController.getString("Create", C3286R.string.Create));
            textView.setTextColor(getThemedColor("dialogTextBlue2"));
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.ui.topics.TopicsAlert$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TopicsAlert.initBottomButton$lambda$7$lambda$4(TopicsAlert.this, view);
                }
            });
        } else if (this.selectedTopicId == null) {
            textView.setText(LocaleController.getString("Close", C3286R.string.Close));
            textView.setTextColor(getThemedColor("dialogTextBlue2"));
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.ui.topics.TopicsAlert$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TopicsAlert.initBottomButton$lambda$7$lambda$5(TopicsAlert.this, view);
                }
            });
        } else {
            textView.setText(LocaleController.getInternalString(C3286R.string.topics_remove));
            textView.setTextColor(getThemedColor("dialogTextRed"));
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.ui.topics.TopicsAlert$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TopicsAlert.initBottomButton$lambda$7$lambda$6(TopicsAlert.this, view);
                }
            });
        }
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initBottomButton$lambda$7$lambda$4(TopicsAlert this$0, View view) {
        Set set;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
        BaseFragment baseFragment = this$0.parentFragment;
        set = CollectionsKt___CollectionsKt.toSet(this$0.dialogIds);
        baseFragment.presentFragment(new FilterCreateActivity(null, set, FilterActivityType.TOPIC));
        TopicsAlertDelegate topicsAlertDelegate = this$0.topicsAlertDelegate;
        if (topicsAlertDelegate != null) {
            topicsAlertDelegate.onTopicSelected();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initBottomButton$lambda$7$lambda$5(TopicsAlert this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initBottomButton$lambda$7$lambda$6(TopicsAlert this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
        ForkTopicsController.Companion.getInstance(this$0.currentAccount).removeTopicDialog(this$0.dialogIds.get(0).longValue());
    }

    private final void setupListeners() {
        TopicsAlert$initListView$1 listView = getListView();
        listView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.smedialink.ui.topics.TopicsAlert$setupListeners$1$1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                TopicsAlert.this.updateLayout();
            }
        });
        listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: com.smedialink.ui.topics.TopicsAlert$$ExternalSyntheticLambda3
            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                TopicsAlert.setupListeners$lambda$10$lambda$9(TopicsAlert.this, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$10$lambda$9(TopicsAlert this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        long topicId = this$0.getTopics().get(i).getTopicId();
        Long l = this$0.selectedTopicId;
        if (l != null && topicId == l.longValue()) {
            return;
        }
        for (Number number : this$0.dialogIds) {
            long longValue = number.longValue();
            ForkTopicsController.Companion.getInstance(this$0.currentAccount).addTopicDialog(this$0.getTopics().get(i), longValue);
            if (((Number) CollectionsKt.last((List<? extends Object>) this$0.dialogIds)).longValue() == longValue) {
                this$0.dismiss();
                TopicsAlertDelegate topicsAlertDelegate = this$0.topicsAlertDelegate;
                if (topicsAlertDelegate != null) {
                    topicsAlertDelegate.onTopicSelected();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateLayout() {
        if (getListView().getChildCount() <= 0) {
            setScrollOffsetY(getListView().getPaddingTop());
            return;
        }
        int i = 0;
        View childAt = getListView().getChildAt(0);
        RecyclerListView.Holder holder = (RecyclerListView.Holder) getListView().findContainingViewHolder(childAt);
        int top = childAt.getTop();
        if (top >= 0 && holder != null && holder.getAdapterPosition() == 0) {
            runShadowAnimation(false);
            i = top;
        } else {
            runShadowAnimation(true);
        }
        if (this.scrollOffsetY != i) {
            setScrollOffsetY(i);
        }
    }

    private final void setScrollOffsetY(int i) {
        this.scrollOffsetY = i;
        getListView().setTopGlowOffset(i);
        float f = i;
        getSelectTopicTitleTextView().setTranslationY(f);
        getTopShadow().setTranslationY(f);
        this.containerView.invalidate();
    }

    private final void runShadowAnimation(final boolean z) {
        if (this.shadowShowed != z) {
            this.shadowShowed = z;
            if (z) {
                ViewExtKt.visible(getTopShadow());
            }
            AnimatorSet animatorSet = this.shadowAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            Animator[] animatorArr = new Animator[1];
            View topShadow = getTopShadow();
            Property property = View.ALPHA;
            float[] fArr = new float[1];
            fArr[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            animatorArr[0] = ObjectAnimator.ofFloat(topShadow, property, fArr);
            animatorSet2.playTogether(animatorArr);
            animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: com.smedialink.ui.topics.TopicsAlert$runShadowAnimation$1$1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    AnimatorSet animatorSet3;
                    AnimatorSet animatorSet4;
                    View topShadow2;
                    Intrinsics.checkNotNullParameter(animation, "animation");
                    animatorSet3 = TopicsAlert.this.shadowAnimation;
                    if (animatorSet3 != null) {
                        animatorSet4 = TopicsAlert.this.shadowAnimation;
                        if (Intrinsics.areEqual(animatorSet4, animation)) {
                            if (!z) {
                                topShadow2 = TopicsAlert.this.getTopShadow();
                                ViewExtKt.invisible(topShadow2);
                            }
                            TopicsAlert.this.shadowAnimation = null;
                        }
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animation) {
                    AnimatorSet animatorSet3;
                    AnimatorSet animatorSet4;
                    Intrinsics.checkNotNullParameter(animation, "animation");
                    animatorSet3 = TopicsAlert.this.shadowAnimation;
                    if (animatorSet3 != null) {
                        animatorSet4 = TopicsAlert.this.shadowAnimation;
                        if (Intrinsics.areEqual(animatorSet4, animation)) {
                            TopicsAlert.this.shadowAnimation = null;
                        }
                    }
                }
            });
            animatorSet2.setDuration(150L);
            animatorSet2.start();
            this.shadowAnimation = animatorSet2;
        }
    }

    /* compiled from: TopicsAlert.kt */
    /* renamed from: com.smedialink.ui.topics.TopicsAlert$RootView */
    /* loaded from: classes3.dex */
    private final class RootView extends FrameLayout {
        private boolean fullHeight;
        private int lastNotifyWidth;
        private final RectF rect;

        public RootView() {
            super(TopicsAlert.this.getContext());
            this.rect = new RectF();
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent ev) {
            Intrinsics.checkNotNullParameter(ev, "ev");
            if (ev.getAction() == 0 && TopicsAlert.this.scrollOffsetY != 0 && ev.getY() < TopicsAlert.this.scrollOffsetY) {
                TopicsAlert.this.dismiss();
                return true;
            }
            return super.onInterceptTouchEvent(ev);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent e) {
            Intrinsics.checkNotNullParameter(e, "e");
            return !TopicsAlert.this.isDismissed() && super.onTouchEvent(e);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            TopicsAlert.this.ignoreLayout = true;
            setPadding(((BottomSheet) TopicsAlert.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight, ((BottomSheet) TopicsAlert.this).backgroundPaddingLeft, 0);
            TopicsAlert.this.ignoreLayout = false;
            TopicsAlert.this.itemWidth = (View.MeasureSpec.getSize(i) - AndroidUtilities.m50dp(28)) / 4;
            int m50dp = AndroidUtilities.m50dp(110) + (((int) Math.ceil(TopicsAlert.this.getTopics().size() / 4.0f)) * AndroidUtilities.m50dp(100)) + ((BottomSheet) TopicsAlert.this).backgroundPaddingTop + AndroidUtilities.statusBarHeight;
            int size = View.MeasureSpec.getSize(i2);
            int i3 = ((double) m50dp) < ((double) (((float) size) / 5.0f)) * 3.2d ? 0 : (size / 5) * 2;
            if (i3 != 0 && m50dp < size) {
                i3 -= size - m50dp;
            }
            if (i3 == 0) {
                i3 = ((BottomSheet) TopicsAlert.this).backgroundPaddingTop;
            }
            if (TopicsAlert.this.getListView().getPaddingTop() != i3) {
                TopicsAlert.this.ignoreLayout = true;
                TopicsAlert.this.getListView().setPadding(AndroidUtilities.m50dp(10), i3, AndroidUtilities.m50dp(10), 14);
                TopicsAlert.this.ignoreLayout = false;
            }
            this.fullHeight = m50dp >= size;
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(Math.min(m50dp, size), 1073741824));
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int i5 = i3 - i;
            if (this.lastNotifyWidth != i5) {
                this.lastNotifyWidth = i5;
                TopicsAlert.this.getListAdapter().notifyDataSetChanged();
            }
            super.onLayout(z, i, i2, i3, i4);
            TopicsAlert.this.updateLayout();
        }

        @Override // android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (TopicsAlert.this.ignoreLayout) {
                return;
            }
            super.requestLayout();
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x00ad  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x00b2  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0146  */
        /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onDraw(android.graphics.Canvas r12) {
            /*
                Method dump skipped, instructions count: 403
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.smedialink.p031ui.topics.TopicsAlert.RootView.onDraw(android.graphics.Canvas):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TopicsAlert.kt */
    /* renamed from: com.smedialink.ui.topics.TopicsAlert$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        public ListAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return TopicsAlert.this.getTopics().size();
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            long topicId = ((TopicModel) TopicsAlert.this.getTopics().get(holder.getAdapterPosition())).getTopicId();
            Long l = TopicsAlert.this.selectedTopicId;
            return l == null || topicId != l.longValue();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            final Context context = TopicsAlert.this.getContext();
            final ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_CROP;
            final TopicsAlert topicsAlert = TopicsAlert.this;
            return new RecyclerListView.Holder(new CircleCheckCell(context, scaleType) { // from class: com.smedialink.ui.topics.TopicsAlert$ListAdapter$onCreateViewHolder$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(context, 48, scaleType);
                    Intrinsics.checkNotNullExpressionValue(context, "context");
                }

                @Override // android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i2, int i3) {
                    int i4;
                    i4 = TopicsAlert.this.itemWidth;
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i4, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(100), 1073741824));
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            boolean z;
            Topic topic;
            Intrinsics.checkNotNullParameter(holder, "holder");
            TopicModel topicModel = (TopicModel) TopicsAlert.this.getTopics().get(i);
            View view = holder.itemView;
            Intrinsics.checkNotNull(view, "null cannot be cast to non-null type org.fork.ui.view.CircleCheckCell");
            CircleCheckCell circleCheckCell = (CircleCheckCell) view;
            TopicsAlert topicsAlert = TopicsAlert.this;
            if (topicModel.isUserTopic()) {
                int themedColor = topicsAlert.getThemedColor("iMe_dialogs_userTopicActiveBackground");
                if (topicModel.getIcon() != null) {
                    topic = topicModel.getIcon();
                    Intrinsics.checkNotNull(topic);
                } else {
                    topic = Topic.OTHER;
                }
                int iconResId = TopicExtKt.info(topic).getIconResId();
                String name = topicModel.getName();
                Intrinsics.checkNotNull(name);
                circleCheckCell.setData(themedColor, iconResId, name);
            } else if (topicModel.isAutoTopic()) {
                Topic icon = topicModel.getIcon();
                Intrinsics.checkNotNull(icon);
                TopicInfo info = TopicExtKt.info(icon);
                int component1 = info.component1();
                int component2 = info.component2();
                int component3 = info.component3();
                int color = ContextCompat.getColor(circleCheckCell.getContext(), component1);
                String internalString = LocaleController.getInternalString(component2);
                Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(titleResId)");
                circleCheckCell.setData(color, component3, internalString);
            }
            if (topicModel.getTopicId() != -1) {
                long topicId = topicModel.getTopicId();
                Long l = topicsAlert.selectedTopicId;
                if (l != null && topicId == l.longValue()) {
                    z = true;
                    circleCheckCell.setChecked(z);
                }
            }
            z = false;
            circleCheckCell.setChecked(z);
        }
    }

    /* compiled from: TopicsAlert.kt */
    /* renamed from: com.smedialink.ui.topics.TopicsAlert$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
