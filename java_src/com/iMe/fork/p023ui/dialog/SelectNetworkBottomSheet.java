package com.iMe.fork.p023ui.dialog;

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
import android.widget.EditText;
import android.widget.FrameLayout;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.IdFabric$Menu;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.p023ui.dialog.SelectNetworkBottomSheet;
import com.iMe.fork.p023ui.view.EmptyView;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.p030ui.custom.ImageTextCheckCell;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RecyclerListView;
/* compiled from: SelectNetworkBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.SelectNetworkBottomSheet */
/* loaded from: classes3.dex */
public final class SelectNetworkBottomSheet extends BottomSheet implements KoinComponent {
    public static final Companion Companion = new Companion(null);
    private final Lazy actionBar$delegate;
    private final Lazy actionBarHeight$delegate;
    private final NetworkItem currentNetwork;
    private List<? extends NetworkItem> filteredNetworks;
    private boolean ignoreLayout;
    private boolean isSearching;
    private int itemWidth;
    private final Lazy listAdapter$delegate;
    private final Lazy listView$delegate;
    private final List<NetworkItem> networks;
    private final Lazy resourceManager$delegate;
    private int scrollOffsetY;
    private final Callbacks$Callback1<NetworkItem.Crypto> selectNetworkDelegate;
    private NetworkItem selectedNetwork;
    private AnimatorSet shadowAnimation;
    private final Lazy topShadow$delegate;
    private final Lazy underlay$delegate;

    public /* synthetic */ SelectNetworkBottomSheet(Context context, NetworkItem networkItem, List list, Callbacks$Callback1 callbacks$Callback1, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, networkItem, list, callbacks$Callback1);
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private SelectNetworkBottomSheet(Context context, NetworkItem networkItem, List<? extends NetworkItem> list, Callbacks$Callback1<NetworkItem.Crypto> callbacks$Callback1) {
        super(context, true);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Lazy lazy7;
        List<? extends NetworkItem> emptyList;
        this.currentNetwork = networkItem;
        this.networks = list;
        this.selectNetworkDelegate = callbacks$Callback1;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<ResourceManager>() { // from class: com.iMe.fork.ui.dialog.SelectNetworkBottomSheet$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.utils.system.ResourceManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ResourceManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), qualifier, function0);
            }
        });
        this.resourceManager$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.iMe.fork.ui.dialog.SelectNetworkBottomSheet$actionBarHeight$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(C3704ActionBar.getCurrentActionBarHeight());
            }
        });
        this.actionBarHeight$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<View>() { // from class: com.iMe.fork.ui.dialog.SelectNetworkBottomSheet$topShadow$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View initShadow;
                initShadow = SelectNetworkBottomSheet.this.initShadow();
                return initShadow;
            }
        });
        this.topShadow$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<C3704ActionBar>() { // from class: com.iMe.fork.ui.dialog.SelectNetworkBottomSheet$actionBar$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final C3704ActionBar invoke() {
                C3704ActionBar initActionBar;
                initActionBar = SelectNetworkBottomSheet.this.initActionBar();
                return initActionBar;
            }
        });
        this.actionBar$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<FrameLayout>() { // from class: com.iMe.fork.ui.dialog.SelectNetworkBottomSheet$underlay$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final FrameLayout invoke() {
                FrameLayout initUnderlay;
                initUnderlay = SelectNetworkBottomSheet.this.initUnderlay();
                return initUnderlay;
            }
        });
        this.underlay$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new Function0<RecyclerListView>() { // from class: com.iMe.fork.ui.dialog.SelectNetworkBottomSheet$listView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final RecyclerListView invoke() {
                RecyclerListView initListView;
                initListView = SelectNetworkBottomSheet.this.initListView();
                return initListView;
            }
        });
        this.listView$delegate = lazy6;
        lazy7 = LazyKt__LazyJVMKt.lazy(new Function0<ListAdapter>() { // from class: com.iMe.fork.ui.dialog.SelectNetworkBottomSheet$listAdapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SelectNetworkBottomSheet.ListAdapter invoke() {
                return new SelectNetworkBottomSheet.ListAdapter();
            }
        });
        this.listAdapter$delegate = lazy7;
        this.selectedNetwork = networkItem;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.filteredNetworks = emptyList;
        int m106px = AndroidUtilities.m106px(getActionBarHeight());
        RootView rootView = new RootView();
        rootView.setBackgroundColor(0);
        rootView.setWillNotDraw(false);
        rootView.addView(getUnderlay(), LayoutHelper.createFrame(-1, -1, 48, 0, m106px, 0, 0));
        rootView.addView(getListView(), LayoutHelper.createFrame(-1, -1, 48, 0, m106px, 0, 0));
        rootView.addView(getActionBar(), LayoutHelper.createFrame(-1, m106px, 48));
        rootView.addView(getTopShadow(), LayoutHelper.createFrame(-1, AndroidUtilities.getShadowHeight(), 48, 0, m106px, 0, 0));
        this.containerView = rootView;
        setupListeners();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getActionBarHeight() {
        return ((Number) this.actionBarHeight$delegate.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View getTopShadow() {
        return (View) this.topShadow$delegate.getValue();
    }

    private final C3704ActionBar getActionBar() {
        return (C3704ActionBar) this.actionBar$delegate.getValue();
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
        return getCurrentItemsList().indexOf(this.currentNetwork);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<NetworkItem> getCurrentItemsList() {
        return this.isSearching ? this.filteredNetworks : this.networks;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final C3704ActionBar initActionBar() {
        C3704ActionBar c3704ActionBar = new C3704ActionBar(getContext());
        c3704ActionBar.setOccupyStatusBar(false);
        c3704ActionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        c3704ActionBar.setTitle(LocaleController.getInternalString(C3632R.string.wallet_network_type_dialog_title));
        ActionBarMenuItem isSearchField = c3704ActionBar.createMenu().addItem(IdFabric$Menu.SEARCH, C3632R.C3634drawable.ic_ab_search).setIsSearchField(true);
        isSearchField.getSearchField().setImeOptions(Integer.MIN_VALUE);
        isSearchField.setSearchFieldHint(LocaleController.getInternalString(C3632R.string.wallet_network_type_dialog_search_hint));
        isSearchField.setContentDescription(LocaleController.getString("Search", C3632R.string.Search));
        c3704ActionBar.setBackgroundColor(0);
        int i = Theme.key_windowBackgroundWhiteBlackText;
        c3704ActionBar.setTitleColor(getThemedColor(i));
        c3704ActionBar.setItemsColor(getThemedColor(i), false);
        c3704ActionBar.setSearchCursorColor(getThemedColor(i));
        c3704ActionBar.setSearchTextColor(getThemedColor(i), false);
        c3704ActionBar.setSearchTextColor(getThemedColor(Theme.key_windowBackgroundWhiteHintText), true);
        return c3704ActionBar;
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
        C3704ActionBar actionBar = getActionBar();
        actionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.fork.ui.dialog.SelectNetworkBottomSheet$setupListeners$1$1
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
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

            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onTextChanged(EditText editText) {
                boolean isBlank;
                boolean z;
                List list;
                boolean contains;
                boolean z2;
                boolean contains2;
                Intrinsics.checkNotNullParameter(editText, "editText");
                String obj = editText.getText().toString();
                SelectNetworkBottomSheet selectNetworkBottomSheet = SelectNetworkBottomSheet.this;
                isBlank = StringsKt__StringsJVMKt.isBlank(obj);
                selectNetworkBottomSheet.isSearching = !isBlank;
                z = SelectNetworkBottomSheet.this.isSearching;
                if (z) {
                    SelectNetworkBottomSheet selectNetworkBottomSheet2 = SelectNetworkBottomSheet.this;
                    list = selectNetworkBottomSheet2.networks;
                    SelectNetworkBottomSheet selectNetworkBottomSheet3 = SelectNetworkBottomSheet.this;
                    ArrayList arrayList = new ArrayList();
                    for (Object obj2 : list) {
                        NetworkItem networkItem = (NetworkItem) obj2;
                        if (networkItem instanceof NetworkItem.All) {
                            z2 = StringsKt__StringsKt.contains((CharSequence) selectNetworkBottomSheet3.getResourceManager().getString(C3632R.string.networks_all), (CharSequence) obj, true);
                        } else if (networkItem instanceof NetworkItem.Crypto) {
                            NetworkItem.Crypto crypto = (NetworkItem.Crypto) networkItem;
                            contains = StringsKt__StringsKt.contains((CharSequence) crypto.getFullName(), (CharSequence) obj, true);
                            if (!contains) {
                                contains2 = StringsKt__StringsKt.contains((CharSequence) crypto.getShortName(), (CharSequence) obj, true);
                                if (!contains2) {
                                    z2 = false;
                                }
                            }
                            z2 = true;
                        } else {
                            throw new NoWhenBranchMatchedException();
                        }
                        if (z2) {
                            arrayList.add(obj2);
                        }
                    }
                    selectNetworkBottomSheet2.filteredNetworks = arrayList;
                }
                SelectNetworkBottomSheet.this.getListAdapter().notifyDataSetChanged();
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
                SelectNetworkBottomSheet.setupListeners$lambda$8$lambda$7(SelectNetworkBottomSheet.this, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$8$lambda$7(SelectNetworkBottomSheet this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.getCurrentItemsList().isEmpty() || this$0.getCurrentNetworkPosition() == i) {
            return;
        }
        this$0.selectedNetwork = this$0.getCurrentItemsList().get(i);
        this$0.getListAdapter().notifyItemChanged(this$0.getCurrentNetworkPosition());
        this$0.getListAdapter().notifyItemChanged(i);
        this$0.dismiss();
        Callbacks$Callback1<NetworkItem.Crypto> callbacks$Callback1 = this$0.selectNetworkDelegate;
        NetworkItem networkItem = this$0.selectedNetwork;
        callbacks$Callback1.invoke(networkItem instanceof NetworkItem.Crypto ? (NetworkItem.Crypto) networkItem : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateLayout() {
        if (getListView().getChildCount() <= 0) {
            setScrollOffsetY(getListView().getPaddingTop());
            return;
        }
        View childAt = getListView().getChildAt(0);
        if (childAt != null) {
            int top = childAt.getTop();
            int max = Math.max(top, 0);
            runShadowAnimation(top < 0);
            if (this.scrollOffsetY != max) {
                setScrollOffsetY(max);
            }
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
            int m107dp;
            SelectNetworkBottomSheet.this.ignoreLayout = true;
            setPadding(0, AndroidUtilities.statusBarHeight, 0, 0);
            SelectNetworkBottomSheet.this.ignoreLayout = false;
            SelectNetworkBottomSheet.this.itemWidth = AndroidUtilities.m106px(View.MeasureSpec.getSize(i)) - 12;
            ViewExtKt.setHorizontalPadding(this, 6);
            double min = Math.min(SelectNetworkBottomSheet.this.getCurrentItemsList().size(), 6.5d);
            if (SelectNetworkBottomSheet.this.getCurrentItemsList().isEmpty()) {
                m107dp = AndroidUtilities.m107dp(250);
            } else {
                m107dp = (int) (min * AndroidUtilities.m107dp(56));
            }
            int actionBarHeight = SelectNetworkBottomSheet.this.getActionBarHeight() + m107dp + ((BottomSheet) SelectNetworkBottomSheet.this).backgroundPaddingTop + AndroidUtilities.statusBarHeight;
            int size = View.MeasureSpec.getSize(i2);
            int i3 = size / 5;
            int i4 = actionBarHeight < i3 * 3 ? size - actionBarHeight : i3 * 2;
            if (i4 != 0 && actionBarHeight < size) {
                i4 -= size - actionBarHeight;
            }
            if (i4 == 0) {
                i4 = ((BottomSheet) SelectNetworkBottomSheet.this).backgroundPaddingTop;
            }
            if (SelectNetworkBottomSheet.this.getListView().getPaddingTop() != i4) {
                SelectNetworkBottomSheet.this.ignoreLayout = true;
                SelectNetworkBottomSheet.this.getListView().setPadding(0, i4, 0, 0);
                SelectNetworkBottomSheet.this.ignoreLayout = false;
            }
            this.fullHeight = actionBarHeight >= size;
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(Math.min(actionBarHeight, size), 1073741824));
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
            int m107dp = (SelectNetworkBottomSheet.this.scrollOffsetY - ((BottomSheet) SelectNetworkBottomSheet.this).backgroundPaddingTop) + AndroidUtilities.m107dp(6);
            int m107dp2 = (SelectNetworkBottomSheet.this.scrollOffsetY - ((BottomSheet) SelectNetworkBottomSheet.this).backgroundPaddingTop) - AndroidUtilities.m107dp(13);
            int measuredHeight = getMeasuredHeight() + AndroidUtilities.m107dp(15) + ((BottomSheet) SelectNetworkBottomSheet.this).backgroundPaddingTop;
            int i2 = AndroidUtilities.statusBarHeight;
            int i3 = m107dp2 + i2;
            int i4 = m107dp + i2;
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
                this.rect.set(((BottomSheet) SelectNetworkBottomSheet.this).backgroundPaddingLeft, ((BottomSheet) SelectNetworkBottomSheet.this).backgroundPaddingTop + i3, getMeasuredWidth() - ((BottomSheet) SelectNetworkBottomSheet.this).backgroundPaddingLeft, ((BottomSheet) SelectNetworkBottomSheet.this).backgroundPaddingTop + i3 + AndroidUtilities.m107dp(24));
                canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(12) * f, AndroidUtilities.m107dp(12) * f, Theme.dialogs_onlineCirclePaint);
            }
            int m107dp3 = AndroidUtilities.m107dp(36);
            this.rect.set((getMeasuredWidth() - m107dp3) / 2.0f, i4, (getMeasuredWidth() + m107dp3) / 2.0f, i4 + AndroidUtilities.m107dp(4));
            Theme.dialogs_onlineCirclePaint.setColor(SelectNetworkBottomSheet.this.getThemedColor(Theme.key_sheet_scrollUp));
            canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(2), AndroidUtilities.m107dp(2), Theme.dialogs_onlineCirclePaint);
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
                String internalString = LocaleController.getInternalString(C3632R.string.wallet_network_type_dialog_search_empty);
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
            int lastIndex2;
            Intrinsics.checkNotNullParameter(holder, "holder");
            int itemViewType = holder.getItemViewType();
            if (itemViewType == IdFabric$ViewTypes.NETWORK_CELL) {
                View view = holder.itemView;
                Intrinsics.checkNotNull(view, "null cannot be cast to non-null type com.iMe.ui.custom.ImageTextCheckCell");
                ImageTextCheckCell imageTextCheckCell = (ImageTextCheckCell) view;
                SelectNetworkBottomSheet selectNetworkBottomSheet = SelectNetworkBottomSheet.this;
                NetworkItem networkItem = (NetworkItem) selectNetworkBottomSheet.getCurrentItemsList().get(i);
                if (networkItem instanceof NetworkItem.All) {
                    String string = selectNetworkBottomSheet.getResourceManager().getString(C3632R.string.networks_all);
                    Integer valueOf = Integer.valueOf(C3632R.C3634drawable.fork_ic_all_networks);
                    boolean areEqual = Intrinsics.areEqual(selectNetworkBottomSheet.getCurrentItemsList().get(i), selectNetworkBottomSheet.selectedNetwork);
                    lastIndex2 = CollectionsKt__CollectionsKt.getLastIndex(selectNetworkBottomSheet.getCurrentItemsList());
                    imageTextCheckCell.setupViewData(string, (r13 & 2) != 0 ? null : null, (r13 & 4) != 0 ? null : valueOf, areEqual, lastIndex2 != i);
                } else if (networkItem instanceof NetworkItem.Crypto) {
                    NetworkItem.Crypto crypto = (NetworkItem.Crypto) networkItem;
                    String fullName = crypto.getFullName();
                    String logoUrl = crypto.getLogoUrl();
                    boolean areEqual2 = Intrinsics.areEqual(selectNetworkBottomSheet.getCurrentItemsList().get(i), selectNetworkBottomSheet.selectedNetwork);
                    lastIndex = CollectionsKt__CollectionsKt.getLastIndex(selectNetworkBottomSheet.getCurrentItemsList());
                    imageTextCheckCell.setupViewData(fullName, (r13 & 2) != 0 ? null : logoUrl, (r13 & 4) != 0 ? null : null, areEqual2, lastIndex != i);
                }
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

        public final SelectNetworkBottomSheet newInstance(Context context, NetworkItem selectedNetwork, List<? extends NetworkItem> networksItems, Callbacks$Callback1<NetworkItem.Crypto> selectNetworkDelegate) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(selectedNetwork, "selectedNetwork");
            Intrinsics.checkNotNullParameter(networksItems, "networksItems");
            Intrinsics.checkNotNullParameter(selectNetworkDelegate, "selectNetworkDelegate");
            return new SelectNetworkBottomSheet(context, selectedNetwork, networksItems, selectNetworkDelegate, null);
        }
    }
}
