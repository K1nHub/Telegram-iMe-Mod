package com.iMe.p030ui.topics;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
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
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.controller.ForkTopicsController;
import com.iMe.fork.enums.FilterActivityType;
import com.iMe.fork.p023ui.view.CircleCheckCell;
import com.iMe.fork.utils.Callbacks$Callback2;
import com.iMe.p030ui.topics.TopicsAlert;
import com.iMe.storage.data.utils.extentions.CollectionExtKt;
import com.iMe.storage.domain.model.topics.TopicModel;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.FilterCreateActivity;
/* compiled from: TopicsAlert.kt */
/* renamed from: com.iMe.ui.topics.TopicsAlert */
/* loaded from: classes3.dex */
public final class TopicsAlert extends BottomSheet {
    private final Lazy bottomShadow$delegate;
    private final Callbacks$Callback2<Boolean, TopicModel> callback;
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
    private TopicModel selectedTopic;
    private AnimatorSet shadowAnimation;
    private boolean shadowShowed;
    private final Lazy topShadow$delegate;
    private final Lazy topics$delegate;

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    public final BaseFragment getParentFragment() {
        return this.parentFragment;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicsAlert(BaseFragment parentFragment, List<Long> dialogIds, Callbacks$Callback2<Boolean, TopicModel> callbacks$Callback2) {
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
        this.callback = callbacks$Callback2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<List<? extends TopicModel>>() { // from class: com.iMe.ui.topics.TopicsAlert$topics$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends TopicModel> invoke() {
                return TopicsAlert.this.getParentFragment().getTopicsController().getAlertTopics();
            }
        });
        this.topics$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<View>() { // from class: com.iMe.ui.topics.TopicsAlert$topShadow$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View initShadow;
                initShadow = TopicsAlert.this.initShadow(true);
                return initShadow;
            }
        });
        this.topShadow$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<TopicsAlert$initListView$1>() { // from class: com.iMe.ui.topics.TopicsAlert$listView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TopicsAlert$initListView$1 invoke() {
                TopicsAlert$initListView$1 initListView;
                initListView = TopicsAlert.this.initListView();
                return initListView;
            }
        });
        this.listView$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<ListAdapter>() { // from class: com.iMe.ui.topics.TopicsAlert$listAdapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TopicsAlert.ListAdapter invoke() {
                return new TopicsAlert.ListAdapter();
            }
        });
        this.listAdapter$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<View>() { // from class: com.iMe.ui.topics.TopicsAlert$bottomShadow$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View initShadow;
                initShadow = TopicsAlert.this.initShadow(false);
                return initShadow;
            }
        });
        this.bottomShadow$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.ui.topics.TopicsAlert$selectTopicTitleTextView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initSelectTopicTitleTextView;
                initSelectTopicTitleTextView = TopicsAlert.this.initSelectTopicTitleTextView();
                return initSelectTopicTitleTextView;
            }
        });
        this.selectTopicTitleTextView$delegate = lazy6;
        lazy7 = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.ui.topics.TopicsAlert$deleteOrCloseButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initBottomButton;
                initBottomButton = TopicsAlert.this.initBottomButton(false);
                return initBottomButton;
            }
        });
        this.deleteOrCloseButton$delegate = lazy7;
        lazy8 = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.ui.topics.TopicsAlert$createTopicButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initBottomButton;
                initBottomButton = TopicsAlert.this.initBottomButton(true);
                return initBottomButton;
            }
        });
        this.createTopicButton$delegate = lazy8;
        if (CollectionExtKt.isSingletonList(dialogIds)) {
            this.selectedTopic = ForkTopicsController.Companion.getInstance(this.currentAccount).getTopicForDialog(dialogIds.get(0).longValue());
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
        view.setBackgroundColor(getThemedColor(Theme.key_dialogShadowLine));
        return view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r1v0, types: [android.view.View, androidx.recyclerview.widget.RecyclerView, com.iMe.ui.topics.TopicsAlert$initListView$1, android.view.ViewGroup, org.telegram.ui.Components.RecyclerListView] */
    public final TopicsAlert$initListView$1 initListView() {
        final Context context = getContext();
        ?? r1 = new RecyclerListView(context) { // from class: com.iMe.ui.topics.TopicsAlert$initListView$1
            @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
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
        r1.setGlowColor(getThemedColor(Theme.key_dialogScrollGlow));
        r1.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.iMe.ui.topics.TopicsAlert$initListView$2$1
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
                Intrinsics.checkNotNullParameter(outRect, "outRect");
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(parent, "parent");
                Intrinsics.checkNotNullParameter(state, "state");
                RecyclerView.ViewHolder childViewHolder = parent.getChildViewHolder(view);
                Intrinsics.checkNotNull(childViewHolder, "null cannot be cast to non-null type org.telegram.ui.Components.RecyclerListView.Holder");
                int adapterPosition = ((RecyclerListView.Holder) childViewHolder).getAdapterPosition() % 4;
                outRect.left = adapterPosition == 0 ? 0 : AndroidUtilities.m107dp(4);
                outRect.right = adapterPosition != 3 ? AndroidUtilities.m107dp(4) : 0;
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
        textView.setText(LocaleController.getInternalString(C3632R.string.topics_select));
        textView.setTextColor(getThemedColor(Theme.key_dialogTextBlack));
        textView.setTextSize(1, 20.0f);
        textView.setLinkTextColor(getThemedColor(Theme.key_dialogTextLink));
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
            textView.setText(LocaleController.getString("Create", C3632R.string.Create));
            textView.setTextColor(getThemedColor(Theme.key_dialogTextBlue2));
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.topics.TopicsAlert$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TopicsAlert.initBottomButton$lambda$9$lambda$6(TopicsAlert.this, view);
                }
            });
        } else if (this.selectedTopic == null) {
            textView.setText(LocaleController.getString("Close", C3632R.string.Close));
            textView.setTextColor(getThemedColor(Theme.key_dialogTextBlue2));
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.topics.TopicsAlert$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TopicsAlert.initBottomButton$lambda$9$lambda$7(TopicsAlert.this, view);
                }
            });
        } else {
            textView.setText(LocaleController.getInternalString(C3632R.string.topics_remove));
            textView.setTextColor(getThemedColor(Theme.key_text_RedRegular));
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.topics.TopicsAlert$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TopicsAlert.initBottomButton$lambda$9$lambda$8(TopicsAlert.this, view);
                }
            });
        }
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initBottomButton$lambda$9$lambda$6(final TopicsAlert this$0, View view) {
        Set set;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
        BaseFragment baseFragment = this$0.parentFragment;
        set = CollectionsKt___CollectionsKt.toSet(this$0.dialogIds);
        FilterCreateActivity filterCreateActivity = new FilterCreateActivity(null, set, FilterActivityType.TOPIC);
        filterCreateActivity.setDoneCallback(new Callbacks$Callback2() { // from class: com.iMe.ui.topics.TopicsAlert$$ExternalSyntheticLambda3
            @Override // com.iMe.fork.utils.Callbacks$Callback2
            public final void invoke(Object obj, Object obj2) {
                TopicsAlert.initBottomButton$lambda$9$lambda$6$lambda$5$lambda$4(TopicsAlert.this, (MessagesController.DialogFilter) obj, (TopicModel) obj2);
            }
        });
        baseFragment.presentFragment(filterCreateActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initBottomButton$lambda$9$lambda$6$lambda$5$lambda$4(TopicsAlert this$0, MessagesController.DialogFilter dialogFilter, TopicModel topicModel) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Callbacks$Callback2<Boolean, TopicModel> callbacks$Callback2 = this$0.callback;
        if (callbacks$Callback2 != null) {
            callbacks$Callback2.invoke(Boolean.TRUE, topicModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initBottomButton$lambda$9$lambda$7(TopicsAlert this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initBottomButton$lambda$9$lambda$8(TopicsAlert this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
        ForkTopicsController.Companion.getInstance(this$0.currentAccount).removeTopicDialog(this$0.dialogIds.get(0).longValue());
        Callbacks$Callback2<Boolean, TopicModel> callbacks$Callback2 = this$0.callback;
        if (callbacks$Callback2 != null) {
            callbacks$Callback2.invoke(Boolean.FALSE, this$0.selectedTopic);
        }
    }

    private final void setupListeners() {
        TopicsAlert$initListView$1 listView = getListView();
        listView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.iMe.ui.topics.TopicsAlert$setupListeners$1$1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                TopicsAlert.this.updateLayout();
            }
        });
        listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: com.iMe.ui.topics.TopicsAlert$$ExternalSyntheticLambda4
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                TopicsAlert.setupListeners$lambda$12$lambda$11(TopicsAlert.this, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$12$lambda$11(TopicsAlert this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TopicModel topicModel = this$0.selectedTopic;
        boolean z = false;
        if (topicModel != null && this$0.getTopics().get(i).getTopicId() == topicModel.getTopicId()) {
            z = true;
        }
        if (z) {
            return;
        }
        TopicModel topicModel2 = this$0.getTopics().get(i);
        for (Number number : this$0.dialogIds) {
            ForkTopicsController.Companion.getInstance(this$0.currentAccount).addTopicDialog(topicModel2, number.longValue());
        }
        this$0.dismiss();
        Callbacks$Callback2<Boolean, TopicModel> callbacks$Callback2 = this$0.callback;
        if (callbacks$Callback2 != null) {
            callbacks$Callback2.invoke(Boolean.TRUE, topicModel2);
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
                ViewExtKt.visible$default(getTopShadow(), false, 1, null);
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
            animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: com.iMe.ui.topics.TopicsAlert$runShadowAnimation$1$1
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
                                ViewExtKt.invisible$default(topShadow2, false, 1, null);
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
    /* renamed from: com.iMe.ui.topics.TopicsAlert$RootView */
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
            TopicsAlert.this.itemWidth = (View.MeasureSpec.getSize(i) - AndroidUtilities.m107dp(28)) / 4;
            int m107dp = AndroidUtilities.m107dp(110) + (((int) Math.ceil(TopicsAlert.this.getTopics().size() / 4.0f)) * AndroidUtilities.m107dp(100)) + ((BottomSheet) TopicsAlert.this).backgroundPaddingTop + AndroidUtilities.statusBarHeight;
            int size = View.MeasureSpec.getSize(i2);
            int i3 = ((double) m107dp) < ((double) (((float) size) / 5.0f)) * 3.2d ? 0 : (size / 5) * 2;
            if (i3 != 0 && m107dp < size) {
                i3 -= size - m107dp;
            }
            if (i3 == 0) {
                i3 = ((BottomSheet) TopicsAlert.this).backgroundPaddingTop;
            }
            if (TopicsAlert.this.getListView().getPaddingTop() != i3) {
                TopicsAlert.this.ignoreLayout = true;
                TopicsAlert.this.getListView().setPadding(AndroidUtilities.m107dp(10), i3, AndroidUtilities.m107dp(10), 14);
                TopicsAlert.this.ignoreLayout = false;
            }
            this.fullHeight = m107dp >= size;
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(Math.min(m107dp, size), 1073741824));
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

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i;
            float f;
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            int m107dp = (TopicsAlert.this.scrollOffsetY - ((BottomSheet) TopicsAlert.this).backgroundPaddingTop) + AndroidUtilities.m107dp(6);
            int m107dp2 = (TopicsAlert.this.scrollOffsetY - ((BottomSheet) TopicsAlert.this).backgroundPaddingTop) - AndroidUtilities.m107dp(13);
            int measuredHeight = getMeasuredHeight() + AndroidUtilities.m107dp(15) + ((BottomSheet) TopicsAlert.this).backgroundPaddingTop;
            int i2 = AndroidUtilities.statusBarHeight;
            int i3 = m107dp2 + i2;
            int i4 = m107dp + i2;
            if (this.fullHeight) {
                int i5 = ((BottomSheet) TopicsAlert.this).backgroundPaddingTop + i3;
                int i6 = AndroidUtilities.statusBarHeight;
                if (i5 < i6 * 2) {
                    int min = Math.min(i6, ((i6 * 2) - i3) - ((BottomSheet) TopicsAlert.this).backgroundPaddingTop);
                    i3 -= min;
                    measuredHeight += min;
                    f = 1.0f - Math.min(1.0f, (min * 2) / AndroidUtilities.statusBarHeight);
                } else {
                    f = 1.0f;
                }
                int i7 = ((BottomSheet) TopicsAlert.this).backgroundPaddingTop + i3;
                int i8 = AndroidUtilities.statusBarHeight;
                i = i7 < i8 ? Math.min(i8, (i8 - i3) - ((BottomSheet) TopicsAlert.this).backgroundPaddingTop) : 0;
            } else {
                i = 0;
                f = 1.0f;
            }
            ((BottomSheet) TopicsAlert.this).shadowDrawable.setBounds(0, i3, getMeasuredWidth(), measuredHeight);
            ((BottomSheet) TopicsAlert.this).shadowDrawable.draw(canvas);
            if (!(f == 1.0f)) {
                Theme.dialogs_onlineCirclePaint.setColor(TopicsAlert.this.getThemedColor(Theme.key_dialogBackground));
                this.rect.set(((BottomSheet) TopicsAlert.this).backgroundPaddingLeft, ((BottomSheet) TopicsAlert.this).backgroundPaddingTop + i3, getMeasuredWidth() - ((BottomSheet) TopicsAlert.this).backgroundPaddingLeft, ((BottomSheet) TopicsAlert.this).backgroundPaddingTop + i3 + AndroidUtilities.m107dp(24));
                canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(12) * f, AndroidUtilities.m107dp(12) * f, Theme.dialogs_onlineCirclePaint);
            }
            int m107dp3 = AndroidUtilities.m107dp(36);
            this.rect.set((getMeasuredWidth() - m107dp3) / 2.0f, i4, (getMeasuredWidth() + m107dp3) / 2.0f, i4 + AndroidUtilities.m107dp(4));
            Theme.dialogs_onlineCirclePaint.setColor(TopicsAlert.this.getThemedColor(Theme.key_sheet_scrollUp));
            canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(2), AndroidUtilities.m107dp(2), Theme.dialogs_onlineCirclePaint);
            if (i > 0) {
                int themedColor = TopicsAlert.this.getThemedColor(Theme.key_dialogBackground);
                Theme.dialogs_onlineCirclePaint.setColor(Color.argb(255, (int) (Color.red(themedColor) * 0.8f), (int) (Color.green(themedColor) * 0.8f), (int) (Color.blue(themedColor) * 0.8f)));
                canvas.drawRect(((BottomSheet) TopicsAlert.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight - i, getMeasuredWidth() - ((BottomSheet) TopicsAlert.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight, Theme.dialogs_onlineCirclePaint);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TopicsAlert.kt */
    /* renamed from: com.iMe.ui.topics.TopicsAlert$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        public ListAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return TopicsAlert.this.getTopics().size();
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            TopicModel topicModel = TopicsAlert.this.selectedTopic;
            boolean z = false;
            if (topicModel != null && ((TopicModel) TopicsAlert.this.getTopics().get(holder.getAdapterPosition())).getTopicId() == topicModel.getTopicId()) {
                z = true;
            }
            return !z;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            final Context context = TopicsAlert.this.getContext();
            final ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_CROP;
            final TopicsAlert topicsAlert = TopicsAlert.this;
            return new RecyclerListView.Holder(new CircleCheckCell(context, scaleType) { // from class: com.iMe.ui.topics.TopicsAlert$ListAdapter$onCreateViewHolder$1
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
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i4, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(100), 1073741824));
                }
            });
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x00a9, code lost:
            if ((r0 != null && r8.getTopicId() == r0.getTopicId()) != false) goto L15;
         */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.ViewHolder r7, int r8) {
            /*
                r6 = this;
                java.lang.String r0 = "holder"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
                com.iMe.ui.topics.TopicsAlert r0 = com.iMe.p030ui.topics.TopicsAlert.this
                java.util.List r0 = com.iMe.p030ui.topics.TopicsAlert.access$getTopics(r0)
                java.lang.Object r8 = r0.get(r8)
                com.iMe.storage.domain.model.topics.TopicModel r8 = (com.iMe.storage.domain.model.topics.TopicModel) r8
                android.view.View r7 = r7.itemView
                java.lang.String r0 = "null cannot be cast to non-null type com.iMe.fork.ui.view.CircleCheckCell"
                kotlin.jvm.internal.Intrinsics.checkNotNull(r7, r0)
                com.iMe.fork.ui.view.CircleCheckCell r7 = (com.iMe.fork.p023ui.view.CircleCheckCell) r7
                com.iMe.ui.topics.TopicsAlert r0 = com.iMe.p030ui.topics.TopicsAlert.this
                boolean r1 = r8.isUserTopic()
                if (r1 == 0) goto L51
                int r1 = org.telegram.p043ui.ActionBar.Theme.key_chats_actionBackground
                int r1 = com.iMe.p030ui.topics.TopicsAlert.access$getThemedColor(r0, r1)
                r7.setColor(r1)
                com.iMe.storage.data.repository.topics.Topic r1 = r8.getIcon()
                if (r1 == 0) goto L39
                com.iMe.storage.data.repository.topics.Topic r1 = r8.getIcon()
                kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
                goto L3b
            L39:
                com.iMe.storage.data.repository.topics.Topic r1 = com.iMe.storage.data.repository.topics.Topic.OTHER
            L3b:
                com.iMe.ui.topics.TopicInfo r1 = com.iMe.utils.extentions.model.topic.TopicExtKt.info(r1)
                int r1 = r1.getIconResId()
                r7.setIcon(r1)
                java.lang.String r1 = r8.getName()
                kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
                r7.setName(r1)
                goto L88
            L51:
                boolean r1 = r8.isAutoTopic()
                if (r1 == 0) goto L88
                com.iMe.storage.data.repository.topics.Topic r1 = r8.getIcon()
                kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
                com.iMe.ui.topics.TopicInfo r1 = com.iMe.utils.extentions.model.topic.TopicExtKt.info(r1)
                int r2 = r1.component1()
                int r3 = r1.component2()
                int r1 = r1.component3()
                android.content.Context r4 = r7.getContext()
                int r2 = androidx.core.content.ContextCompat.getColor(r4, r2)
                r7.setColor(r2)
                r7.setIcon(r1)
                java.lang.String r1 = org.telegram.messenger.LocaleController.getInternalString(r3)
                java.lang.String r2 = "getInternalString(titleResId)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
                r7.setName(r1)
            L88:
                long r1 = r8.getTopicId()
                r3 = -1
                int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
                r2 = 1
                r3 = 0
                if (r1 == 0) goto Lac
                com.iMe.storage.domain.model.topics.TopicModel r0 = com.iMe.p030ui.topics.TopicsAlert.access$getSelectedTopic$p(r0)
                if (r0 == 0) goto La8
                long r4 = r8.getTopicId()
                long r0 = r0.getTopicId()
                int r8 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
                if (r8 != 0) goto La8
                r8 = r2
                goto La9
            La8:
                r8 = r3
            La9:
                if (r8 == 0) goto Lac
                goto Lad
            Lac:
                r2 = r3
            Lad:
                r7.setChecked(r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iMe.p030ui.topics.TopicsAlert.ListAdapter.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
        }
    }
}
