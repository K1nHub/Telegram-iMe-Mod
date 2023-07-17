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
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.IdFabric$Menu;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.p024ui.view.EmptyView;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.p031ui.custom.ImageTextCheckCell;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.C3484ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RecyclerListView;
/* compiled from: SelectNetworkBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.SelectNetworkBottomSheet */
/* loaded from: classes3.dex */
public final class SelectNetworkBottomSheet extends BottomSheet {
    public static final Companion Companion = new Companion(null);
    private final Lazy actionBar$delegate;
    private final Lazy actionBarHeight$delegate;
    private final Network currentNetwork;
    private List<Network> filteredNetworks;
    private boolean ignoreLayout;
    private boolean isSearching;
    private int itemWidth;
    private final Lazy listAdapter$delegate;
    private final Lazy listView$delegate;
    private final List<Network> networks;
    private int scrollOffsetY;
    private final Callbacks$Callback1<Network> selectNetworkDelegate;
    private Network selectedNetwork;
    private AnimatorSet shadowAnimation;
    private final Lazy topShadow$delegate;
    private final Lazy underlay$delegate;

    public /* synthetic */ SelectNetworkBottomSheet(Context context, Network network, List list, Callbacks$Callback1 callbacks$Callback1, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, network, list, callbacks$Callback1);
    }

    public static final SelectNetworkBottomSheet newInstance(Context context, Network network, List<Network> list, Callbacks$Callback1<Network> callbacks$Callback1) {
        return Companion.newInstance(context, network, list, callbacks$Callback1);
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    private SelectNetworkBottomSheet(Context context, Network network, List<Network> list, Callbacks$Callback1<Network> callbacks$Callback1) {
        super(context, true);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        List<Network> emptyList;
        this.currentNetwork = network;
        this.networks = list;
        this.selectNetworkDelegate = callbacks$Callback1;
        lazy = LazyKt__LazyJVMKt.lazy(SelectNetworkBottomSheet$actionBarHeight$2.INSTANCE);
        this.actionBarHeight$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new SelectNetworkBottomSheet$topShadow$2(this));
        this.topShadow$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new SelectNetworkBottomSheet$actionBar$2(this));
        this.actionBar$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new SelectNetworkBottomSheet$underlay$2(this));
        this.underlay$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new SelectNetworkBottomSheet$listView$2(this));
        this.listView$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new SelectNetworkBottomSheet$listAdapter$2(this));
        this.listAdapter$delegate = lazy6;
        this.selectedNetwork = network;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.filteredNetworks = emptyList;
        int m53px = AndroidUtilities.m53px(getActionBarHeight());
        RootView rootView = new RootView();
        rootView.setBackgroundColor(0);
        rootView.setWillNotDraw(false);
        rootView.addView(getUnderlay(), LayoutHelper.createFrame(-1, -1, 48, 0, m53px, 0, 0));
        rootView.addView(getListView(), LayoutHelper.createFrame(-1, -1, 48, 0, m53px, 0, 0));
        rootView.addView(getActionBar(), LayoutHelper.createFrame(-1, m53px, 48));
        rootView.addView(getTopShadow(), LayoutHelper.createFrame(-1, AndroidUtilities.getShadowHeight(), 48, 0, m53px, 0, 0));
        this.containerView = rootView;
        setupListeners();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getActionBarHeight() {
        return ((Number) this.actionBarHeight$delegate.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View getTopShadow() {
        return (View) this.topShadow$delegate.getValue();
    }

    private final C3484ActionBar getActionBar() {
        return (C3484ActionBar) this.actionBar$delegate.getValue();
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

    private final int getCurrentNetworkPosition() {
        int i = 0;
        for (Network network : getCurrentItemsList()) {
            if (Intrinsics.areEqual(network.getId(), this.currentNetwork.getId())) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<Network> getCurrentItemsList() {
        return this.isSearching ? this.filteredNetworks : this.networks;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final C3484ActionBar initActionBar() {
        C3484ActionBar c3484ActionBar = new C3484ActionBar(getContext());
        c3484ActionBar.setOccupyStatusBar(false);
        c3484ActionBar.setBackButtonImage(C3417R.C3419drawable.ic_ab_back);
        c3484ActionBar.setTitle(LocaleController.getInternalString(C3417R.string.wallet_network_type_dialog_title));
        ActionBarMenuItem isSearchField = c3484ActionBar.createMenu().addItem(IdFabric$Menu.SEARCH, C3417R.C3419drawable.ic_ab_search).setIsSearchField(true);
        isSearchField.getSearchField().setImeOptions(Integer.MIN_VALUE);
        isSearchField.setSearchFieldHint(LocaleController.getInternalString(C3417R.string.wallet_network_type_dialog_search_hint));
        isSearchField.setContentDescription(LocaleController.getString("Search", C3417R.string.Search));
        c3484ActionBar.setBackgroundColor(0);
        int i = Theme.key_windowBackgroundWhiteBlackText;
        c3484ActionBar.setTitleColor(getThemedColor(i));
        c3484ActionBar.setItemsColor(getThemedColor(i), false);
        c3484ActionBar.setSearchCursorColor(getThemedColor(i));
        c3484ActionBar.setSearchTextColor(getThemedColor(i), false);
        c3484ActionBar.setSearchTextColor(getThemedColor(Theme.key_windowBackgroundWhiteHintText), true);
        return c3484ActionBar;
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
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: com.iMe.fork.ui.dialog.SelectNetworkBottomSheet$initListView$1
            @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (SelectNetworkBottomSheet.this.ignoreLayout) {
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
        C3484ActionBar actionBar = getActionBar();
        actionBar.setActionBarMenuOnItemClick(new C3484ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.fork.ui.dialog.SelectNetworkBottomSheet$setupListeners$1$1
            @Override // org.telegram.p043ui.ActionBar.C3484ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    SelectNetworkBottomSheet.this.dismiss();
                }
            }
        });
        actionBar.menu.getItem(IdFabric$Menu.SEARCH).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: com.iMe.fork.ui.dialog.SelectNetworkBottomSheet$setupListeners$1$2
            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchExpand() {
            }

            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchCollapse() {
                List list;
                SelectNetworkBottomSheet selectNetworkBottomSheet = SelectNetworkBottomSheet.this;
                list = selectNetworkBottomSheet.networks;
                selectNetworkBottomSheet.filteredNetworks = list;
                SelectNetworkBottomSheet.this.isSearching = false;
                SelectNetworkBottomSheet.this.getListAdapter().notifyDataSetChanged();
            }

            /* JADX WARN: Removed duplicated region for block: B:20:0x0056 A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:22:0x002f A[SYNTHETIC] */
            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onTextChanged(android.widget.EditText r8) {
                /*
                    r7 = this;
                    java.lang.String r0 = "editText"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
                    android.text.Editable r8 = r8.getText()
                    java.lang.String r8 = r8.toString()
                    com.iMe.fork.ui.dialog.SelectNetworkBottomSheet r0 = com.iMe.fork.p024ui.dialog.SelectNetworkBottomSheet.this
                    boolean r1 = kotlin.text.StringsKt.isBlank(r8)
                    r2 = 1
                    r1 = r1 ^ r2
                    com.iMe.fork.p024ui.dialog.SelectNetworkBottomSheet.access$setSearching$p(r0, r1)
                    com.iMe.fork.ui.dialog.SelectNetworkBottomSheet r0 = com.iMe.fork.p024ui.dialog.SelectNetworkBottomSheet.this
                    boolean r0 = com.iMe.fork.p024ui.dialog.SelectNetworkBottomSheet.access$isSearching$p(r0)
                    if (r0 == 0) goto L5d
                    com.iMe.fork.ui.dialog.SelectNetworkBottomSheet r0 = com.iMe.fork.p024ui.dialog.SelectNetworkBottomSheet.this
                    java.util.List r1 = com.iMe.fork.p024ui.dialog.SelectNetworkBottomSheet.access$getNetworks$p(r0)
                    java.util.ArrayList r3 = new java.util.ArrayList
                    r3.<init>()
                    java.util.Iterator r1 = r1.iterator()
                L2f:
                    boolean r4 = r1.hasNext()
                    if (r4 == 0) goto L5a
                    java.lang.Object r4 = r1.next()
                    r5 = r4
                    com.iMe.storage.domain.model.crypto.Network r5 = (com.iMe.storage.domain.model.crypto.Network) r5
                    java.lang.String r6 = r5.getFullName()
                    boolean r6 = kotlin.text.StringsKt.contains(r6, r8, r2)
                    if (r6 != 0) goto L53
                    java.lang.String r5 = r5.getShortName()
                    boolean r5 = kotlin.text.StringsKt.contains(r5, r8, r2)
                    if (r5 == 0) goto L51
                    goto L53
                L51:
                    r5 = 0
                    goto L54
                L53:
                    r5 = r2
                L54:
                    if (r5 == 0) goto L2f
                    r3.add(r4)
                    goto L2f
                L5a:
                    com.iMe.fork.p024ui.dialog.SelectNetworkBottomSheet.access$setFilteredNetworks$p(r0, r3)
                L5d:
                    com.iMe.fork.ui.dialog.SelectNetworkBottomSheet r8 = com.iMe.fork.p024ui.dialog.SelectNetworkBottomSheet.this
                    com.iMe.fork.ui.dialog.SelectNetworkBottomSheet$ListAdapter r8 = com.iMe.fork.p024ui.dialog.SelectNetworkBottomSheet.access$getListAdapter(r8)
                    r8.notifyDataSetChanged()
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.iMe.fork.p024ui.dialog.SelectNetworkBottomSheet$setupListeners$1$2.onTextChanged(android.widget.EditText):void");
            }
        });
        RecyclerListView listView = getListView();
        listView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.iMe.fork.ui.dialog.SelectNetworkBottomSheet$setupListeners$2$1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                SelectNetworkBottomSheet.this.updateLayout();
            }
        });
        listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: com.iMe.fork.ui.dialog.SelectNetworkBottomSheet$$ExternalSyntheticLambda0
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                SelectNetworkBottomSheet.setupListeners$lambda$9$lambda$8(SelectNetworkBottomSheet.this, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$9$lambda$8(SelectNetworkBottomSheet this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.getCurrentItemsList().isEmpty() || this$0.getCurrentNetworkPosition() == i) {
            return;
        }
        this$0.selectedNetwork = this$0.getCurrentItemsList().get(i);
        this$0.getListAdapter().notifyItemChanged(this$0.getCurrentNetworkPosition());
        this$0.getListAdapter().notifyItemChanged(i);
        this$0.dismiss();
        this$0.selectNetworkDelegate.invoke(this$0.selectedNetwork);
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
        animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: com.iMe.fork.ui.dialog.SelectNetworkBottomSheet$runShadowAnimation$1$1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                AnimatorSet animatorSet3;
                AnimatorSet animatorSet4;
                View topShadow2;
                Intrinsics.checkNotNullParameter(animation, "animation");
                animatorSet3 = SelectNetworkBottomSheet.this.shadowAnimation;
                if (animatorSet3 != null) {
                    animatorSet4 = SelectNetworkBottomSheet.this.shadowAnimation;
                    if (Intrinsics.areEqual(animatorSet4, animation)) {
                        if (!z) {
                            topShadow2 = SelectNetworkBottomSheet.this.getTopShadow();
                            ViewExtKt.invisible$default(topShadow2, false, 1, null);
                        }
                        SelectNetworkBottomSheet.this.shadowAnimation = null;
                    }
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animation) {
                AnimatorSet animatorSet3;
                AnimatorSet animatorSet4;
                Intrinsics.checkNotNullParameter(animation, "animation");
                animatorSet3 = SelectNetworkBottomSheet.this.shadowAnimation;
                if (animatorSet3 != null) {
                    animatorSet4 = SelectNetworkBottomSheet.this.shadowAnimation;
                    if (Intrinsics.areEqual(animatorSet4, animation)) {
                        SelectNetworkBottomSheet.this.shadowAnimation = null;
                    }
                }
            }
        });
        animatorSet2.start();
        this.shadowAnimation = animatorSet2;
    }

    /* compiled from: SelectNetworkBottomSheet.kt */
    /* renamed from: com.iMe.fork.ui.dialog.SelectNetworkBottomSheet$RootView */
    /* loaded from: classes3.dex */
    private final class RootView extends FrameLayout {
        private boolean fullHeight;
        private int lastNotifyWidth;
        private final RectF rect;

        public RootView() {
            super(SelectNetworkBottomSheet.this.getContext());
            this.rect = new RectF();
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent ev) {
            Intrinsics.checkNotNullParameter(ev, "ev");
            if (ev.getAction() == 0 && SelectNetworkBottomSheet.this.scrollOffsetY != 0 && ev.getY() < SelectNetworkBottomSheet.this.scrollOffsetY) {
                SelectNetworkBottomSheet.this.dismiss();
                return true;
            }
            return super.onInterceptTouchEvent(ev);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent e) {
            Intrinsics.checkNotNullParameter(e, "e");
            return !SelectNetworkBottomSheet.this.isDismissed() && super.onTouchEvent(e);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int size;
            SelectNetworkBottomSheet.this.ignoreLayout = true;
            setPadding(0, AndroidUtilities.statusBarHeight, 0, 0);
            SelectNetworkBottomSheet.this.ignoreLayout = false;
            SelectNetworkBottomSheet.this.itemWidth = AndroidUtilities.m53px(View.MeasureSpec.getSize(i)) - 12;
            ViewExtKt.setHorizontalPadding(this, 6);
            if (!SelectNetworkBottomSheet.this.getCurrentItemsList().isEmpty()) {
                size = SelectNetworkBottomSheet.this.getCurrentItemsList().size() * AndroidUtilities.m54dp(56);
            } else {
                size = AndroidUtilities.m54dp(250);
            }
            int actionBarHeight = SelectNetworkBottomSheet.this.getActionBarHeight() + size + ((BottomSheet) SelectNetworkBottomSheet.this).backgroundPaddingTop + AndroidUtilities.statusBarHeight;
            int size2 = View.MeasureSpec.getSize(i2);
            int i3 = ((double) actionBarHeight) < ((double) (((float) size2) / 5.0f)) * 3.2d ? 0 : (size2 / 5) * 2;
            if (i3 != 0 && actionBarHeight < size2) {
                i3 -= size2 - actionBarHeight;
            }
            if (i3 == 0) {
                i3 = ((BottomSheet) SelectNetworkBottomSheet.this).backgroundPaddingTop;
            }
            if (SelectNetworkBottomSheet.this.getListView().getPaddingTop() != i3) {
                SelectNetworkBottomSheet.this.ignoreLayout = true;
                SelectNetworkBottomSheet.this.getListView().setPadding(0, i3, 0, 0);
                SelectNetworkBottomSheet.this.ignoreLayout = false;
            }
            this.fullHeight = actionBarHeight >= size2;
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(Math.min(actionBarHeight, size2), 1073741824));
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int i5 = i3 - i;
            if (this.lastNotifyWidth != i5) {
                this.lastNotifyWidth = i5;
                SelectNetworkBottomSheet.this.getListAdapter().notifyDataSetChanged();
            }
            super.onLayout(z, i, i2, i3, i4);
            SelectNetworkBottomSheet.this.updateLayout();
        }

        @Override // android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (SelectNetworkBottomSheet.this.ignoreLayout) {
                return;
            }
            super.requestLayout();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i;
            float f;
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            int m54dp = (SelectNetworkBottomSheet.this.scrollOffsetY - ((BottomSheet) SelectNetworkBottomSheet.this).backgroundPaddingTop) + AndroidUtilities.m54dp(6);
            int m54dp2 = (SelectNetworkBottomSheet.this.scrollOffsetY - ((BottomSheet) SelectNetworkBottomSheet.this).backgroundPaddingTop) - AndroidUtilities.m54dp(13);
            int measuredHeight = getMeasuredHeight() + AndroidUtilities.m54dp(15) + ((BottomSheet) SelectNetworkBottomSheet.this).backgroundPaddingTop;
            int i2 = AndroidUtilities.statusBarHeight;
            int i3 = m54dp2 + i2;
            int i4 = m54dp + i2;
            int i5 = measuredHeight - i2;
            if (this.fullHeight) {
                int i6 = ((BottomSheet) SelectNetworkBottomSheet.this).backgroundPaddingTop + i3;
                int i7 = AndroidUtilities.statusBarHeight;
                if (i6 < i7 * 2) {
                    int min = Math.min(i7, ((i7 * 2) - i3) - ((BottomSheet) SelectNetworkBottomSheet.this).backgroundPaddingTop);
                    i3 -= min;
                    i5 += min;
                    f = 1.0f - Math.min(1.0f, (min * 2) / AndroidUtilities.statusBarHeight);
                } else {
                    f = 1.0f;
                }
                int i8 = ((BottomSheet) SelectNetworkBottomSheet.this).backgroundPaddingTop + i3;
                int i9 = AndroidUtilities.statusBarHeight;
                i = i8 < i9 ? Math.min(i9, (i9 - i3) - ((BottomSheet) SelectNetworkBottomSheet.this).backgroundPaddingTop) : 0;
            } else {
                i = 0;
                f = 1.0f;
            }
            ((BottomSheet) SelectNetworkBottomSheet.this).shadowDrawable.setBounds(0, i3, getMeasuredWidth(), i5);
            ((BottomSheet) SelectNetworkBottomSheet.this).shadowDrawable.draw(canvas);
            if (!(f == 1.0f)) {
                Theme.dialogs_onlineCirclePaint.setColor(SelectNetworkBottomSheet.this.getThemedColor(Theme.key_dialogBackground));
                this.rect.set(((BottomSheet) SelectNetworkBottomSheet.this).backgroundPaddingLeft, ((BottomSheet) SelectNetworkBottomSheet.this).backgroundPaddingTop + i3, getMeasuredWidth() - ((BottomSheet) SelectNetworkBottomSheet.this).backgroundPaddingLeft, ((BottomSheet) SelectNetworkBottomSheet.this).backgroundPaddingTop + i3 + AndroidUtilities.m54dp(24));
                canvas.drawRoundRect(this.rect, AndroidUtilities.m54dp(12) * f, AndroidUtilities.m54dp(12) * f, Theme.dialogs_onlineCirclePaint);
            }
            int m54dp3 = AndroidUtilities.m54dp(36);
            this.rect.set((getMeasuredWidth() - m54dp3) / 2.0f, i4, (getMeasuredWidth() + m54dp3) / 2.0f, i4 + AndroidUtilities.m54dp(4));
            Theme.dialogs_onlineCirclePaint.setColor(SelectNetworkBottomSheet.this.getThemedColor(Theme.key_sheet_scrollUp));
            canvas.drawRoundRect(this.rect, AndroidUtilities.m54dp(2), AndroidUtilities.m54dp(2), Theme.dialogs_onlineCirclePaint);
            if (i > 0) {
                int themedColor = SelectNetworkBottomSheet.this.getThemedColor(Theme.key_dialogBackground);
                Theme.dialogs_onlineCirclePaint.setColor(Color.argb(255, (int) (Color.red(themedColor) * 0.8f), (int) (Color.green(themedColor) * 0.8f), (int) (Color.blue(themedColor) * 0.8f)));
                canvas.drawRect(((BottomSheet) SelectNetworkBottomSheet.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight - i, getMeasuredWidth() - ((BottomSheet) SelectNetworkBottomSheet.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight, Theme.dialogs_onlineCirclePaint);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SelectNetworkBottomSheet.kt */
    /* renamed from: com.iMe.fork.ui.dialog.SelectNetworkBottomSheet$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        public ListAdapter() {
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder != null && viewHolder.getItemViewType() == IdFabric$ViewTypes.NETWORK_CELL;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (SelectNetworkBottomSheet.this.getCurrentItemsList().isEmpty()) {
                return 1;
            }
            return SelectNetworkBottomSheet.this.getCurrentItemsList().size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return SelectNetworkBottomSheet.this.getCurrentItemsList().isEmpty() ? IdFabric$ViewTypes.EMPTY_VIEW : IdFabric$ViewTypes.NETWORK_CELL;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            FrameLayout imageTextCheckCell;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.EMPTY_VIEW) {
                Context context = SelectNetworkBottomSheet.this.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "context");
                String internalString = LocaleController.getInternalString(C3417R.string.wallet_network_type_dialog_search_empty);
                Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…type_dialog_search_empty)");
                imageTextCheckCell = new EmptyView(context, internalString);
                imageTextCheckCell.setLayoutParams(LayoutHelper.createRecycler(SelectNetworkBottomSheet.this.itemWidth, 250));
            } else {
                Context context2 = SelectNetworkBottomSheet.this.getContext();
                Intrinsics.checkNotNullExpressionValue(context2, "context");
                imageTextCheckCell = new ImageTextCheckCell(context2, null, 0, 6, null);
                imageTextCheckCell.setLayoutParams(LayoutHelper.createRecycler(SelectNetworkBottomSheet.this.itemWidth, -2));
            }
            return new RecyclerListView.Holder(imageTextCheckCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            int lastIndex;
            Intrinsics.checkNotNullParameter(holder, "holder");
            int itemViewType = holder.getItemViewType();
            if (itemViewType == IdFabric$ViewTypes.NETWORK_CELL) {
                Object obj = SelectNetworkBottomSheet.this.getCurrentItemsList().get(i);
                SelectNetworkBottomSheet selectNetworkBottomSheet = SelectNetworkBottomSheet.this;
                Network network = (Network) obj;
                View view = holder.itemView;
                Intrinsics.checkNotNull(view, "null cannot be cast to non-null type com.iMe.ui.custom.ImageTextCheckCell");
                ImageTextCheckCell imageTextCheckCell = (ImageTextCheckCell) view;
                String fullName = network.getFullName();
                String logoUrl = network.getLogoUrl();
                boolean areEqual = Intrinsics.areEqual(((Network) selectNetworkBottomSheet.getCurrentItemsList().get(i)).getId(), selectNetworkBottomSheet.selectedNetwork.getId());
                lastIndex = CollectionsKt__CollectionsKt.getLastIndex(selectNetworkBottomSheet.getCurrentItemsList());
                imageTextCheckCell.setupViewData(fullName, logoUrl, areEqual, lastIndex != i);
                imageTextCheckCell.setFocusable(true);
            } else if (itemViewType == IdFabric$ViewTypes.EMPTY_VIEW) {
                View view2 = holder.itemView;
                Intrinsics.checkNotNull(view2, "null cannot be cast to non-null type com.iMe.fork.ui.view.EmptyView");
                ((EmptyView) view2).getAnimationView().playAnimation();
            }
        }
    }

    /* compiled from: SelectNetworkBottomSheet.kt */
    /* renamed from: com.iMe.fork.ui.dialog.SelectNetworkBottomSheet$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ SelectNetworkBottomSheet newInstance$default(Companion companion, Context context, Network network, List list, Callbacks$Callback1 callbacks$Callback1, int i, Object obj) {
            if ((i & 4) != 0) {
                list = NetworksHelper.getSupportedNetworks();
            }
            return companion.newInstance(context, network, list, callbacks$Callback1);
        }

        public final SelectNetworkBottomSheet newInstance(Context context, Network currentNetwork, List<Network> networks, Callbacks$Callback1<Network> selectNetworkDelegate) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(currentNetwork, "currentNetwork");
            Intrinsics.checkNotNullParameter(networks, "networks");
            Intrinsics.checkNotNullParameter(selectNetworkDelegate, "selectNetworkDelegate");
            return new SelectNetworkBottomSheet(context, currentNetwork, networks, selectNetworkDelegate, null);
        }
    }
}
