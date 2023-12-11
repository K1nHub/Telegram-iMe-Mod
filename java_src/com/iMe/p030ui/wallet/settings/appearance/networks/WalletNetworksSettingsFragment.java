package com.iMe.p030ui.wallet.settings.appearance.networks;

import android.content.Context;
import android.text.InputFilter;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.iMe.common.IdFabric$Menu;
import com.iMe.model.state.GlobalState;
import com.iMe.model.wallet.settings.NetworkSettingsItem;
import com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p030ui.custom.state.GlobalStateLayout;
import com.iMe.p030ui.wallet.settings.appearance.networks.adapter.WalletNetworksSettingsRecycleAdapter;
import com.iMe.p030ui.wallet.settings.appearance.networks.adapter.diff.NetworksSettingsDiffCallback;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
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
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.databinding.ForkFragmentWalletNetworksSettingsBinding;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Components.EditTextBoldCursor;
/* compiled from: WalletNetworksSettingsFragment.kt */
/* renamed from: com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsFragment */
/* loaded from: classes4.dex */
public final class WalletNetworksSettingsFragment extends WalletAuthBaseFragment implements WalletNetworksSettingsView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletNetworksSettingsFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletNetworksSettingsFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNetworksSettingsBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final Lazy networkRecycleAdapter$delegate;
    private final MoxyKtxDelegate presenter$delegate;

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return true;
    }

    public WalletNetworksSettingsFragment() {
        Lazy lazy;
        Function0<WalletNetworksSettingsPresenter> function0 = new Function0<WalletNetworksSettingsPresenter>() { // from class: com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final WalletNetworksSettingsPresenter invoke() {
                Lazy lazy2;
                final WalletNetworksSettingsFragment walletNetworksSettingsFragment = WalletNetworksSettingsFragment.this;
                lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletNetworksSettingsPresenter>() { // from class: com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsPresenter] */
                    @Override // kotlin.jvm.functions.Function0
                    public final WalletNetworksSettingsPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function02 = r3;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(WalletNetworksSettingsPresenter.class), qualifier, function02);
                    }
                });
                return (WalletNetworksSettingsPresenter) lazy2.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletNetworksSettingsPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletNetworksSettingsRecycleAdapter>() { // from class: com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.settings.appearance.networks.adapter.WalletNetworksSettingsRecycleAdapter, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final WalletNetworksSettingsRecycleAdapter invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(WalletNetworksSettingsRecycleAdapter.class), qualifier, function02);
            }
        });
        this.networkRecycleAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentWalletNetworksSettingsBinding>() { // from class: com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentWalletNetworksSettingsBinding invoke() {
                return ForkFragmentWalletNetworksSettingsBinding.inflate(BaseFragmentExtKt.getLayoutInflater(WalletNetworksSettingsFragment.this));
            }
        }, 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WalletNetworksSettingsPresenter getPresenter() {
        return (WalletNetworksSettingsPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final WalletNetworksSettingsRecycleAdapter getNetworkRecycleAdapter() {
        return (WalletNetworksSettingsRecycleAdapter) this.networkRecycleAdapter$delegate.getValue();
    }

    private final ForkFragmentWalletNetworksSettingsBinding getBinding() {
        return (ForkFragmentWalletNetworksSettingsBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupColors();
        setupListeners();
        setupRecycleView();
        GlobalStateLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        return ColorUtils.calculateLuminance(getThemedColor(Theme.key_actionBarActionModeDefault)) > 0.699999988079071d;
    }

    @Override // com.iMe.p030ui.wallet.settings.appearance.networks.WalletNetworksSettingsView
    public void renderItems(List<NetworkSettingsItem> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        if (!getBinding().getRoot().isContentState()) {
            getBinding().getRoot().showContent();
        }
        BaseQuickAdapter.setDiffNewData$default(getNetworkRecycleAdapter(), items, null, 2, null);
    }

    @Override // com.iMe.p030ui.wallet.settings.appearance.networks.WalletNetworksSettingsView
    public void renderEmptySearchResults() {
        getBinding().getRoot().setInternalState(GlobalState.Empty.NetworksSearchResult.INSTANCE);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        GlobalStateLayout root = getBinding().getRoot();
        int i = ThemeDescription.FLAG_BACKGROUND;
        final WalletNetworksSettingsRecycleAdapter networkRecycleAdapter = getNetworkRecycleAdapter();
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(root, i, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsFragment$$ExternalSyntheticLambda1
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletNetworksSettingsRecycleAdapter.this.notifyDataSetChanged();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    private final void setupActionBar() {
        C3704ActionBar c3704ActionBar = this.actionBar;
        c3704ActionBar.setCastShadows(false);
        c3704ActionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        c3704ActionBar.setAllowOverlayTitle(true);
        c3704ActionBar.setTitle(getResourceManager().getString(C3632R.string.networks_settings_title));
        c3704ActionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsFragment$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    WalletNetworksSettingsFragment.this.finishFragment();
                }
            }
        });
        ActionBarMenuItem actionBarMenuItemSearchListener = c3704ActionBar.createMenu().addItem(IdFabric$Menu.SEARCH, C3632R.C3634drawable.ic_ab_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsFragment$setupActionBar$1$2
            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchCollapse() {
                WalletNetworksSettingsPresenter presenter;
                presenter = WalletNetworksSettingsFragment.this.getPresenter();
                presenter.onQueryUpdate("");
            }

            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onTextChanged(EditText editText) {
                WalletNetworksSettingsPresenter presenter;
                Intrinsics.checkNotNullParameter(editText, "editText");
                presenter = WalletNetworksSettingsFragment.this.getPresenter();
                presenter.onQueryUpdate(editText.getText().toString());
            }
        });
        EditTextBoldCursor searchField = actionBarMenuItemSearchListener.getSearchField();
        searchField.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(32)});
        searchField.setImeOptions(Integer.MIN_VALUE);
        actionBarMenuItemSearchListener.setSearchFieldHint(getResourceManager().getString(C3632R.string.wallet_network_type_dialog_search_hint));
        actionBarMenuItemSearchListener.setContentDescription(LocaleController.getString("Search", C3632R.string.Search));
    }

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recycleSettings;
        WalletNetworksSettingsRecycleAdapter networkRecycleAdapter = getNetworkRecycleAdapter();
        networkRecycleAdapter.setDiffCallback(new NetworksSettingsDiffCallback());
        recyclerView.setAdapter(networkRecycleAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
    }

    private final void setupColors() {
        getBinding().getRoot().setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        C3704ActionBar c3704ActionBar = this.actionBar;
        c3704ActionBar.setBackgroundColor(getThemedColor(Theme.key_actionBarActionModeDefault));
        int i = Theme.key_windowBackgroundWhiteBlackText;
        c3704ActionBar.setTitleColor(getThemedColor(i));
        c3704ActionBar.setItemsColor(getThemedColor(i), false);
        c3704ActionBar.setItemsBackgroundColor(getThemedColor(Theme.key_actionBarActionModeDefaultSelector), false);
        c3704ActionBar.setSearchTextColor(getThemedColor(i), false);
        c3704ActionBar.setSearchTextColor(getThemedColor(Theme.key_windowBackgroundWhiteHintText), true);
        c3704ActionBar.setSearchCursorColor(getThemedColor(i));
    }

    private final void setupListeners() {
        getNetworkRecycleAdapter().setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletNetworksSettingsFragment.setupListeners$lambda$6(WalletNetworksSettingsFragment.this, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$6(WalletNetworksSettingsFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.getPresenter().onItemClick(this$0.getNetworkRecycleAdapter().getItem(i));
    }

    /* compiled from: WalletNetworksSettingsFragment.kt */
    /* renamed from: com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsFragment$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletNetworksSettingsFragment newInstance() {
            return new WalletNetworksSettingsFragment();
        }
    }
}
