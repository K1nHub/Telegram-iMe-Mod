package com.iMe.fork.p024ui.dialog;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.RectF;
import android.graphics.drawable.GradientDrawable;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.p024ui.dialog.TokenListsBottomSheet;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.p031ui.custom.ImageTextCheckCell;
import com.iMe.storage.domain.model.wallet.token.TokenListInfo;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3558R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.C3626ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RecyclerListView;
/* compiled from: TokenListsBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.TokenListsBottomSheet */
/* loaded from: classes3.dex */
public final class TokenListsBottomSheet extends BottomSheet {
    private final Lazy actionBar$delegate;
    private final Lazy actionBarHeight$delegate;
    private boolean ignoreLayout;
    private int itemWidth;
    private final Lazy listAdapter$delegate;
    private final Lazy listView$delegate;
    private final Callbacks$Callback onInfoClickAction;
    private int scrollOffsetY;
    private AnimatorSet shadowAnimation;
    private final List<TokenListInfo> tokenLists;
    private final Lazy topShadow$delegate;
    private final Lazy underlay$delegate;

    static {
        new Companion(null);
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TokenListsBottomSheet(Context context, List<TokenListInfo> tokenLists, Callbacks$Callback onInfoClickAction) {
        super(context, true);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(tokenLists, "tokenLists");
        Intrinsics.checkNotNullParameter(onInfoClickAction, "onInfoClickAction");
        this.tokenLists = tokenLists;
        this.onInfoClickAction = onInfoClickAction;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.iMe.fork.ui.dialog.TokenListsBottomSheet$actionBarHeight$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(C3626ActionBar.getCurrentActionBarHeight());
            }
        });
        this.actionBarHeight$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<View>() { // from class: com.iMe.fork.ui.dialog.TokenListsBottomSheet$topShadow$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View initShadow;
                initShadow = TokenListsBottomSheet.this.initShadow();
                return initShadow;
            }
        });
        this.topShadow$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<C3626ActionBar>() { // from class: com.iMe.fork.ui.dialog.TokenListsBottomSheet$actionBar$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final C3626ActionBar invoke() {
                C3626ActionBar initActionBar;
                initActionBar = TokenListsBottomSheet.this.initActionBar();
                return initActionBar;
            }
        });
        this.actionBar$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<FrameLayout>() { // from class: com.iMe.fork.ui.dialog.TokenListsBottomSheet$underlay$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final FrameLayout invoke() {
                FrameLayout initUnderlay;
                initUnderlay = TokenListsBottomSheet.this.initUnderlay();
                return initUnderlay;
            }
        });
        this.underlay$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<RecyclerListView>() { // from class: com.iMe.fork.ui.dialog.TokenListsBottomSheet$listView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final RecyclerListView invoke() {
                RecyclerListView initListView;
                initListView = TokenListsBottomSheet.this.initListView();
                return initListView;
            }
        });
        this.listView$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new Function0<ListAdapter>() { // from class: com.iMe.fork.ui.dialog.TokenListsBottomSheet$listAdapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TokenListsBottomSheet.ListAdapter invoke() {
                return new TokenListsBottomSheet.ListAdapter();
            }
        });
        this.listAdapter$delegate = lazy6;
        final int m71px = AndroidUtilities.m71px(getActionBarHeight());
        final RootView rootView = new RootView();
        rootView.setWillNotDraw(false);
        rootView.addView(getUnderlay(), LayoutHelper.createFrame(-1, -1, 48, 0, m71px, 0, 0));
        rootView.addView(getListView(), LayoutHelper.createFrame(-1, -1, 48, 0, m71px, 0, 0));
        rootView.addView(getActionBar(), LayoutHelper.createFrame(-1, m71px, 48));
        C3626ActionBar actionBar = getActionBar();
        if (!ViewCompat.isLaidOut(actionBar) || actionBar.isLayoutRequested()) {
            actionBar.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.iMe.fork.ui.dialog.TokenListsBottomSheet$_init_$lambda$1$$inlined$doOnLayout$1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    view.removeOnLayoutChangeListener(this);
                    TokenListsBottomSheet.RootView.this.addView(this.getTopShadow(), LayoutHelper.createFrame(-1, AndroidUtilities.getShadowHeight(), 48, 0, m71px, 0, 0));
                }
            });
        } else {
            rootView.addView(getTopShadow(), LayoutHelper.createFrame(-1, AndroidUtilities.getShadowHeight(), 48, 0, m71px, 0, 0));
        }
        this.containerView = rootView;
        setupListeners();
    }

    private final int getActionBarHeight() {
        return ((Number) this.actionBarHeight$delegate.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View getTopShadow() {
        return (View) this.topShadow$delegate.getValue();
    }

    private final C3626ActionBar getActionBar() {
        return (C3626ActionBar) this.actionBar$delegate.getValue();
    }

    private final FrameLayout getUnderlay() {
        return (FrameLayout) this.underlay$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecyclerListView getListView() {
        return (RecyclerListView) this.listView$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ListAdapter getListAdapter() {
        return (ListAdapter) this.listAdapter$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final C3626ActionBar initActionBar() {
        C3626ActionBar c3626ActionBar = new C3626ActionBar(getContext());
        c3626ActionBar.setOccupyStatusBar(false);
        c3626ActionBar.setBackButtonImage(C3558R.C3560drawable.ic_ab_back);
        c3626ActionBar.setTitle(LocaleController.getInternalString(C3558R.string.token_lists_title));
        c3626ActionBar.createMenu().addItem(IdFabric$Menu.INFO, C3558R.C3560drawable.msg_info);
        c3626ActionBar.setBackgroundColor(0);
        int i = Theme.key_windowBackgroundWhiteBlackText;
        c3626ActionBar.setTitleColor(getThemedColor(i));
        c3626ActionBar.setItemsColor(getThemedColor(i), false);
        return c3626ActionBar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FrameLayout initUnderlay() {
        FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.setBackgroundColor(getThemedColor(Theme.key_dialogBackground));
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecyclerListView initListView() {
        final Context context = getContext();
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: com.iMe.fork.ui.dialog.TokenListsBottomSheet$initListView$1
            @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (TokenListsBottomSheet.this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        recyclerListView.setLayoutManager(new LinearLayoutManager(recyclerListView.getContext()));
        recyclerListView.setAdapter(getListAdapter());
        recyclerListView.setVerticalScrollBarEnabled(false);
        recyclerListView.setClipToPadding(false);
        recyclerListView.setEnabled(true);
        recyclerListView.useLayoutPositionOnClick = true;
        recyclerListView.setGlowColor(getThemedColor(Theme.key_dialogScrollGlow));
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View initShadow() {
        View view = new View(getContext());
        view.setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{ColorUtils.setAlphaComponent(-16777216, 25), 0}));
        ViewExtKt.gone$default(view, false, 1, null);
        return view;
    }

    private final void setupListeners() {
        getActionBar().setActionBarMenuOnItemClick(new C3626ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.fork.ui.dialog.TokenListsBottomSheet$setupListeners$1
            @Override // org.telegram.p043ui.ActionBar.C3626ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                Callbacks$Callback callbacks$Callback;
                if (i == -1) {
                    TokenListsBottomSheet.this.dismiss();
                } else if (i == IdFabric$Menu.INFO) {
                    callbacks$Callback = TokenListsBottomSheet.this.onInfoClickAction;
                    callbacks$Callback.invoke();
                }
            }
        });
        getListView().addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.iMe.fork.ui.dialog.TokenListsBottomSheet$setupListeners$2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                TokenListsBottomSheet.this.updateLayout();
            }
        });
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
        getUnderlay().setTranslationY(f);
        getActionBar().setTranslationY(f);
        getTopShadow().setTranslationY(f);
        this.containerView.invalidate();
    }

    private final void runShadowAnimation(final boolean z) {
        if ((!z || getTopShadow().getTag() == null) && (z || getTopShadow().getTag() != null)) {
            return;
        }
        getTopShadow().setTag(z ? null : 1);
        if (z) {
            ViewExtKt.visible$default(getTopShadow(), false, 1, null);
        }
        AnimatorSet animatorSet = this.shadowAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.setDuration(150L);
        Animator[] animatorArr = new Animator[1];
        View topShadow = getTopShadow();
        Property property = View.ALPHA;
        float[] fArr = new float[1];
        fArr[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        animatorArr[0] = ObjectAnimator.ofFloat(topShadow, property, fArr);
        animatorSet2.playTogether(animatorArr);
        animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: com.iMe.fork.ui.dialog.TokenListsBottomSheet$runShadowAnimation$1$1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                AnimatorSet animatorSet3;
                AnimatorSet animatorSet4;
                Intrinsics.checkNotNullParameter(animation, "animation");
                animatorSet3 = TokenListsBottomSheet.this.shadowAnimation;
                if (animatorSet3 != null) {
                    animatorSet4 = TokenListsBottomSheet.this.shadowAnimation;
                    if (Intrinsics.areEqual(animatorSet4, animation)) {
                        if (!z) {
                            ViewExtKt.invisible$default(TokenListsBottomSheet.this.getTopShadow(), false, 1, null);
                        }
                        TokenListsBottomSheet.this.shadowAnimation = null;
                    }
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animation) {
                AnimatorSet animatorSet3;
                AnimatorSet animatorSet4;
                Intrinsics.checkNotNullParameter(animation, "animation");
                animatorSet3 = TokenListsBottomSheet.this.shadowAnimation;
                if (animatorSet3 != null) {
                    animatorSet4 = TokenListsBottomSheet.this.shadowAnimation;
                    if (Intrinsics.areEqual(animatorSet4, animation)) {
                        TokenListsBottomSheet.this.shadowAnimation = null;
                    }
                }
            }
        });
        animatorSet2.start();
        this.shadowAnimation = animatorSet2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TokenListsBottomSheet.kt */
    /* renamed from: com.iMe.fork.ui.dialog.TokenListsBottomSheet$RootView */
    /* loaded from: classes3.dex */
    public final class RootView extends FrameLayout {
        private boolean fullHeight;
        private int lastNotifyWidth;
        private final RectF rect;

        public RootView() {
            super(TokenListsBottomSheet.this.getContext());
            this.rect = new RectF();
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent ev) {
            Intrinsics.checkNotNullParameter(ev, "ev");
            if (ev.getAction() == 0 && TokenListsBottomSheet.this.scrollOffsetY != 0 && ev.getY() < TokenListsBottomSheet.this.scrollOffsetY) {
                TokenListsBottomSheet.this.dismiss();
                return true;
            }
            return super.onInterceptTouchEvent(ev);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent e) {
            Intrinsics.checkNotNullParameter(e, "e");
            return !TokenListsBottomSheet.this.isDismissed() && super.onTouchEvent(e);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            TokenListsBottomSheet.this.ignoreLayout = true;
            setPadding(0, AndroidUtilities.statusBarHeight, 0, 0);
            TokenListsBottomSheet.this.ignoreLayout = false;
            TokenListsBottomSheet.this.itemWidth = AndroidUtilities.m71px(View.MeasureSpec.getSize(i)) - 12;
            ViewExtKt.setHorizontalPadding(this, 6);
            int m72dp = AndroidUtilities.m72dp(62) + (((int) Math.ceil(TokenListsBottomSheet.this.tokenLists.size())) * AndroidUtilities.m72dp(56)) + ((BottomSheet) TokenListsBottomSheet.this).backgroundPaddingTop + AndroidUtilities.statusBarHeight;
            int size = View.MeasureSpec.getSize(i2);
            int i3 = ((double) m72dp) < ((double) (((float) size) / 5.0f)) * 3.2d ? 0 : (size / 5) * 2;
            if (i3 != 0 && m72dp < size) {
                i3 -= size - m72dp;
            }
            if (i3 == 0) {
                i3 = ((BottomSheet) TokenListsBottomSheet.this).backgroundPaddingTop;
            }
            if (TokenListsBottomSheet.this.getListView().getPaddingTop() != i3) {
                TokenListsBottomSheet.this.ignoreLayout = true;
                TokenListsBottomSheet.this.getListView().setPadding(0, i3, 0, 0);
                TokenListsBottomSheet.this.ignoreLayout = false;
            }
            this.fullHeight = m72dp >= size;
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(Math.min(m72dp, size), 1073741824));
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int i5 = i3 - i;
            if (this.lastNotifyWidth != i5) {
                this.lastNotifyWidth = i5;
                TokenListsBottomSheet.this.getListAdapter().notifyDataSetChanged();
            }
            super.onLayout(z, i, i2, i3, i4);
            TokenListsBottomSheet.this.updateLayout();
        }

        @Override // android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (TokenListsBottomSheet.this.ignoreLayout) {
                return;
            }
            super.requestLayout();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i;
            float f;
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            int m72dp = (TokenListsBottomSheet.this.scrollOffsetY - ((BottomSheet) TokenListsBottomSheet.this).backgroundPaddingTop) + AndroidUtilities.m72dp(6);
            int m72dp2 = (TokenListsBottomSheet.this.scrollOffsetY - ((BottomSheet) TokenListsBottomSheet.this).backgroundPaddingTop) - AndroidUtilities.m72dp(13);
            int measuredHeight = getMeasuredHeight() + AndroidUtilities.m72dp(15) + ((BottomSheet) TokenListsBottomSheet.this).backgroundPaddingTop;
            int i2 = AndroidUtilities.statusBarHeight;
            int i3 = m72dp2 + i2;
            int i4 = m72dp + i2;
            int i5 = measuredHeight - i2;
            if (this.fullHeight) {
                int i6 = ((BottomSheet) TokenListsBottomSheet.this).backgroundPaddingTop + i3;
                int i7 = AndroidUtilities.statusBarHeight;
                if (i6 < i7 * 2) {
                    int min = Math.min(i7, ((i7 * 2) - i3) - ((BottomSheet) TokenListsBottomSheet.this).backgroundPaddingTop);
                    i3 -= min;
                    i5 += min;
                    f = 1.0f - Math.min(1.0f, (min * 2) / AndroidUtilities.statusBarHeight);
                } else {
                    f = 1.0f;
                }
                int i8 = ((BottomSheet) TokenListsBottomSheet.this).backgroundPaddingTop + i3;
                int i9 = AndroidUtilities.statusBarHeight;
                i = i8 < i9 ? Math.min(i9, (i9 - i3) - ((BottomSheet) TokenListsBottomSheet.this).backgroundPaddingTop) : 0;
            } else {
                i = 0;
                f = 1.0f;
            }
            ((BottomSheet) TokenListsBottomSheet.this).shadowDrawable.setBounds(0, i3, getMeasuredWidth(), i5);
            ((BottomSheet) TokenListsBottomSheet.this).shadowDrawable.draw(canvas);
            if (!(f == 1.0f)) {
                Theme.dialogs_onlineCirclePaint.setColor(TokenListsBottomSheet.this.getThemedColor(Theme.key_dialogBackground));
                this.rect.set(((BottomSheet) TokenListsBottomSheet.this).backgroundPaddingLeft, ((BottomSheet) TokenListsBottomSheet.this).backgroundPaddingTop + i3, getMeasuredWidth() - ((BottomSheet) TokenListsBottomSheet.this).backgroundPaddingLeft, ((BottomSheet) TokenListsBottomSheet.this).backgroundPaddingTop + i3 + AndroidUtilities.m72dp(24));
                canvas.drawRoundRect(this.rect, AndroidUtilities.m72dp(12) * f, AndroidUtilities.m72dp(12) * f, Theme.dialogs_onlineCirclePaint);
            }
            int m72dp3 = AndroidUtilities.m72dp(36);
            this.rect.set((getMeasuredWidth() - m72dp3) / 2.0f, i4, (getMeasuredWidth() + m72dp3) / 2.0f, i4 + AndroidUtilities.m72dp(4));
            Theme.dialogs_onlineCirclePaint.setColor(TokenListsBottomSheet.this.getThemedColor(Theme.key_sheet_scrollUp));
            canvas.drawRoundRect(this.rect, AndroidUtilities.m72dp(2), AndroidUtilities.m72dp(2), Theme.dialogs_onlineCirclePaint);
            if (i > 0) {
                int themedColor = TokenListsBottomSheet.this.getThemedColor(Theme.key_dialogBackground);
                Theme.dialogs_onlineCirclePaint.setColor(Color.argb(255, (int) (Color.red(themedColor) * 0.8f), (int) (Color.green(themedColor) * 0.8f), (int) (Color.blue(themedColor) * 0.8f)));
                canvas.drawRect(((BottomSheet) TokenListsBottomSheet.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight - i, getMeasuredWidth() - ((BottomSheet) TokenListsBottomSheet.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight, Theme.dialogs_onlineCirclePaint);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TokenListsBottomSheet.kt */
    /* renamed from: com.iMe.fork.ui.dialog.TokenListsBottomSheet$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return false;
        }

        public ListAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (TokenListsBottomSheet.this.tokenLists.isEmpty()) {
                return 1;
            }
            return TokenListsBottomSheet.this.tokenLists.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            Context context = TokenListsBottomSheet.this.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            ImageTextCheckCell imageTextCheckCell = new ImageTextCheckCell(context, null, 0, 6, null);
            TokenListsBottomSheet tokenListsBottomSheet = TokenListsBottomSheet.this;
            imageTextCheckCell.setCustomCheckResId(C3558R.C3560drawable.fork_ic_verified);
            imageTextCheckCell.setLayoutParams(LayoutHelper.createRecycler(tokenListsBottomSheet.itemWidth, -2));
            return new RecyclerListView.Holder(imageTextCheckCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            int lastIndex;
            Intrinsics.checkNotNullParameter(holder, "holder");
            Object obj = TokenListsBottomSheet.this.tokenLists.get(i);
            TokenListsBottomSheet tokenListsBottomSheet = TokenListsBottomSheet.this;
            TokenListInfo tokenListInfo = (TokenListInfo) obj;
            View view = holder.itemView;
            Intrinsics.checkNotNull(view, "null cannot be cast to non-null type com.iMe.ui.custom.ImageTextCheckCell");
            ImageTextCheckCell imageTextCheckCell = (ImageTextCheckCell) view;
            String name = tokenListInfo.getName();
            String iconUrl = tokenListInfo.getIconUrl();
            boolean isVerified = tokenListInfo.isVerified();
            lastIndex = CollectionsKt__CollectionsKt.getLastIndex(tokenListsBottomSheet.tokenLists);
            imageTextCheckCell.setupViewData(name, (r13 & 2) != 0 ? null : iconUrl, (r13 & 4) != 0 ? null : null, isVerified, lastIndex != i);
            imageTextCheckCell.setFocusable(true);
        }
    }

    /* compiled from: TokenListsBottomSheet.kt */
    /* renamed from: com.iMe.fork.ui.dialog.TokenListsBottomSheet$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
