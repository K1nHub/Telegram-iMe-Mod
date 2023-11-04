package com.iMe.p030ui.wallet.home.tabs.binancepay;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.binance.android.binancepay.api.BinancePay;
import com.binance.android.binancepay.api.BinancePayFactory;
import com.binance.android.opensdk.api.BinanceAPI;
import com.binance.android.opensdk.api.BinanceAPIFactory;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.listener.OnItemChildClickListener;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.chad.library.adapter.base.listener.OnItemLongClickListener;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.mapper.wallet.select.SelectableMappingKt;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.ItemOptionsModel;
import com.iMe.model.wallet.crypto.TokensScreenType;
import com.iMe.model.wallet.details.TokenDetailsArgs;
import com.iMe.model.wallet.home.CardButtonItem;
import com.iMe.model.wallet.home.TokenSortingData;
import com.iMe.model.wallet.home.pay.BinanceAccountItem;
import com.iMe.model.wallet.home.pay.BinanceBalanceItem;
import com.iMe.model.wallet.home.pay.BinancePayScreenArgs;
import com.iMe.model.wallet.send.WalletSendScreenType;
import com.iMe.model.wallet.swap.WalletSwapScreenType;
import com.iMe.model.wallet.transfer.TransferScreenArgs;
import com.iMe.p030ui.adapter.provider.BannerProvider;
import com.iMe.p030ui.custom.SlopSwipeRefreshLayout;
import com.iMe.p030ui.wallet.home.details.WalletTokenDetailsFragment;
import com.iMe.p030ui.wallet.home.tabs.WalletHomeTabFragment;
import com.iMe.p030ui.wallet.home.tabs.binancepay.adapter.BinancePayRecycleAdapter;
import com.iMe.p030ui.wallet.home.tabs.binancepay.adapter.diff.BinancePayDiffCallback;
import com.iMe.p030ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryFragment;
import com.iMe.p030ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment;
import com.iMe.p030ui.wallet.send.WalletSendFragment;
import com.iMe.p030ui.wallet.swap.process.WalletSwapProcessFragment;
import com.iMe.storage.data.utils.system.AndroidActivityHolder;
import com.iMe.utils.dialogs.DialogExtKt;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.common.ContextExtKt;
import com.iMe.utils.extentions.common.RecycleViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
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
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.databinding.ForkFragmentWalletHomeBinancePayBinding;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.ActionIntroActivity;
import org.telegram.p043ui.Components.ItemOptions;
import org.telegram.p043ui.ManageLinksActivity;
/* compiled from: WalletHomeBinancePayFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayFragment */
/* loaded from: classes4.dex */
public final class WalletHomeBinancePayFragment extends WalletHomeTabFragment implements WalletHomeBinancePayView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletHomeBinancePayFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletHomeBinancePayFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final Lazy binanceApi$delegate;
    private final Lazy binancePayApi$delegate;
    private final Lazy binancePayRecycleAdapter$delegate;
    private final ResettableLazy binding$delegate;
    private ItemOptions itemOptions;
    private final MoxyKtxDelegate presenter$delegate;
    private View viewItem;

    public WalletHomeBinancePayFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Function0<WalletHomeBinancePayPresenter> function0 = new Function0<WalletHomeBinancePayPresenter>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final WalletHomeBinancePayPresenter invoke() {
                Lazy lazy4;
                final WalletHomeBinancePayFragment walletHomeBinancePayFragment = WalletHomeBinancePayFragment.this;
                final Function0<ParametersHolder> function02 = new Function0<ParametersHolder>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayFragment$presenter$2.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final ParametersHolder invoke() {
                        BinanceAPI binanceApi;
                        BinancePay binancePayApi;
                        binanceApi = WalletHomeBinancePayFragment.this.getBinanceApi();
                        binancePayApi = WalletHomeBinancePayFragment.this.getBinancePayApi();
                        return ParametersHolderKt.parametersOf(binanceApi, binancePayApi);
                    }
                };
                lazy4 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletHomeBinancePayPresenter>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final WalletHomeBinancePayPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function03 = function02;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(WalletHomeBinancePayPresenter.class), qualifier, function03);
                    }
                });
                return (WalletHomeBinancePayPresenter) lazy4.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletHomeBinancePayPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<BinancePayRecycleAdapter>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.wallet.home.tabs.binancepay.adapter.BinancePayRecycleAdapter] */
            @Override // kotlin.jvm.functions.Function0
            public final BinancePayRecycleAdapter invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(BinancePayRecycleAdapter.class), qualifier, function02);
            }
        });
        this.binancePayRecycleAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentWalletHomeBinancePayBinding>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentWalletHomeBinancePayBinding invoke() {
                return ForkFragmentWalletHomeBinancePayBinding.inflate(BaseFragmentExtKt.getLayoutInflater(WalletHomeBinancePayFragment.this));
            }
        }, 1, (Object) null);
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<BinanceAPI>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayFragment$binanceApi$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final BinanceAPI invoke() {
                Activity parentActivity = WalletHomeBinancePayFragment.this.getParentActivity();
                Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
                return BinanceAPIFactory.createAPI(parentActivity);
            }
        });
        this.binanceApi$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<BinancePay>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayFragment$binancePayApi$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final BinancePay invoke() {
                BinancePayFactory.Companion companion = BinancePayFactory.Companion;
                Activity parentActivity = WalletHomeBinancePayFragment.this.getParentActivity();
                Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
                return companion.getBinancePay(parentActivity);
            }
        });
        this.binancePayApi$delegate = lazy3;
    }

    private final WalletHomeBinancePayPresenter getPresenter() {
        return (WalletHomeBinancePayPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final BinancePayRecycleAdapter getBinancePayRecycleAdapter() {
        return (BinancePayRecycleAdapter) this.binancePayRecycleAdapter$delegate.getValue();
    }

    private final ForkFragmentWalletHomeBinancePayBinding getBinding() {
        return (ForkFragmentWalletHomeBinancePayBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BinanceAPI getBinanceApi() {
        return (BinanceAPI) this.binanceApi$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BinancePay getBinancePayApi() {
        return (BinancePay) this.binancePayApi$delegate.getValue();
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupColors();
        setupListeners();
        setupWalletRecycleView();
        setupSwipeRefresh();
        SlopSwipeRefreshLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayFragment$$ExternalSyntheticLambda11
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletHomeBinancePayFragment.getThemeDescriptions$lambda$0(WalletHomeBinancePayFragment.this);
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$0(WalletHomeBinancePayFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBinancePayRecycleAdapter().notifyDataSetChanged();
        this$0.getBinding().getRoot().setColorSchemeColors(Theme.getColor(Theme.key_chats_actionBackground));
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.WalletHomeTabFragment
    public void loadTabInfo() {
        getPresenter().loadScreenInfo();
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.WalletHomeTabFragment
    public void loadBalances() {
        getPresenter().getBinanceUserBalances();
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.binancepay.WalletHomeBinancePayView
    public void render(List<BaseNode> nodes) {
        Intrinsics.checkNotNullParameter(nodes, "nodes");
        BaseQuickAdapter.setDiffNewData$default(getBinancePayRecycleAdapter(), nodes, null, 2, null);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.binancepay.WalletHomeBinancePayView
    public void showLoginGuideDialog(DialogModel model, final Function0<Unit> action) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogUtils.createDialog$default(parentActivity, model, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayFragment$$ExternalSyntheticLambda8
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletHomeBinancePayFragment.showLoginGuideDialog$lambda$1(Function0.this);
            }
        }, null, 8, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showLoginGuideDialog$lambda$1(Function0 tmp0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke();
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.binancepay.WalletHomeBinancePayView
    public void showConfirmLogOutDialog(DialogModel model, final Function0<Unit> action) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        AlertDialog createDialog$default = DialogUtils.createDialog$default(parentActivity, model, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayFragment$$ExternalSyntheticLambda7
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletHomeBinancePayFragment.showConfirmLogOutDialog$lambda$2(Function0.this);
            }
        }, null, 8, null);
        showDialog(createDialog$default);
        DialogExtKt.makeRedPositiveButton(createDialog$default);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showConfirmLogOutDialog$lambda$2(Function0 tmp0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke();
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.binancepay.WalletHomeBinancePayView
    public void openPayScreen() {
        ActionIntroActivity actionIntroActivity = new ActionIntroActivity(109);
        actionIntroActivity.setQrLoginDelegate(new ActionIntroActivity.ActionIntroQRLoginDelegate() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayFragment$$ExternalSyntheticLambda12
            @Override // org.telegram.p043ui.ActionIntroActivity.ActionIntroQRLoginDelegate
            public final void didFindQRCode(String str) {
                WalletHomeBinancePayFragment.openPayScreen$lambda$5$lambda$4(WalletHomeBinancePayFragment.this, str);
            }
        });
        presentFragment(actionIntroActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void openPayScreen$lambda$5$lambda$4(WalletHomeBinancePayFragment this$0, String qrText) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        WalletHomeBinancePayPresenter presenter = this$0.getPresenter();
        Activity parentActivity = this$0.getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "this@WalletHomeBinancePayFragment.parentActivity");
        AndroidActivityHolder androidActivityHolder = new AndroidActivityHolder(parentActivity);
        Intrinsics.checkNotNullExpressionValue(qrText, "qrText");
        presenter.startBinancePayFlow(androidActivityHolder, qrText);
    }

    public void openReceiveScreen() {
        presentFragment(ManageLinksActivity.newInstanceForBinancePay(new BinancePayScreenArgs(null, null, 3, null)));
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.binancepay.WalletHomeBinancePayView
    public void openConvertScreen() {
        presentFragment(WalletSwapProcessFragment.Companion.newInstance(new WalletSwapScreenType.Binance(null, null, 3, null)));
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.binancepay.WalletHomeBinancePayView
    public void openHistoryScreen() {
        presentFragment(WalletBinancePayHistoryFragment.Companion.newInstance$default(WalletBinancePayHistoryFragment.Companion, WalletBinancePayHistoryFragment.ScreenType.Fullscreen.INSTANCE, null, 2, null));
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.binancepay.WalletHomeBinancePayView
    public void openReplenishScreen(String networkId) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        presentFragment(WalletSendFragment.Companion.newInstance(new TransferScreenArgs(null, null, null, null, networkId, 15, null), WalletSendScreenType.BINANCE_REPLENISH));
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.binancepay.WalletHomeBinancePayView
    public void showRequiredVerifyDialog() {
        showDialog(DialogsFactoryKt.createBinanceVerificationRequiredDialog(this));
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.binancepay.WalletHomeBinancePayView
    public void showRequiredWalletCreatedDialog() {
        showDialog(DialogsFactoryKt.createWalletCreatedRequiredDialog(this, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayFragment$$ExternalSyntheticLambda6
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletHomeBinancePayFragment.showRequiredWalletCreatedDialog$lambda$6(WalletHomeBinancePayFragment.this);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showRequiredWalletCreatedDialog$lambda$6(WalletHomeBinancePayFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.selectTab(0);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.binancepay.WalletHomeBinancePayView
    public void showUserInfo(BinanceAccountItem userInfo) {
        Intrinsics.checkNotNullParameter(userInfo, "userInfo");
        getBinancePayRecycleAdapter().updateUserInfo(userInfo);
    }

    @Override // com.iMe.p030ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        getBinding().getRoot().setRefreshing(z);
    }

    @Override // com.iMe.manager.crypto.pay.BinancePayProcessView
    public void showConfirmPaymentDialog(DialogModel model, Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogUtils.createDialog$default(parentActivity, model, action, null, 8, null));
    }

    @Override // com.iMe.manager.crypto.pay.BinancePayProcessView
    public void showSuccessPaymentProcessedDialog(String title, String message, String btnText) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(btnText, "btnText");
        DialogsFactoryKt.showSuccessAlert$default(this, title, message, btnText, null, 8, null);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.WalletHomeTabFragment
    public void handleBottomPadding(int i) {
        RecyclerView recyclerView = getBinding().recycleWalletHomeBinancePayDashboard;
        recyclerView.setPadding(recyclerView.getPaddingLeft(), recyclerView.getPaddingTop(), recyclerView.getPaddingRight(), i);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.binancepay.WalletHomeBinancePayView
    public void showSelectTokensSortingDialog(TokenSortingData tokenSortingData) {
        Intrinsics.checkNotNullParameter(tokenSortingData, "tokenSortingData");
        showDialog(DialogsFactoryKt.createSelectTokensSortingDialog(this, getResourceManager(), tokenSortingData, false, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayFragment$$ExternalSyntheticLambda5
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletHomeBinancePayFragment.showSelectTokensSortingDialog$lambda$8(WalletHomeBinancePayFragment.this, (TokenSortingData) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showSelectTokensSortingDialog$lambda$8(WalletHomeBinancePayFragment this$0, TokenSortingData it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        WalletHomeBinancePayPresenter presenter = this$0.getPresenter();
        Intrinsics.checkNotNullExpressionValue(it, "it");
        presenter.setTokensSorting(it);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.binancepay.WalletHomeBinancePayView
    public void showMenuItems(List<ItemOptionsModel> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        View view = this.viewItem;
        if (view == null) {
            return;
        }
        ItemOptions makeOptions = ItemOptions.makeOptions(this, view);
        for (final ItemOptionsModel itemOptionsModel : items) {
            makeOptions.add(itemOptionsModel.getIconResId(), getResourceManager().getString(itemOptionsModel.getTextResId()), new Runnable() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayFragment$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    WalletHomeBinancePayFragment.showMenuItems$lambda$11$lambda$10$lambda$9(WalletHomeBinancePayFragment.this, itemOptionsModel);
                }
            });
        }
        this.itemOptions = makeOptions.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showMenuItems$lambda$11$lambda$10$lambda$9(WalletHomeBinancePayFragment this$0, ItemOptionsModel it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "$it");
        this$0.getPresenter().onMenuItemClick(it.getId());
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        getBinancePayRecycleAdapter().getBannerProvider().getBannersRecycleAdapter().resumeAnimation();
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        getBinancePayRecycleAdapter().getBannerProvider().getBannersRecycleAdapter().pauseAnimation();
        ItemOptions itemOptions = this.itemOptions;
        if (itemOptions != null && itemOptions != null) {
            itemOptions.dismiss();
        }
        this.viewItem = null;
    }

    private final void setupColors() {
        ForkFragmentWalletHomeBinancePayBinding binding = getBinding();
        binding.getRoot().setColorSchemeColors(Theme.getColor(Theme.key_chats_actionBackground));
        binding.getRoot().setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
    }

    private final void setupListeners() {
        final BinancePayRecycleAdapter binancePayRecycleAdapter = getBinancePayRecycleAdapter();
        binancePayRecycleAdapter.getBinanceAccountProvider().setActionBarMenuItemDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayFragment$$ExternalSyntheticLambda10
            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i) {
                WalletHomeBinancePayFragment.setupListeners$lambda$19$lambda$13(WalletHomeBinancePayFragment.this, i);
            }
        });
        BannerProvider bannerProvider = binancePayRecycleAdapter.getBannerProvider();
        bannerProvider.setBannerOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayFragment$$ExternalSyntheticLambda2
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletHomeBinancePayFragment.setupListeners$lambda$19$lambda$16$lambda$14(BinancePayRecycleAdapter.this, this, baseQuickAdapter, view, i);
            }
        });
        bannerProvider.setBannerOnItemLongClickListener(new OnItemLongClickListener() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayFragment$$ExternalSyntheticLambda4
            @Override // com.chad.library.adapter.base.listener.OnItemLongClickListener
            public final boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                boolean z;
                z = WalletHomeBinancePayFragment.setupListeners$lambda$19$lambda$16$lambda$15(WalletHomeBinancePayFragment.this, baseQuickAdapter, view, i);
                return z;
            }
        });
        binancePayRecycleAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayFragment$$ExternalSyntheticLambda3
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletHomeBinancePayFragment.setupListeners$lambda$19$lambda$17(BinancePayRecycleAdapter.this, this, baseQuickAdapter, view, i);
            }
        });
        binancePayRecycleAdapter.setOnItemChildClickListener(new OnItemChildClickListener() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnItemChildClickListener
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletHomeBinancePayFragment.setupListeners$lambda$19$lambda$18(BinancePayRecycleAdapter.this, this, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$19$lambda$13(WalletHomeBinancePayFragment this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onSubItemClick(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$19$lambda$16$lambda$14(BinancePayRecycleAdapter this_with, WalletHomeBinancePayFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.presentFragment(new ActionIntroActivity(108, null, null, null, this_with.getBannerProvider().getBannersRecycleAdapter().getItem(i).getSlide(), null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean setupListeners$lambda$19$lambda$16$lambda$15(WalletHomeBinancePayFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "view");
        this$0.viewItem = view;
        this$0.getPresenter().onItemLongClick();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$19$lambda$17(BinancePayRecycleAdapter this_with, WalletHomeBinancePayFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        BaseNode baseNode = (BaseNode) this_with.getItem(i);
        if (baseNode instanceof CardButtonItem) {
            if (((CardButtonItem) baseNode).getId() == C3634R.C3637id.binance_pay_link) {
                this$0.getPresenter().startBinancePayLoginFlow();
            }
        } else if (baseNode instanceof BinanceBalanceItem) {
            this$0.presentFragment(WalletTokenDetailsFragment.Companion.newInstance(new TokenDetailsArgs.Binance(((BinanceBalanceItem) baseNode).getBalanceInfo())));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$19$lambda$18(BinancePayRecycleAdapter this_with, WalletHomeBinancePayFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "view");
        BaseNode baseNode = (BaseNode) this_with.getItem(i);
        int id = view.getId();
        if (id == C3634R.C3637id.image_copy) {
            if (baseNode instanceof BinanceAccountItem) {
                ContextExtKt.copyToClipboard$default(((BinanceAccountItem) baseNode).getInfo().getId(), null, 2, null);
            }
        } else if (id == C3634R.C3637id.image_wallet_crypto_tokens_settings) {
            this$0.presentFragment(WalletHomeCryptoTokensSettingsFragment.Companion.newInstance(new TokensScreenType.Binance(SelectableMappingKt.mapToDetailedTokensList(this$0.getPresenter().getBalances()))));
        } else if (id == C3634R.C3637id.image_wallet_order_tokens) {
            this$0.getPresenter().onOrderTokensClick();
        } else if (id == C3634R.C3637id.image_wallet_crypto_eye) {
            this$0.getPresenter().switchHiddenBalance();
        }
    }

    private final void onSubItemClick(int i) {
        if (i == IdFabric$Menu.LOGOUT) {
            getPresenter().startLogOutFlow();
        } else if (i == IdFabric$Menu.RECEIVE) {
            openReceiveScreen();
        }
    }

    private final void setupWalletRecycleView() {
        RecyclerView setupWalletRecycleView$lambda$21 = getBinding().recycleWalletHomeBinancePayDashboard;
        setupWalletRecycleView$lambda$21.setLayoutManager(new LinearLayoutManager(getParentActivity()));
        BinancePayRecycleAdapter binancePayRecycleAdapter = getBinancePayRecycleAdapter();
        binancePayRecycleAdapter.setDiffCallback(new BinancePayDiffCallback());
        setupWalletRecycleView$lambda$21.setAdapter(binancePayRecycleAdapter);
        Intrinsics.checkNotNullExpressionValue(setupWalletRecycleView$lambda$21, "setupWalletRecycleView$lambda$21");
        RecycleViewExtKt.disableDefaultAnimation(setupWalletRecycleView$lambda$21);
    }

    private final void setupSwipeRefresh() {
        getBinding().getRoot().setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayFragment$$ExternalSyntheticLambda0
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                WalletHomeBinancePayFragment.setupSwipeRefresh$lambda$22(WalletHomeBinancePayFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupSwipeRefresh$lambda$22(WalletHomeBinancePayFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().loadScreenInfo();
    }

    /* compiled from: WalletHomeBinancePayFragment.kt */
    /* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayFragment$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletHomeBinancePayFragment newInstance() {
            return new WalletHomeBinancePayFragment();
        }
    }
}
