package com.iMe.p031ui.wallet.home.tabs.crypto.settings;

import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.InputFilter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableKt;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.chad.library.adapter.base.listener.OnLoadMoreListener;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.iMe.common.IdFabric$Menu;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.p024ui.dialog.SelectNetworkBottomSheet;
import com.iMe.fork.p024ui.view.MovingCheckCell;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.state.GlobalState;
import com.iMe.model.wallet.crypto.TokensScreenType;
import com.iMe.model.wallet.home.FoundTokenItem;
import com.iMe.p031ui.adapter.provider.FoundTokenProvider;
import com.iMe.p031ui.adapter.provider.GlobalStateProvider;
import com.iMe.p031ui.base.mvp.LoadMoreView;
import com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p031ui.custom.NetworkTypeView;
import com.iMe.p031ui.custom.state.GlobalStateLayout;
import com.iMe.p031ui.wallet.crypto.token.TokenManagementFragment;
import com.iMe.p031ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment;
import com.iMe.p031ui.wallet.home.tabs.crypto.settings.adapter.FoundTokensRecycleAdapter;
import com.iMe.p031ui.wallet.home.tabs.crypto.settings.adapter.diff.TokensSearchDiffCallback;
import com.iMe.p031ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyBottomSheetDialog;
import com.iMe.storage.data.locale.prefs.model.TokenDisplaySettings;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import com.iMe.utils.helper.GlideHelper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p042mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.databinding.ForkFragmentWalletHomeCryptoTokensBinding;
import org.telegram.messenger.databinding.ForkRecycleItemGlobalStateBinding;
import org.telegram.messenger.databinding.ForkRecycleItemWalletTokensHeaderBinding;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.C3485ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Components.EditTextBoldCursor;
import org.telegram.p043ui.Components.RecyclerListView;
/* compiled from: WalletHomeCryptoTokensSettingsFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment */
/* loaded from: classes4.dex */
public final class WalletHomeCryptoTokensSettingsFragment extends WalletAuthBaseFragment implements WalletHomeCryptoTokensSettingsView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletHomeCryptoTokensSettingsFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletHomeCryptoTokensSettingsFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoTokensBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private int globalStateRow;
    private int headerRow;
    private final boolean isPinAvailable;
    private boolean isSearching;
    private final Lazy mainAdapter$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private int rowCount;
    private final TokensScreenType screenType;
    private final Lazy searchRecycleAdapter$delegate;
    private int tokensEndRow;
    private int tokensStartRow;

    public /* synthetic */ WalletHomeCryptoTokensSettingsFragment(TokensScreenType tokensScreenType, DefaultConstructorMarker defaultConstructorMarker) {
        this(tokensScreenType);
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public /* synthetic */ void resetLoadMore() {
        LoadMoreView.CC.$default$resetLoadMore(this);
    }

    public final TokensScreenType getScreenType() {
        return this.screenType;
    }

    private WalletHomeCryptoTokensSettingsFragment(TokensScreenType tokensScreenType) {
        Lazy lazy;
        Lazy lazy2;
        this.screenType = tokensScreenType;
        Function0<WalletHomeCryptoTokensSettingsPresenter> function0 = new Function0<WalletHomeCryptoTokensSettingsPresenter>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final WalletHomeCryptoTokensSettingsPresenter invoke() {
                Lazy lazy3;
                final WalletHomeCryptoTokensSettingsFragment walletHomeCryptoTokensSettingsFragment = WalletHomeCryptoTokensSettingsFragment.this;
                final Function0<ParametersHolder> function02 = new Function0<ParametersHolder>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$presenter$2.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final ParametersHolder invoke() {
                        return ParametersHolderKt.parametersOf(WalletHomeCryptoTokensSettingsFragment.this.getScreenType());
                    }
                };
                lazy3 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletHomeCryptoTokensSettingsPresenter>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final WalletHomeCryptoTokensSettingsPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function03 = function02;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(WalletHomeCryptoTokensSettingsPresenter.class), qualifier, function03);
                    }
                });
                return (WalletHomeCryptoTokensSettingsPresenter) lazy3.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletHomeCryptoTokensSettingsPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<FoundTokensRecycleAdapter>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.home.tabs.crypto.settings.adapter.FoundTokensRecycleAdapter, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final FoundTokensRecycleAdapter invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(FoundTokensRecycleAdapter.class), qualifier, function02);
            }
        });
        this.searchRecycleAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentWalletHomeCryptoTokensBinding>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentWalletHomeCryptoTokensBinding invoke() {
                return ForkFragmentWalletHomeCryptoTokensBinding.inflate(BaseFragmentExtKt.getLayoutInflater(WalletHomeCryptoTokensSettingsFragment.this));
            }
        }, 1, (Object) null);
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<ListAdapter>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$mainAdapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final WalletHomeCryptoTokensSettingsFragment.ListAdapter invoke() {
                return new WalletHomeCryptoTokensSettingsFragment.ListAdapter();
            }
        });
        this.mainAdapter$delegate = lazy2;
        this.isPinAvailable = Intrinsics.areEqual(tokensScreenType, TokensScreenType.Crypto.INSTANCE);
        this.headerRow = -1;
        this.globalStateRow = -1;
        this.tokensStartRow = -1;
        this.tokensEndRow = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WalletHomeCryptoTokensSettingsPresenter getPresenter() {
        return (WalletHomeCryptoTokensSettingsPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final FoundTokensRecycleAdapter getSearchRecycleAdapter() {
        return (FoundTokensRecycleAdapter) this.searchRecycleAdapter$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ForkFragmentWalletHomeCryptoTokensBinding getBinding() {
        return (ForkFragmentWalletHomeCryptoTokensBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ListAdapter getMainAdapter() {
        return (ListAdapter) this.mainAdapter$delegate.getValue();
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupRecycleViews();
        setupColors();
        setupListeners();
        FrameLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        WalletHomeCryptoTokensSettingsPresenter.saveSettings$default(getPresenter(), false, 1, null);
        super.onFragmentDestroy();
    }

    @Override // com.iMe.p031ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView
    public void renderSearchResultItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        BaseQuickAdapter.setDiffNewData$default(getSearchRecycleAdapter(), items, null, 2, null);
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        FoundTokensRecycleAdapter searchRecycleAdapter = getSearchRecycleAdapter();
        searchRecycleAdapter.getLoadMoreModule().loadMoreComplete();
        BaseQuickAdapter.setDiffNewData$default(searchRecycleAdapter, items, null, 2, null);
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreComplete() {
        getSearchRecycleAdapter().getLoadMoreModule().loadMoreEnd(true);
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreError() {
        getSearchRecycleAdapter().getLoadMoreModule().loadMoreFail();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        return ColorUtils.calculateLuminance(getThemedColor(this.isSearching ? Theme.key_actionBarActionModeDefault : Theme.key_actionBarDefault)) > 0.699999988079071d;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$$ExternalSyntheticLambda3
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletHomeCryptoTokensSettingsFragment.getThemeDescriptions$lambda$1(WalletHomeCryptoTokensSettingsFragment.this);
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray), new ThemeDescription(getBinding().recycleMain, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{MovingCheckCell.class}, null, null, null, Theme.key_windowBackgroundWhite), new ThemeDescription(getBinding().recycleMain, 0, new Class[]{MovingCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrack), new ThemeDescription(getBinding().recycleMain, 0, new Class[]{MovingCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackChecked), new ThemeDescription(getBinding().recycleMain, 0, new Class[]{MovingCheckCell.class}, new String[]{"titleView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlackText), new ThemeDescription(getBinding().recycleMain, 0, new Class[]{MovingCheckCell.class}, new String[]{"moveIconView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_stickers_menu));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$1(WalletHomeCryptoTokensSettingsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getMainAdapter().notifyDataSetChanged();
        this$0.setupColors();
    }

    @Override // com.iMe.p031ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView
    public void renderTokensSettings(List<? extends BaseNode> items) {
        int i;
        Intrinsics.checkNotNullParameter(items, "items");
        boolean z = false;
        this.rowCount = 0;
        TokensScreenType tokensScreenType = this.screenType;
        if (tokensScreenType instanceof TokensScreenType.Binance) {
            i = -1;
        } else if (!(tokensScreenType instanceof TokensScreenType.Crypto)) {
            throw new NoWhenBranchMatchedException();
        } else {
            this.rowCount = 0 + 1;
            i = 0;
        }
        this.headerRow = i;
        if (!(items instanceof Collection) || !items.isEmpty()) {
            Iterator<T> it = items.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((BaseNode) it.next()) instanceof GlobalStateItem) {
                    z = true;
                    break;
                }
            }
        }
        if (z) {
            int i2 = this.rowCount;
            this.rowCount = i2 + 1;
            this.globalStateRow = i2;
            this.tokensStartRow = -1;
            this.tokensEndRow = -1;
        } else {
            this.globalStateRow = -1;
            int i3 = this.rowCount;
            this.tokensStartRow = i3;
            int size = i3 + items.size();
            this.rowCount = size;
            this.tokensEndRow = size;
        }
        getMainAdapter().notifyDataSetChanged();
    }

    @Override // com.iMe.p031ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView
    public void showTokenFamilyDialog(List<FoundTokenItem> foundTokens) {
        Intrinsics.checkNotNullParameter(foundTokens, "foundTokens");
        showDialog(TokenFamilyBottomSheetDialog.Companion.newInstance(foundTokens, this));
    }

    private final void setupActionBar() {
        C3485ActionBar c3485ActionBar = this.actionBar;
        c3485ActionBar.setBackButtonImage(C3419R.C3421drawable.ic_ab_back);
        c3485ActionBar.setTitle(LocaleController.getInternalString(C3419R.string.wallet_home_crypto_tokens_settings_toolbar_title));
        setupSearchIfNeeded();
        c3485ActionBar.setActionBarMenuOnItemClick(new C3485ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3485ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    WalletHomeCryptoTokensSettingsFragment.this.finishFragment();
                }
            }
        });
    }

    private final void setupSearchIfNeeded() {
        if (Intrinsics.areEqual(this.screenType, TokensScreenType.Crypto.INSTANCE)) {
            ActionBarMenuItem actionBarMenuItemSearchListener = this.actionBar.createMenu().addItem(IdFabric$Menu.SEARCH, C3419R.C3421drawable.ic_ab_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$setupSearchIfNeeded$1
                @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
                public void onSearchExpand() {
                    ForkFragmentWalletHomeCryptoTokensBinding binding;
                    WalletHomeCryptoTokensSettingsFragment.this.isSearching = true;
                    WalletHomeCryptoTokensSettingsFragment.this.setupActionBarColors();
                    binding = WalletHomeCryptoTokensSettingsFragment.this.getBinding();
                    RecyclerView recycleMain = binding.recycleMain;
                    Intrinsics.checkNotNullExpressionValue(recycleMain, "recycleMain");
                    ViewExtKt.gone$default(recycleMain, false, 1, null);
                    RecyclerView recycleTokensSearch = binding.recycleTokensSearch;
                    Intrinsics.checkNotNullExpressionValue(recycleTokensSearch, "recycleTokensSearch");
                    ViewExtKt.visible$default(recycleTokensSearch, false, 1, null);
                }

                @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
                public void onSearchCollapse() {
                    ForkFragmentWalletHomeCryptoTokensBinding binding;
                    WalletHomeCryptoTokensSettingsFragment.this.isSearching = false;
                    WalletHomeCryptoTokensSettingsFragment.this.setupActionBarColors();
                    binding = WalletHomeCryptoTokensSettingsFragment.this.getBinding();
                    RecyclerView recycleMain = binding.recycleMain;
                    Intrinsics.checkNotNullExpressionValue(recycleMain, "recycleMain");
                    ViewExtKt.visible$default(recycleMain, false, 1, null);
                    RecyclerView recycleTokensSearch = binding.recycleTokensSearch;
                    Intrinsics.checkNotNullExpressionValue(recycleTokensSearch, "recycleTokensSearch");
                    ViewExtKt.gone$default(recycleTokensSearch, false, 1, null);
                    WalletHomeCryptoTokensSettingsFragment.this.getPresenter().onQueryUpdate("");
                }

                @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
                public void onTextChanged(EditText editText) {
                    Intrinsics.checkNotNullParameter(editText, "editText");
                    WalletHomeCryptoTokensSettingsFragment.this.getPresenter().onQueryUpdate(editText.getText().toString());
                }
            });
            EditTextBoldCursor searchField = actionBarMenuItemSearchListener.getSearchField();
            searchField.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(128)});
            searchField.setImeOptions(Integer.MIN_VALUE);
            actionBarMenuItemSearchListener.setSearchFieldHint(getResourceManager().getString(C3419R.string.token_search_hint));
            actionBarMenuItemSearchListener.setContentDescription(LocaleController.getString("Search", C3419R.string.Search));
        }
    }

    private final void setupRecycleViews() {
        ForkFragmentWalletHomeCryptoTokensBinding binding = getBinding();
        RecyclerView recyclerView = binding.recycleMain;
        recyclerView.setFocusable(true);
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
        recyclerView.setAdapter(getMainAdapter());
        new ItemTouchHelper(new TouchHelperCallback()).attachToRecyclerView(recyclerView);
        RecyclerView recyclerView2 = binding.recycleTokensSearch;
        FoundTokensRecycleAdapter searchRecycleAdapter = getSearchRecycleAdapter();
        searchRecycleAdapter.getGlobalStateProvider().setMatchParentHeight(true);
        FoundTokenProvider foundTokenProvider = searchRecycleAdapter.getFoundTokenProvider();
        foundTokenProvider.setTickerVisible(true);
        foundTokenProvider.setLastItemDividerVisible(true);
        searchRecycleAdapter.setDiffCallback(new TokensSearchDiffCallback());
        setupLoadMore(searchRecycleAdapter);
        recyclerView2.setAdapter(searchRecycleAdapter);
        recyclerView2.setLayoutManager(new LinearLayoutManager(getParentActivity()));
    }

    private final void setupLoadMore(FoundTokensRecycleAdapter foundTokensRecycleAdapter) {
        BaseLoadMoreModule loadMoreModule = foundTokensRecycleAdapter.getLoadMoreModule();
        loadMoreModule.setPreLoadNumber(5);
        loadMoreModule.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnLoadMoreListener
            public final void onLoadMore() {
                WalletHomeCryptoTokensSettingsFragment.setupLoadMore$lambda$13$lambda$12$lambda$11(WalletHomeCryptoTokensSettingsFragment.this);
            }
        });
        foundTokensRecycleAdapter.setAnimationEnable(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupLoadMore$lambda$13$lambda$12$lambda$11(WalletHomeCryptoTokensSettingsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        WalletHomeCryptoTokensSettingsPresenter.searchByQuery$default(this$0.getPresenter(), false, false, 3, null);
    }

    private final void setupListeners() {
        final FoundTokensRecycleAdapter searchRecycleAdapter = getSearchRecycleAdapter();
        GlobalStateProvider globalStateProvider = searchRecycleAdapter.getGlobalStateProvider();
        globalStateProvider.setOnRetryButtonClickAction(new Function0<Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$setupListeners$1$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                WalletHomeCryptoTokensSettingsPresenter.reloadSearchResults$default(WalletHomeCryptoTokensSettingsFragment.this.getPresenter(), false, 1, null);
            }
        });
        globalStateProvider.setOnEmptyButtonClickAction(new WalletHomeCryptoTokensSettingsFragment$setupListeners$1$1$2(this));
        searchRecycleAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletHomeCryptoTokensSettingsFragment.setupListeners$lambda$16$lambda$15(FoundTokensRecycleAdapter.this, this, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$16$lambda$15(FoundTokensRecycleAdapter this_with, WalletHomeCryptoTokensSettingsFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        BaseNode baseNode = (BaseNode) this_with.getItem(i);
        if (baseNode instanceof FoundTokenItem) {
            this$0.getPresenter().onFoundTokenClick((FoundTokenItem) baseNode);
        }
    }

    private final void setupColors() {
        ForkFragmentWalletHomeCryptoTokensBinding binding = getBinding();
        binding.getRoot().setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
        binding.recycleTokensSearch.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
        C3485ActionBar c3485ActionBar = this.actionBar;
        int i = Theme.key_windowBackgroundWhiteBlackText;
        c3485ActionBar.setSearchTextColor(getThemedColor(i), false);
        c3485ActionBar.setSearchTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText), true);
        c3485ActionBar.setSearchCursorColor(getThemedColor(i));
        AndroidUtilities.setLightStatusBar(getParentActivity().getWindow(), isLightStatusBar());
        setupActionBarColors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupActionBarColors() {
        C3485ActionBar c3485ActionBar = this.actionBar;
        if (this.isSearching) {
            c3485ActionBar.setBackgroundColor(getThemedColor(Theme.key_actionBarActionModeDefault));
            c3485ActionBar.setItemsColor(getThemedColor(Theme.key_actionBarActionModeDefaultIcon), false);
            c3485ActionBar.setItemsBackgroundColor(getThemedColor(Theme.key_actionBarActionModeDefaultSelector), false);
            return;
        }
        c3485ActionBar.setBackgroundColor(getThemedColor(Theme.key_actionBarDefault));
        c3485ActionBar.setItemsColor(getThemedColor(Theme.key_actionBarDefaultIcon), false);
        c3485ActionBar.setItemsBackgroundColor(getThemedColor(Theme.key_actionBarDefaultSelector), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showNetworksDialog(final NetworkTypeView networkTypeView) {
        SelectNetworkBottomSheet.Companion companion = SelectNetworkBottomSheet.Companion;
        Activity parentActivity = getParentActivity();
        List<Network> networksByBlockchains = NetworksHelper.INSTANCE.getNetworksByBlockchains(getCryptoAccessManager().getLoggedIndWalletsBlockchains());
        Network network = getPresenter().getNetwork();
        Callbacks$Callback1<Network> callbacks$Callback1 = new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$$ExternalSyntheticLambda2
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletHomeCryptoTokensSettingsFragment.showNetworksDialog$lambda$20(NetworkTypeView.this, this, (Network) obj);
            }
        };
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(companion.newInstance(parentActivity, network, networksByBlockchains, callbacks$Callback1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showNetworksDialog$lambda$20(NetworkTypeView networkTypeView, WalletHomeCryptoTokensSettingsFragment this$0, Network selectedNetwork) {
        Intrinsics.checkNotNullParameter(networkTypeView, "$networkTypeView");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(selectedNetwork, "selectedNetwork");
        networkTypeView.setNetwork(selectedNetwork);
        this$0.getPresenter().setNetworkType(selectedNetwork.getId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openAddTokenScreen() {
        presentFragment(TokenManagementFragment.Companion.newInstance(TokenManagementFragment.ScreenType.Import.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WalletHomeCryptoTokensSettingsFragment.kt */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$ListAdapter */
    /* loaded from: classes4.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        private final Lazy tokenLogoSize$delegate;

        public ListAdapter() {
            Lazy lazy;
            lazy = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$ListAdapter$tokenLogoSize$2
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final Integer invoke() {
                    return Integer.valueOf(AndroidUtilities.m73dp(35.0f));
                }
            });
            this.tokenLogoSize$delegate = lazy;
        }

        private final int getTokenLogoSize() {
            return ((Number) this.tokenLogoSize$delegate.getValue()).intValue();
        }

        public final void swapElements(int i, int i2) {
            WalletHomeCryptoTokensSettingsFragment.this.getPresenter().swapTokensPositions(i - WalletHomeCryptoTokensSettingsFragment.this.tokensStartRow, i2 - WalletHomeCryptoTokensSettingsFragment.this.tokensStartRow);
            notifyItemMoved(i, i2);
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return holder.getItemViewType() == IdFabric$ViewTypes.MOVING_CHECK_CELL && !(holder.getAdapterPosition() == WalletHomeCryptoTokensSettingsFragment.this.tokensStartRow && WalletHomeCryptoTokensSettingsFragment.this.isPinAvailable);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return WalletHomeCryptoTokensSettingsFragment.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return i == WalletHomeCryptoTokensSettingsFragment.this.headerRow ? IdFabric$ViewTypes.HEADER_CELL : i == WalletHomeCryptoTokensSettingsFragment.this.globalStateRow ? IdFabric$ViewTypes.GLOBAL_STATE : IdFabric$ViewTypes.MOVING_CHECK_CELL;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            LinearLayout linearLayout;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.HEADER_CELL) {
                final ForkRecycleItemWalletTokensHeaderBinding inflate = ForkRecycleItemWalletTokensHeaderBinding.inflate(BaseFragmentExtKt.getLayoutInflater(WalletHomeCryptoTokensSettingsFragment.this));
                final WalletHomeCryptoTokensSettingsFragment walletHomeCryptoTokensSettingsFragment = WalletHomeCryptoTokensSettingsFragment.this;
                inflate.textAddToken.setText(walletHomeCryptoTokensSettingsFragment.getResourceManager().getString(C3419R.string.wallet_token_settings_add_custom_tokens));
                inflate.textNetwork.setText(walletHomeCryptoTokensSettingsFragment.getResourceManager().getString(C3419R.string.wallet_network_type_dialog_title));
                inflate.textTitleDisplayedTokens.setText(walletHomeCryptoTokensSettingsFragment.getResourceManager().getString(C3419R.string.wallet_token_settings_displayed_tokens));
                LinearLayout linearAddToken = inflate.linearAddToken;
                Intrinsics.checkNotNullExpressionValue(linearAddToken, "linearAddToken");
                ViewExtKt.safeThrottledClick$default(linearAddToken, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$ListAdapter$onCreateViewHolder$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(View view) {
                        invoke2(view);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(View it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        WalletHomeCryptoTokensSettingsFragment.this.openAddTokenScreen();
                    }
                }, 1, null);
                LinearLayout linearNetwork = inflate.linearNetwork;
                Intrinsics.checkNotNullExpressionValue(linearNetwork, "linearNetwork");
                ViewExtKt.safeThrottledClick$default(linearNetwork, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$ListAdapter$onCreateViewHolder$1$2
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(View view) {
                        invoke2(view);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(View it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        WalletHomeCryptoTokensSettingsFragment walletHomeCryptoTokensSettingsFragment2 = WalletHomeCryptoTokensSettingsFragment.this;
                        NetworkTypeView networkTypeView = inflate.networkTypeView;
                        Intrinsics.checkNotNullExpressionValue(networkTypeView, "networkTypeView");
                        walletHomeCryptoTokensSettingsFragment2.showNetworksDialog(networkTypeView);
                    }
                }, 1, null);
                NetworkTypeView networkTypeView = inflate.networkTypeView;
                Intrinsics.checkNotNullExpressionValue(networkTypeView, "networkTypeView");
                ViewExtKt.safeThrottledClick$default(networkTypeView, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$ListAdapter$onCreateViewHolder$1$3
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(View view) {
                        invoke2(view);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(View it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        WalletHomeCryptoTokensSettingsFragment walletHomeCryptoTokensSettingsFragment2 = WalletHomeCryptoTokensSettingsFragment.this;
                        NetworkTypeView networkTypeView2 = inflate.networkTypeView;
                        Intrinsics.checkNotNullExpressionValue(networkTypeView2, "networkTypeView");
                        walletHomeCryptoTokensSettingsFragment2.showNetworksDialog(networkTypeView2);
                    }
                }, 1, null);
                LinearLayout root = inflate.getRoot();
                Intrinsics.checkNotNullExpressionValue(root, "inflate(layoutInflater).…                   }.root");
                linearLayout = root;
            } else if (i == IdFabric$ViewTypes.GLOBAL_STATE) {
                GlobalStateLayout root2 = ForkRecycleItemGlobalStateBinding.inflate(BaseFragmentExtKt.getLayoutInflater(WalletHomeCryptoTokensSettingsFragment.this)).getRoot();
                final WalletHomeCryptoTokensSettingsFragment walletHomeCryptoTokensSettingsFragment2 = WalletHomeCryptoTokensSettingsFragment.this;
                GlobalState settingsGlobalState = walletHomeCryptoTokensSettingsFragment2.getPresenter().getSettingsGlobalState();
                if (settingsGlobalState != null) {
                    root2.setInternalState(settingsGlobalState);
                    root2.setRetryButtonClickListener(new Function0<Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$ListAdapter$onCreateViewHolder$2$1
                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ Unit invoke() {
                            invoke2();
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke  reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            WalletHomeCryptoTokensSettingsFragment.this.getPresenter().reloadSettings();
                        }
                    });
                }
                Intrinsics.checkNotNullExpressionValue(root2, "inflate(layoutInflater).…                        }");
                linearLayout = root2;
            } else {
                Activity parentActivity = WalletHomeCryptoTokensSettingsFragment.this.getParentActivity();
                Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
                MovingCheckCell movingCheckCell = new MovingCheckCell(parentActivity);
                AppCompatImageView iconView = movingCheckCell.getIconView();
                ViewGroup.LayoutParams layoutParams = iconView.getLayoutParams();
                Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
                layoutParams.width = getTokenLogoSize();
                layoutParams.height = getTokenLogoSize();
                iconView.setLayoutParams(layoutParams);
                linearLayout = movingCheckCell;
            }
            linearLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(linearLayout);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, final int i) {
            List<AppCompatImageView> listOf;
            List<LinearLayout> listOf2;
            Intrinsics.checkNotNullParameter(holder, "holder");
            int itemViewType = holder.getItemViewType();
            if (itemViewType == IdFabric$ViewTypes.HEADER_CELL) {
                ForkRecycleItemWalletTokensHeaderBinding bind = ForkRecycleItemWalletTokensHeaderBinding.bind(holder.itemView);
                WalletHomeCryptoTokensSettingsFragment walletHomeCryptoTokensSettingsFragment = WalletHomeCryptoTokensSettingsFragment.this;
                listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new AppCompatImageView[]{bind.imageAddToken, bind.imageNetwork});
                for (AppCompatImageView onBindViewHolder$lambda$8$lambda$5 : listOf) {
                    Intrinsics.checkNotNullExpressionValue(onBindViewHolder$lambda$8$lambda$5, "onBindViewHolder$lambda$8$lambda$5");
                    ViewExtKt.setImageColor(onBindViewHolder$lambda$8$lambda$5, walletHomeCryptoTokensSettingsFragment.getThemedColor(Theme.key_windowBackgroundWhiteGrayIcon));
                }
                listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new LinearLayout[]{bind.linearAddToken, bind.linearNetwork});
                for (LinearLayout onBindViewHolder$lambda$8$lambda$6 : listOf2) {
                    Intrinsics.checkNotNullExpressionValue(onBindViewHolder$lambda$8$lambda$6, "onBindViewHolder$lambda$8$lambda$6");
                    ViewExtKt.setRippleBackground(onBindViewHolder$lambda$8$lambda$6, true);
                }
                int i2 = Theme.key_windowBackgroundWhiteBlackText;
                AppCompatTextView textAddToken = bind.textAddToken;
                Intrinsics.checkNotNullExpressionValue(textAddToken, "textAddToken");
                AppCompatTextView textNetwork = bind.textNetwork;
                Intrinsics.checkNotNullExpressionValue(textNetwork, "textNetwork");
                ViewExtKt.setTextsColor(i2, textAddToken, textNetwork);
                TextView onBindViewHolder$lambda$8$lambda$7 = bind.textTitleDisplayedTokens;
                onBindViewHolder$lambda$8$lambda$7.setTextColor(walletHomeCryptoTokensSettingsFragment.getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
                Intrinsics.checkNotNullExpressionValue(onBindViewHolder$lambda$8$lambda$7, "onBindViewHolder$lambda$8$lambda$7");
                ViewExtKt.withMediumTypeface(onBindViewHolder$lambda$8$lambda$7);
                bind.networkTypeView.setNetwork(walletHomeCryptoTokensSettingsFragment.getPresenter().getNetwork());
            } else if (itemViewType == IdFabric$ViewTypes.GLOBAL_STATE) {
                ForkRecycleItemGlobalStateBinding bind2 = ForkRecycleItemGlobalStateBinding.bind(holder.itemView);
                WalletHomeCryptoTokensSettingsFragment walletHomeCryptoTokensSettingsFragment2 = WalletHomeCryptoTokensSettingsFragment.this;
                GlobalStateLayout root = bind2.getRoot();
                GlobalState settingsGlobalState = walletHomeCryptoTokensSettingsFragment2.getPresenter().getSettingsGlobalState();
                if (settingsGlobalState == null) {
                    return;
                }
                root.setInternalState(settingsGlobalState);
            } else if (itemViewType == IdFabric$ViewTypes.MOVING_CHECK_CELL) {
                View view = holder.itemView;
                Intrinsics.checkNotNull(view, "null cannot be cast to non-null type com.iMe.fork.ui.view.MovingCheckCell");
                final MovingCheckCell movingCheckCell = (MovingCheckCell) view;
                final WalletHomeCryptoTokensSettingsFragment walletHomeCryptoTokensSettingsFragment3 = WalletHomeCryptoTokensSettingsFragment.this;
                movingCheckCell.setBackgroundColor(walletHomeCryptoTokensSettingsFragment3.getThemedColor(Theme.key_windowBackgroundWhite));
                Pair<TokenDetailed, TokenDisplaySettings> tokenSetting = walletHomeCryptoTokensSettingsFragment3.getPresenter().getTokenSetting(i - walletHomeCryptoTokensSettingsFragment3.tokensStartRow);
                TokenDetailed component1 = tokenSetting.component1();
                TokenDisplaySettings component2 = tokenSetting.component2();
                movingCheckCell.setTextAndCheck(component1.getName(), component2 != null && component2.isVisible(), i != walletHomeCryptoTokensSettingsFragment3.tokensEndRow - 1);
                movingCheckCell.setSecondText(component1.getTicker());
                movingCheckCell.setPinned(component1.isCoin());
                TokensScreenType screenType = walletHomeCryptoTokensSettingsFragment3.getScreenType();
                if (screenType instanceof TokensScreenType.Binance) {
                    Activity parentActivity = walletHomeCryptoTokensSettingsFragment3.getParentActivity();
                    Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
                    GlideHelper.loadBinanceImageAsBitmap(parentActivity, component1.getAvatarUrl(), new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$ListAdapter$$ExternalSyntheticLambda0
                        @Override // com.iMe.fork.utils.Callbacks$Callback1
                        public final void invoke(Object obj) {
                            MovingCheckCell.this.setImage((Bitmap) obj);
                        }
                    });
                } else if (screenType instanceof TokensScreenType.Crypto) {
                    GradientDrawable gradientDrawable = new GradientDrawable();
                    gradientDrawable.setShape(1);
                    gradientDrawable.setColor(ColorStateList.valueOf(ContextCompat.getColor(movingCheckCell.getContext(), C3419R.C3420color.placeholder_color)));
                    movingCheckCell.setImage(DrawableKt.toBitmap$default(gradientDrawable, AndroidUtilities.m72dp(40), AndroidUtilities.m72dp(40), null, 4, null));
                    Activity parentActivity2 = walletHomeCryptoTokensSettingsFragment3.getParentActivity();
                    Intrinsics.checkNotNullExpressionValue(parentActivity2, "parentActivity");
                    GlideHelper.loadImageAsBitmap(parentActivity2, component1.getAvatarUrl(), new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$ListAdapter$$ExternalSyntheticLambda0
                        @Override // com.iMe.fork.utils.Callbacks$Callback1
                        public final void invoke(Object obj) {
                            MovingCheckCell.this.setImage((Bitmap) obj);
                        }
                    }, true);
                }
                if (component1.isCoin()) {
                    return;
                }
                ViewExtKt.safeThrottledClick$default(movingCheckCell, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$ListAdapter$onBindViewHolder$3$4
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(View view2) {
                        invoke2(view2);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(View it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        MovingCheckCell movingCheckCell2 = MovingCheckCell.this;
                        movingCheckCell2.setChecked(!movingCheckCell2.isChecked());
                        walletHomeCryptoTokensSettingsFragment3.getPresenter().switchTokenVisibility(i - walletHomeCryptoTokensSettingsFragment3.tokensStartRow, MovingCheckCell.this.isChecked());
                    }
                }, 1, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WalletHomeCryptoTokensSettingsFragment.kt */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$TouchHelperCallback */
    /* loaded from: classes4.dex */
    public final class TouchHelperCallback extends ItemTouchHelper.Callback {
        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean isLongPressDragEnabled() {
            return true;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
            Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        }

        public TouchHelperCallback() {
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
            RecyclerView.Adapter adapter = recyclerView.getAdapter();
            Intrinsics.checkNotNull(adapter, "null cannot be cast to non-null type com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment.ListAdapter");
            return ItemTouchHelper.Callback.makeMovementFlags(((ListAdapter) adapter).isEnabled(viewHolder) ? 3 : 0, 0);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder source, RecyclerView.ViewHolder target) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(target, "target");
            if (source.getItemViewType() == target.getItemViewType()) {
                if (target.getAdapterPosition() == WalletHomeCryptoTokensSettingsFragment.this.tokensStartRow && WalletHomeCryptoTokensSettingsFragment.this.isPinAvailable) {
                    return false;
                }
                WalletHomeCryptoTokensSettingsFragment.this.getMainAdapter().swapElements(source.getAdapterPosition(), target.getAdapterPosition());
                return true;
            }
            return false;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
            if (i != 0) {
                View view = viewHolder != null ? viewHolder.itemView : null;
                if (view != null) {
                    view.setPressed(true);
                }
            }
            super.onSelectedChanged(viewHolder, i);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
            super.clearView(recyclerView, viewHolder);
            viewHolder.itemView.setPressed(false);
        }
    }

    /* compiled from: WalletHomeCryptoTokensSettingsFragment.kt */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletHomeCryptoTokensSettingsFragment newInstance(TokensScreenType screenType) {
            Intrinsics.checkNotNullParameter(screenType, "screenType");
            return new WalletHomeCryptoTokensSettingsFragment(screenType, null);
        }
    }
}
