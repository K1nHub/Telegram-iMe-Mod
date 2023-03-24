package com.smedialink.p031ui.shop;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScrollerCustom;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import com.google.android.material.appbar.AppBarLayout;
import com.smedialink.bots.data.model.BotStatus;
import com.smedialink.bots.data.repository.CountriesRepository;
import com.smedialink.bots.domain.model.BotLanguage;
import com.smedialink.bots.domain.model.ShopItem;
import com.smedialink.bots.domain.model.SmartTag;
import com.smedialink.bots.usecase.AiBotsManager;
import com.smedialink.p031ui.languages.LanguagesActivity;
import com.smedialink.p031ui.shop.NeurobotsStoreActivity;
import com.smedialink.p031ui.shop.view.GridBotsPageView;
import com.smedialink.p031ui.shop.view.ListBotsPageView;
import com.smedialink.p031ui.shop.view.adapter.BotsAdapter;
import com.smedialink.p031ui.shop.view.custom.CustomTabLayout;
import com.smedialink.p031ui.shop.view.custom.NonSwipeableViewPager;
import io.reactivex.Completable;
import io.reactivex.Observable;
import io.reactivex.Single;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.solovyev.android.checkout.Purchase;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.p048ui.ActionBar.ActionBarMenu;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.C3366ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.p048ui.Components.SizeNotifierFrameLayout;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: NeurobotsStoreActivity.kt */
/* renamed from: com.smedialink.ui.shop.NeurobotsStoreActivity */
/* loaded from: classes3.dex */
public final class NeurobotsStoreActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    public static final Companion Companion = new Companion(null);
    private CoordinatorLayout baseViewsContainer;
    private ActionBarMenuItem changeCountryItem;
    private TextView nothingFoundPlaceholder;
    private PagerAdapter pagerAdapter;
    private SizeNotifierFrameLayout rootContainer;
    private Disposable searchDisposable;
    private ActionBarMenuItem searchItem;
    private LinearLayoutManager searchListLayoutManager;
    private ActionBarMenuItem searchMenuItem;
    private BotsAdapter searchResultsAdapter;
    private RecyclerListView searchResultsList;
    private final PublishSubject<String> searchSubject;
    private final boolean swipeBackEnabled;
    private CustomTabLayout tabLayout;
    private final long userId;
    private NonSwipeableViewPager viewPager;

    /* renamed from: me */
    private TLRPC$User f376me = MessagesController.getInstance(UserConfig.selectedAccount).getUser(Long.valueOf(UserConfig.getInstance(UserConfig.selectedAccount).getClientUserId()));
    private final Map<Integer, View> tabViews = new LinkedHashMap();
    private final CompositeDisposable disposable = new CompositeDisposable();

    /* compiled from: NeurobotsStoreActivity.kt */
    /* renamed from: com.smedialink.ui.shop.NeurobotsStoreActivity$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[BotStatus.values().length];
            try {
                iArr[BotStatus.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BotStatus.ENABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BotStatus.PAID.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[BotStatus.AVAILABLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[BotStatus.UPDATE_AVAILABLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[BotStatus.DOWNLOADING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[StoreTab.values().length];
            try {
                iArr2[StoreTab.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateBotStatus$lambda$13() {
    }

    public NeurobotsStoreActivity() {
        PublishSubject<String> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create()");
        this.searchSubject = create;
        this.userId = UserConfig.getInstance(this.currentAccount).getClientUserId();
    }

    /* compiled from: NeurobotsStoreActivity.kt */
    /* renamed from: com.smedialink.ui.shop.NeurobotsStoreActivity$StoreTab */
    /* loaded from: classes3.dex */
    public enum StoreTab {
        ALL(C3301R.string.neurobots_store_tab_all),
        POPULAR(C3301R.string.neurobots_store_tab_popular),
        FREE(C3301R.string.neurobots_store_tab_free),
        MY(C3301R.string.neurobots_store_tab_my);
        
        private final int resId;

        StoreTab(int i) {
            this.resId = i;
        }

        public final int getResId() {
            return this.resId;
        }
    }

    /* compiled from: NeurobotsStoreActivity.kt */
    /* renamed from: com.smedialink.ui.shop.NeurobotsStoreActivity$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isFree(String str) {
            boolean isBlank;
            if (str != null) {
                isBlank = StringsKt__StringsJVMKt.isBlank(str);
                if (!isBlank) {
                    return false;
                }
            }
            return true;
        }

        public final boolean isMy(BotStatus status) {
            Set of;
            Intrinsics.checkNotNullParameter(status, "status");
            of = SetsKt__SetsKt.setOf((Object[]) new BotStatus[]{BotStatus.AVAILABLE, BotStatus.UPDATE_AVAILABLE, BotStatus.DOWNLOADING, BotStatus.ENABLED, BotStatus.DISABLED});
            return of.contains(status);
        }

        public final boolean isPopular(List<SmartTag> tags) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(tags, "tags");
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(tags, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (SmartTag smartTag : tags) {
                arrayList.add(smartTag.getId());
            }
            return arrayList.contains("popular");
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        BotLanguage.Companion companion = BotLanguage.Companion;
        CountriesRepository companion2 = CountriesRepository.Companion.getInstance(context);
        String str = this.f376me.phone;
        Intrinsics.checkNotNullExpressionValue(str, "me.phone");
        String langCode = LocaleController.getInstance().getCurrentLocaleInfo().getLangCode();
        Intrinsics.checkNotNullExpressionValue(langCode, "getInstance().currentLocaleInfo.langCode");
        BotLanguage fromValue = companion.fromValue(companion2.getCurrentBotLanguage(str, langCode));
        StoreTab[] values = StoreTab.values();
        int length = values.length;
        int i = 0;
        int i2 = 0;
        while (i2 < length) {
            StoreTab storeTab = values[i2];
            int i3 = i + 1;
            if (storeTab == StoreTab.ALL) {
                this.tabViews.put(Integer.valueOf(i), new GridBotsPageView(this.disposable, context, fromValue, this.currentAccount));
            } else {
                this.tabViews.put(Integer.valueOf(i), new ListBotsPageView(storeTab, this.disposable, fromValue, context, this.currentAccount));
            }
            i2++;
            i = i3;
        }
        this.rootContainer = new SizeNotifierFrameLayout(context);
        this.baseViewsContainer = new CoordinatorLayout(context);
        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.rootContainer;
        TextView textView = null;
        if (sizeNotifierFrameLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rootContainer");
            sizeNotifierFrameLayout = null;
        }
        CoordinatorLayout coordinatorLayout = this.baseViewsContainer;
        if (coordinatorLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseViewsContainer");
            coordinatorLayout = null;
        }
        sizeNotifierFrameLayout.addView(coordinatorLayout, LayoutHelper.createFrame(-1, -1, 48));
        CustomTabLayout customTabLayout = new CustomTabLayout(context);
        this.tabLayout = customTabLayout;
        if (Build.VERSION.SDK_INT >= 21) {
            customTabLayout.setElevation(6.0f);
            CustomTabLayout customTabLayout2 = this.tabLayout;
            if (customTabLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tabLayout");
                customTabLayout2 = null;
            }
            customTabLayout2.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            CustomTabLayout customTabLayout3 = this.tabLayout;
            if (customTabLayout3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tabLayout");
                customTabLayout3 = null;
            }
            customTabLayout3.setSelectedTabIndicatorColor(Theme.getColor("chats_actionBackground"));
        }
        CustomTabLayout customTabLayout4 = this.tabLayout;
        if (customTabLayout4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tabLayout");
            customTabLayout4 = null;
        }
        customTabLayout4.setTabMode(0);
        CustomTabLayout customTabLayout5 = this.tabLayout;
        if (customTabLayout5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tabLayout");
            customTabLayout5 = null;
        }
        customTabLayout5.setTabTextColors(Theme.getColor("windowBackgroundWhiteBlackText"), Theme.getColor("chats_actionBackground"));
        this.viewPager = new NonSwipeableViewPager(context, null, 2, null);
        this.pagerAdapter = buildNewTabsAdapter();
        NonSwipeableViewPager nonSwipeableViewPager = this.viewPager;
        if (nonSwipeableViewPager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewPager");
            nonSwipeableViewPager = null;
        }
        PagerAdapter pagerAdapter = this.pagerAdapter;
        if (pagerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pagerAdapter");
            pagerAdapter = null;
        }
        nonSwipeableViewPager.setAdapter(pagerAdapter);
        NonSwipeableViewPager nonSwipeableViewPager2 = this.viewPager;
        if (nonSwipeableViewPager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewPager");
            nonSwipeableViewPager2 = null;
        }
        nonSwipeableViewPager2.setOffscreenPageLimit(3);
        CustomTabLayout customTabLayout6 = this.tabLayout;
        if (customTabLayout6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tabLayout");
            customTabLayout6 = null;
        }
        NonSwipeableViewPager nonSwipeableViewPager3 = this.viewPager;
        if (nonSwipeableViewPager3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewPager");
            nonSwipeableViewPager3 = null;
        }
        customTabLayout6.setupWithViewPager(nonSwipeableViewPager3);
        AppBarLayout appBarLayout = new AppBarLayout(context);
        CustomTabLayout customTabLayout7 = this.tabLayout;
        if (customTabLayout7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tabLayout");
            customTabLayout7 = null;
        }
        appBarLayout.addView(customTabLayout7, LayoutHelper.createAppBar(-1, -2));
        CustomTabLayout customTabLayout8 = this.tabLayout;
        if (customTabLayout8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tabLayout");
            customTabLayout8 = null;
        }
        ViewGroup.LayoutParams layoutParams = customTabLayout8.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type com.google.android.material.appbar.AppBarLayout.LayoutParams");
        ((AppBarLayout.LayoutParams) layoutParams).setScrollFlags(21);
        CoordinatorLayout coordinatorLayout2 = this.baseViewsContainer;
        if (coordinatorLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseViewsContainer");
            coordinatorLayout2 = null;
        }
        coordinatorLayout2.addView(appBarLayout, LayoutHelper.createCoordinator(-1, -2));
        CoordinatorLayout coordinatorLayout3 = this.baseViewsContainer;
        if (coordinatorLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseViewsContainer");
            coordinatorLayout3 = null;
        }
        NonSwipeableViewPager nonSwipeableViewPager4 = this.viewPager;
        if (nonSwipeableViewPager4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewPager");
            nonSwipeableViewPager4 = null;
        }
        coordinatorLayout3.addView(nonSwipeableViewPager4, LayoutHelper.createCoordinator(-1, -1));
        NonSwipeableViewPager nonSwipeableViewPager5 = this.viewPager;
        if (nonSwipeableViewPager5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewPager");
            nonSwipeableViewPager5 = null;
        }
        ViewGroup.LayoutParams layoutParams2 = nonSwipeableViewPager5.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams2, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams");
        ((CoordinatorLayout.LayoutParams) layoutParams2).setBehavior(new AppBarLayout.ScrollingViewBehavior());
        NonSwipeableViewPager nonSwipeableViewPager6 = this.viewPager;
        if (nonSwipeableViewPager6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewPager");
            nonSwipeableViewPager6 = null;
        }
        nonSwipeableViewPager6.requestLayout();
        SizeNotifierFrameLayout sizeNotifierFrameLayout2 = this.rootContainer;
        if (sizeNotifierFrameLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rootContainer");
            sizeNotifierFrameLayout2 = null;
        }
        this.fragmentView = sizeNotifierFrameLayout2;
        ActionBarMenu createMenu = this.actionBar.createMenu();
        int i4 = C3301R.C3303drawable.ic_ab_search;
        this.searchMenuItem = createMenu.addItem(104, i4);
        this.changeCountryItem = createMenu.addItem(105, C3301R.C3303drawable.fork_ic_language);
        ActionBarMenuItem actionBarMenuItemSearchListener = createMenu.addItem(0, i4).setIsSearchField(true).setActionBarMenuItemSearchListener(new NeurobotsStoreActivity$createView$2(this));
        this.searchItem = actionBarMenuItemSearchListener;
        if (actionBarMenuItemSearchListener != null) {
            actionBarMenuItemSearchListener.setSearchFieldHint(LocaleController.getString("Search", C3301R.string.Search));
        }
        ActionBarMenuItem actionBarMenuItem = this.searchItem;
        if (actionBarMenuItem != null) {
            actionBarMenuItem.setVisibility(8);
        }
        this.actionBar.setBackButtonImage(C3301R.C3303drawable.ic_ab_back);
        this.actionBar.setTitle(LocaleController.getInternalString(C3301R.string.neurobots_store_screen_title));
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setActionBarMenuOnItemClick(new C3366ActionBar.ActionBarMenuOnItemClick() { // from class: com.smedialink.ui.shop.NeurobotsStoreActivity$createView$3
            @Override // org.telegram.p048ui.ActionBar.C3366ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i5) {
                C3366ActionBar c3366ActionBar;
                SizeNotifierFrameLayout sizeNotifierFrameLayout3;
                if (i5 == -1) {
                    NeurobotsStoreActivity.this.finishFragment();
                } else if (i5 != 104) {
                    if (i5 != 105) {
                        return;
                    }
                    NeurobotsStoreActivity.this.presentFragment(new LanguagesActivity());
                } else {
                    c3366ActionBar = ((BaseFragment) NeurobotsStoreActivity.this).actionBar;
                    c3366ActionBar.openSearchField("", false);
                    sizeNotifierFrameLayout3 = NeurobotsStoreActivity.this.rootContainer;
                    if (sizeNotifierFrameLayout3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("rootContainer");
                        sizeNotifierFrameLayout3 = null;
                    }
                    AndroidUtilities.showKeyboard(sizeNotifierFrameLayout3);
                }
            }
        });
        this.searchResultsList = new RecyclerListView(context);
        BotsAdapter botsAdapter = new BotsAdapter(this.currentAccount);
        botsAdapter.setHasStableIds(true);
        this.searchResultsAdapter = botsAdapter;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context) { // from class: com.smedialink.ui.shop.NeurobotsStoreActivity$createView$5
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return false;
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i5) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                Intrinsics.checkNotNullParameter(state, "state");
                LinearSmoothScrollerCustom linearSmoothScrollerCustom = new LinearSmoothScrollerCustom(recyclerView.getContext(), 0);
                linearSmoothScrollerCustom.setTargetPosition(i5);
                startSmoothScroll(linearSmoothScrollerCustom);
            }
        };
        this.searchListLayoutManager = linearLayoutManager;
        linearLayoutManager.setOrientation(1);
        RecyclerListView recyclerListView = this.searchResultsList;
        if (recyclerListView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchResultsList");
            recyclerListView = null;
        }
        LinearLayoutManager linearLayoutManager2 = this.searchListLayoutManager;
        if (linearLayoutManager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchListLayoutManager");
            linearLayoutManager2 = null;
        }
        recyclerListView.setLayoutManager(linearLayoutManager2);
        RecyclerListView recyclerListView2 = this.searchResultsList;
        if (recyclerListView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchResultsList");
            recyclerListView2 = null;
        }
        BotsAdapter botsAdapter2 = this.searchResultsAdapter;
        if (botsAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchResultsAdapter");
            botsAdapter2 = null;
        }
        recyclerListView2.setAdapter(botsAdapter2);
        RecyclerListView recyclerListView3 = this.searchResultsList;
        if (recyclerListView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchResultsList");
            recyclerListView3 = null;
        }
        recyclerListView3.setVisibility(8);
        SizeNotifierFrameLayout sizeNotifierFrameLayout3 = this.rootContainer;
        if (sizeNotifierFrameLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rootContainer");
            sizeNotifierFrameLayout3 = null;
        }
        RecyclerListView recyclerListView4 = this.searchResultsList;
        if (recyclerListView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchResultsList");
            recyclerListView4 = null;
        }
        sizeNotifierFrameLayout3.addView(recyclerListView4, LayoutHelper.createLinear(-1, -1));
        TextView textView2 = new TextView(context);
        this.nothingFoundPlaceholder = textView2;
        textView2.setText(LocaleController.getInternalString(C3301R.string.neurobots_store_search_empty));
        TextView textView3 = this.nothingFoundPlaceholder;
        if (textView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nothingFoundPlaceholder");
            textView3 = null;
        }
        textView3.setTextSize(1, 20.0f);
        TextView textView4 = this.nothingFoundPlaceholder;
        if (textView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nothingFoundPlaceholder");
            textView4 = null;
        }
        textView4.setTextColor(Theme.getColor("emptyListPlaceholder"));
        TextView textView5 = this.nothingFoundPlaceholder;
        if (textView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nothingFoundPlaceholder");
            textView5 = null;
        }
        textView5.setVisibility(4);
        TextView textView6 = this.nothingFoundPlaceholder;
        if (textView6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nothingFoundPlaceholder");
            textView6 = null;
        }
        textView6.setPadding(AndroidUtilities.m51dp(20.0f), AndroidUtilities.m51dp(20.0f), AndroidUtilities.m51dp(18.0f), 0);
        SizeNotifierFrameLayout sizeNotifierFrameLayout4 = this.rootContainer;
        if (sizeNotifierFrameLayout4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rootContainer");
            sizeNotifierFrameLayout4 = null;
        }
        TextView textView7 = this.nothingFoundPlaceholder;
        if (textView7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nothingFoundPlaceholder");
        } else {
            textView = textView7;
        }
        sizeNotifierFrameLayout4.addView(textView, LayoutHelper.createFrame(-2, -2.0f));
        View fragmentView = this.fragmentView;
        Intrinsics.checkNotNullExpressionValue(fragmentView, "fragmentView");
        return fragmentView;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onActivityResultFragment(int i, int i2, Intent intent) {
        if (intent != null) {
            ApplicationLoader.purchaseHelper.onActivityResult(i, i2, intent);
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.botButtonClicked);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.botItemClicked);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.botLanguageChanged);
        ApplicationLoader.smartBotsManager.listenForRemoteBotUpdates(new AiBotsManager.FirebaseSnapshotCallback() { // from class: com.smedialink.ui.shop.NeurobotsStoreActivity$onFragmentCreate$1
            @Override // com.smedialink.bots.usecase.AiBotsManager.FirebaseSnapshotCallback
            public void onSuccess() {
                ApplicationLoader.purchaseHelper.preloadPurchasesInfo();
            }
        });
        return true;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return this.swipeBackEnabled;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        this.disposable.clear();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.botButtonClicked);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.botItemClicked);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.botLanguageChanged);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        int i3 = 0;
        if (i == NotificationCenter.botButtonClicked) {
            Object obj = args[0];
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.smedialink.bots.domain.model.ShopItem");
            ShopItem shopItem = (ShopItem) obj;
            int i4 = WhenMappings.$EnumSwitchMapping$0[shopItem.getStatus().ordinal()];
            if (i4 == 1) {
                updateBotStatus(shopItem.getBotId(), BotStatus.ENABLED);
            } else if (i4 == 2) {
                updateBotStatus(shopItem.getBotId(), BotStatus.DISABLED);
            } else if (i4 != 3) {
                if (i4 == 4 || i4 == 5) {
                    initiateBotDownloading(shopItem);
                }
            } else {
                String sku = shopItem.getSku();
                if (sku != null) {
                    purchaseItem(sku);
                }
            }
        } else if (i == NotificationCenter.botItemClicked) {
            Object obj2 = args[0];
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type com.smedialink.bots.domain.model.ShopItem");
            ShopItem shopItem2 = (ShopItem) obj2;
            Bundle bundle = new Bundle();
            bundle.putString("botId", shopItem2.getBotId());
            bundle.putString("title", shopItem2.getTitle());
            presentFragment(new BotInfoActivity(bundle));
        } else if (i == NotificationCenter.botLanguageChanged) {
            BotLanguage.Companion companion = BotLanguage.Companion;
            CountriesRepository.Companion companion2 = CountriesRepository.Companion;
            Activity parentActivity = getParentActivity();
            Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
            CountriesRepository companion3 = companion2.getInstance(parentActivity);
            String str = this.f376me.phone;
            Intrinsics.checkNotNullExpressionValue(str, "me.phone");
            String langCode = LocaleController.getInstance().getCurrentLocaleInfo().getLangCode();
            Intrinsics.checkNotNullExpressionValue(langCode, "getInstance().currentLocaleInfo.langCode");
            BotLanguage fromValue = companion.fromValue(companion3.getCurrentBotLanguage(str, langCode));
            StoreTab[] values = StoreTab.values();
            int length = values.length;
            int i5 = 0;
            while (i3 < length) {
                int i6 = i5 + 1;
                if (WhenMappings.$EnumSwitchMapping$1[values[i3].ordinal()] == 1) {
                    View view = this.tabViews.get(Integer.valueOf(i5));
                    Intrinsics.checkNotNull(view, "null cannot be cast to non-null type com.smedialink.ui.shop.view.GridBotsPageView");
                    GridBotsPageView gridBotsPageView = (GridBotsPageView) view;
                    gridBotsPageView.setBotLanguage(fromValue);
                    gridBotsPageView.subscribeToContent();
                } else {
                    View view2 = this.tabViews.get(Integer.valueOf(i5));
                    Intrinsics.checkNotNull(view2, "null cannot be cast to non-null type com.smedialink.ui.shop.view.ListBotsPageView");
                    ListBotsPageView listBotsPageView = (ListBotsPageView) view2;
                    listBotsPageView.setBotLanguage(fromValue);
                    listBotsPageView.subscribeToContent();
                }
                i3++;
                i5 = i6;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void listenForSearchResults() {
        Disposable disposable = this.searchDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        AiBotsManager aiBotsManager = ApplicationLoader.smartBotsManager;
        BotLanguage.Companion companion = BotLanguage.Companion;
        CountriesRepository.Companion companion2 = CountriesRepository.Companion;
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        CountriesRepository companion3 = companion2.getInstance(parentActivity);
        String str = this.f376me.phone;
        Intrinsics.checkNotNullExpressionValue(str, "me.phone");
        String langCode = LocaleController.getInstance().getCurrentLocaleInfo().getLangCode();
        Intrinsics.checkNotNullExpressionValue(langCode, "getInstance().currentLocaleInfo.langCode");
        BotLanguage fromValue = companion.fromValue(companion3.getCurrentBotLanguage(str, langCode));
        String langCode2 = LocaleController.getInstance().getCurrentLocaleInfo().getLangCode();
        Intrinsics.checkNotNullExpressionValue(langCode2, "getInstance().currentLocaleInfo.langCode");
        Observable combineLatest = Observable.combineLatest(aiBotsManager.getAllBotsObservable(fromValue, langCode2).distinctUntilChanged().subscribeOn(Schedulers.m693io()), this.searchSubject.subscribeOn(Schedulers.m693io()), NeurobotsStoreActivity$$ExternalSyntheticLambda1.INSTANCE);
        final NeurobotsStoreActivity$listenForSearchResults$2 neurobotsStoreActivity$listenForSearchResults$2 = NeurobotsStoreActivity$listenForSearchResults$2.INSTANCE;
        Observable observeOn = combineLatest.map(new Function() { // from class: com.smedialink.ui.shop.NeurobotsStoreActivity$$ExternalSyntheticLambda7
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List listenForSearchResults$lambda$9;
                listenForSearchResults$lambda$9 = NeurobotsStoreActivity.listenForSearchResults$lambda$9(Function1.this, obj);
                return listenForSearchResults$lambda$9;
            }
        }).subscribeOn(Schedulers.m693io()).observeOn(AndroidSchedulers.mainThread());
        final NeurobotsStoreActivity$listenForSearchResults$3 neurobotsStoreActivity$listenForSearchResults$3 = new NeurobotsStoreActivity$listenForSearchResults$3(this);
        Consumer consumer = new Consumer() { // from class: com.smedialink.ui.shop.NeurobotsStoreActivity$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                NeurobotsStoreActivity.listenForSearchResults$lambda$10(Function1.this, obj);
            }
        };
        final NeurobotsStoreActivity$listenForSearchResults$4 neurobotsStoreActivity$listenForSearchResults$4 = NeurobotsStoreActivity$listenForSearchResults$4.INSTANCE;
        Disposable subscribe = observeOn.subscribe(consumer, new Consumer() { // from class: com.smedialink.ui.shop.NeurobotsStoreActivity$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                NeurobotsStoreActivity.listenForSearchResults$lambda$11(Function1.this, obj);
            }
        });
        this.disposable.add(subscribe);
        this.searchDisposable = subscribe;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List listenForSearchResults$lambda$9(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void listenForSearchResults$lambda$10(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void listenForSearchResults$lambda$11(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    private final void initiateBotDownloading(ShopItem shopItem) {
        ApplicationLoader.smartBotsManager.startBotDownloading(shopItem.getBotId(), shopItem.getTitle(), shopItem.getDownloadLink(), this.userId);
    }

    private final void updateBotStatus(String str, BotStatus botStatus) {
        Completable subscribeOn = ApplicationLoader.smartBotsManager.updateBotStatus(str, botStatus).subscribeOn(Schedulers.m693io());
        NeurobotsStoreActivity$$ExternalSyntheticLambda0 neurobotsStoreActivity$$ExternalSyntheticLambda0 = NeurobotsStoreActivity$$ExternalSyntheticLambda0.INSTANCE;
        final NeurobotsStoreActivity$updateBotStatus$2 neurobotsStoreActivity$updateBotStatus$2 = NeurobotsStoreActivity$updateBotStatus$2.INSTANCE;
        this.disposable.add(subscribeOn.subscribe(neurobotsStoreActivity$$ExternalSyntheticLambda0, new Consumer() { // from class: com.smedialink.ui.shop.NeurobotsStoreActivity$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                NeurobotsStoreActivity.updateBotStatus$lambda$14(Function1.this, obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateBotStatus$lambda$14(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    private final void purchaseItem(String str) {
        Single<Purchase> observeOn = ApplicationLoader.purchaseHelper.purchase(str).subscribeOn(Schedulers.m693io()).observeOn(AndroidSchedulers.mainThread());
        final NeurobotsStoreActivity$purchaseItem$1 neurobotsStoreActivity$purchaseItem$1 = new NeurobotsStoreActivity$purchaseItem$1(this);
        Consumer<? super Purchase> consumer = new Consumer() { // from class: com.smedialink.ui.shop.NeurobotsStoreActivity$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                NeurobotsStoreActivity.purchaseItem$lambda$16(Function1.this, obj);
            }
        };
        final NeurobotsStoreActivity$purchaseItem$2 neurobotsStoreActivity$purchaseItem$2 = NeurobotsStoreActivity$purchaseItem$2.INSTANCE;
        this.disposable.add(observeOn.subscribe(consumer, new Consumer() { // from class: com.smedialink.ui.shop.NeurobotsStoreActivity$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                NeurobotsStoreActivity.purchaseItem$lambda$17(Function1.this, obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void purchaseItem$lambda$16(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void purchaseItem$lambda$17(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    private final PagerAdapter buildNewTabsAdapter() {
        return new PagerAdapter() { // from class: com.smedialink.ui.shop.NeurobotsStoreActivity$buildNewTabsAdapter$1
            @Override // androidx.viewpager.widget.PagerAdapter
            public int getCount() {
                Map map;
                map = NeurobotsStoreActivity.this.tabViews;
                return map.size();
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public boolean isViewFromObject(View view, Object o) {
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(o, "o");
                return Intrinsics.areEqual(view, o);
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public Object instantiateItem(ViewGroup container, int i) {
                Map map;
                Intrinsics.checkNotNullParameter(container, "container");
                map = NeurobotsStoreActivity.this.tabViews;
                View view = (View) map.get(Integer.valueOf(i));
                container.addView(view);
                Intrinsics.checkNotNull(view, "null cannot be cast to non-null type android.view.View");
                return view;
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public void destroyItem(ViewGroup container, int i, Object child) {
                Intrinsics.checkNotNullParameter(container, "container");
                Intrinsics.checkNotNullParameter(child, "child");
                container.removeView((View) child);
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public CharSequence getPageTitle(int i) {
                String internalString = LocaleController.getInternalString(NeurobotsStoreActivity.StoreTab.values()[i].getResId());
                return internalString == null ? "" : internalString;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List listenForSearchResults$lambda$8(List items, String query) {
        boolean contains$default;
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(query, "query");
        ArrayList arrayList = new ArrayList();
        for (Object obj : items) {
            String lowerCase = ((ShopItem) obj).getSearchField().toLowerCase();
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase()");
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) query, false, 2, (Object) null);
            if (contains$default) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }
}
