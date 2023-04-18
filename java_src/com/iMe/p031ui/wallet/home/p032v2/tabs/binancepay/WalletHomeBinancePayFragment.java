package com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.binance.android.binancepay.api.BinancePay;
import com.binance.android.opensdk.api.BinanceAPI;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.listener.OnItemChildClickListener;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.mapper.wallet.select.SelectableMappingKt;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.details.TokenDetailsArgs;
import com.iMe.model.wallet.home.CardButtonItem;
import com.iMe.model.wallet.home.pay.BinanceAccountItem;
import com.iMe.model.wallet.home.pay.BinanceBalanceItem;
import com.iMe.model.wallet.home.pay.BinancePayScreenArgs;
import com.iMe.model.wallet.transfer.TransferScreenArgs;
import com.iMe.p031ui.custom.SlopSwipeRefreshLayout;
import com.iMe.p031ui.wallet.home.p032v2.details.WalletTokenDetailsFragment;
import com.iMe.p031ui.wallet.home.p032v2.tabs.WalletHomeTabFragment;
import com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.adapter.BinancePayRecycleAdapter;
import com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.adapter.diff.BinancePayDiffCallback;
import com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.history.WalletBinancePayHistoryFragment;
import com.iMe.p031ui.wallet.home.p032v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment;
import com.iMe.p031ui.wallet.swap.process.WalletSwapProcessFragment;
import com.iMe.storage.data.utils.system.AndroidActivityHolder;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.wallet.token.TokenOrderType;
import com.iMe.utils.dialogs.DialogExtKt;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
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
import org.koin.p043mp.KoinPlatformTools;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.databinding.ForkFragmentWalletHomeBinancePayBinding;
import org.telegram.p044ui.ActionBar.ActionBarMenuItem;
import org.telegram.p044ui.ActionBar.AlertDialog;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.ActionBar.ThemeDescription;
import org.telegram.p044ui.ActionIntroActivity;
import org.telegram.p044ui.ManageLinksActivity;
/* compiled from: WalletHomeBinancePayFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayFragment */
/* loaded from: classes3.dex */
public final class WalletHomeBinancePayFragment extends WalletHomeTabFragment implements WalletHomeBinancePayView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletHomeBinancePayFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletHomeBinancePayFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final Lazy binanceApi$delegate;
    private final Lazy binancePayApi$delegate;
    private final Lazy binancePayRecycleAdapter$delegate;
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;

    public WalletHomeBinancePayFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        WalletHomeBinancePayFragment$presenter$2 walletHomeBinancePayFragment$presenter$2 = new WalletHomeBinancePayFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletHomeBinancePayPresenter.class.getName() + ".presenter", walletHomeBinancePayFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new WalletHomeBinancePayFragment$special$$inlined$inject$default$1(this, null, null));
        this.binancePayRecycleAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new WalletHomeBinancePayFragment$binding$2(this), 1, (Object) null);
        lazy2 = LazyKt__LazyJVMKt.lazy(new WalletHomeBinancePayFragment$binanceApi$2(this));
        this.binanceApi$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new WalletHomeBinancePayFragment$binancePayApi$2(this));
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

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
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

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayFragment$$ExternalSyntheticLambda9
            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletHomeBinancePayFragment.getThemeDescriptions$lambda$0(WalletHomeBinancePayFragment.this);
            }

            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "windowBackgroundGray"));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$0(WalletHomeBinancePayFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBinancePayRecycleAdapter().notifyDataSetChanged();
        this$0.getBinding().getRoot().setColorSchemeColors(Theme.getColor("chats_actionBackground"));
    }

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.WalletHomeTabFragment
    public void loadTabInfo() {
        getPresenter().loadScreenInfo();
    }

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.WalletHomeTabFragment
    public void loadBalances() {
        getPresenter().getBinanceUserBalances();
    }

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.WalletHomeBinancePayView
    public void render(List<BaseNode> nodes) {
        Intrinsics.checkNotNullParameter(nodes, "nodes");
        BaseQuickAdapter.setDiffNewData$default(getBinancePayRecycleAdapter(), nodes, null, 2, null);
    }

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.WalletHomeBinancePayView
    public void showLoginGuideDialog(DialogModel model, final Function0<Unit> action) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogUtils.createDialog$default(parentActivity, model, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayFragment$$ExternalSyntheticLambda7
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

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.WalletHomeBinancePayView
    public void showConfirmLogOutDialog(DialogModel model, final Function0<Unit> action) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        AlertDialog createDialog$default = DialogUtils.createDialog$default(parentActivity, model, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayFragment$$ExternalSyntheticLambda6
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

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.WalletHomeBinancePayView
    public void openPayScreen() {
        ActionIntroActivity actionIntroActivity = new ActionIntroActivity(109);
        actionIntroActivity.setQrLoginDelegate(new ActionIntroActivity.ActionIntroQRLoginDelegate() { // from class: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayFragment$$ExternalSyntheticLambda10
            @Override // org.telegram.p044ui.ActionIntroActivity.ActionIntroQRLoginDelegate
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

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.WalletHomeBinancePayView
    public void openConvertScreen() {
        presentFragment(WalletSwapProcessFragment.Companion.newInstance(new WalletSwapProcessFragment.ScreenType.Binance(null, null, 3, null)));
    }

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.WalletHomeBinancePayView
    public void openHistoryScreen() {
        presentFragment(WalletBinancePayHistoryFragment.Companion.newInstance$default(WalletBinancePayHistoryFragment.Companion, WalletBinancePayHistoryFragment.ScreenType.Fullscreen.INSTANCE, null, 2, null));
    }

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.WalletHomeBinancePayView
    public void openReplenishScreen(NetworkType networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        presentFragment(ManageLinksActivity.newInstanceForBinanceReplenish(new TransferScreenArgs(null, null, null, null, networkType, 15, null)));
    }

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.WalletHomeBinancePayView
    public void showRequiredVerifyDialog() {
        showDialog(DialogsFactoryKt.createBinanceVerificationRequiredDialog(this));
    }

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.WalletHomeBinancePayView
    public void showRequiredWalletCreatedDialog() {
        showDialog(DialogsFactoryKt.createWalletCreatedRequiredDialog(this, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayFragment$$ExternalSyntheticLambda5
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

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.WalletHomeBinancePayView
    public void showUserInfo(BinanceAccountItem userInfo) {
        Intrinsics.checkNotNullParameter(userInfo, "userInfo");
        getBinancePayRecycleAdapter().updateUserInfo(userInfo);
    }

    @Override // com.iMe.p031ui.base.mvp.SwipeRefreshView
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

    @Override // com.iMe.p031ui.base.mvp.AdapterNotifyView
    public void notifyDataSetChanged() {
        getBinancePayRecycleAdapter().notifyDataSetChanged();
    }

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.WalletHomeTabFragment
    public void handleBottomPadding(int i) {
        RecyclerView recyclerView = getBinding().recycleWalletHomeBinancePayDashboard;
        recyclerView.setPadding(recyclerView.getPaddingLeft(), recyclerView.getPaddingTop(), recyclerView.getPaddingRight(), i);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        getBinancePayRecycleAdapter().getBannerProvider().getBannersRecycleAdapter().resumeAnimation();
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        getBinancePayRecycleAdapter().getBannerProvider().getBannersRecycleAdapter().pauseAnimation();
    }

    private final void setupColors() {
        ForkFragmentWalletHomeBinancePayBinding binding = getBinding();
        binding.getRoot().setColorSchemeColors(Theme.getColor("chats_actionBackground"));
        binding.getRoot().setBackgroundColor(Theme.getColor("windowBackgroundGray"));
    }

    private final void setupListeners() {
        BinancePayRecycleAdapter binancePayRecycleAdapter = getBinancePayRecycleAdapter();
        binancePayRecycleAdapter.getBinanceAccountProvider().setActionBarMenuItemDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayFragment$$ExternalSyntheticLambda8
            @Override // org.telegram.p044ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i) {
                WalletHomeBinancePayFragment.setupListeners$lambda$14$lambda$9(WalletHomeBinancePayFragment.this, i);
            }
        });
        binancePayRecycleAdapter.getBannerProvider().setBannerOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayFragment$$ExternalSyntheticLambda2
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletHomeBinancePayFragment.setupListeners$lambda$14$lambda$10(WalletHomeBinancePayFragment.this, baseQuickAdapter, view, i);
            }
        });
        binancePayRecycleAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayFragment$$ExternalSyntheticLambda3
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletHomeBinancePayFragment.setupListeners$lambda$14$lambda$11(WalletHomeBinancePayFragment.this, baseQuickAdapter, view, i);
            }
        });
        binancePayRecycleAdapter.setOnItemChildClickListener(new OnItemChildClickListener() { // from class: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnItemChildClickListener
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletHomeBinancePayFragment.setupListeners$lambda$14$lambda$13(WalletHomeBinancePayFragment.this, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$14$lambda$9(WalletHomeBinancePayFragment this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onSubItemClick(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$14$lambda$10(WalletHomeBinancePayFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.presentFragment(new ActionIntroActivity(108, null, null, null, this$0.getBinancePayRecycleAdapter().getBannerProvider().getBannersRecycleAdapter().getItem(i).getSlide(), null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$14$lambda$11(WalletHomeBinancePayFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        BaseNode baseNode = (BaseNode) this$0.getBinancePayRecycleAdapter().getItem(i);
        if (baseNode instanceof CardButtonItem) {
            if (((CardButtonItem) baseNode).getId() == C3242R.C3245id.binance_pay_link) {
                this$0.getPresenter().startBinancePayLoginFlow();
            }
        } else if (baseNode instanceof BinanceBalanceItem) {
            this$0.presentFragment(WalletTokenDetailsFragment.Companion.newInstance(new TokenDetailsArgs.Binance(((BinanceBalanceItem) baseNode).getBalanceInfo())));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$14$lambda$13(final WalletHomeBinancePayFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "view");
        BaseNode baseNode = (BaseNode) this$0.getBinancePayRecycleAdapter().getItem(i);
        int id = view.getId();
        if (id == C3242R.C3245id.image_copy) {
            if (baseNode instanceof BinanceAccountItem) {
                ContextExtKt.copyToClipboard$default(((BinanceAccountItem) baseNode).getInfo().getId(), null, 2, null);
            }
        } else if (id == C3242R.C3245id.image_wallet_crypto_tokens_settings) {
            this$0.presentFragment(WalletHomeCryptoTokensSettingsFragment.Companion.newInstance(new WalletHomeCryptoTokensSettingsFragment.ScreenType.Binance(SelectableMappingKt.mapToSelectableBinanceTokenBalanceInfo(this$0.getPresenter().getBalances()))));
        } else if (id == C3242R.C3245id.image_wallet_order_tokens) {
            this$0.showDialog(DialogsFactoryKt.createSelectTokensOrderTypeDialog(this$0, this$0.getResourceManager(), this$0.getPresenter().getSelectedTokensOrderType(), new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayFragment$$ExternalSyntheticLambda4
                @Override // com.iMe.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    WalletHomeBinancePayFragment.setupListeners$lambda$14$lambda$13$lambda$12(WalletHomeBinancePayFragment.this, (TokenOrderType) obj);
                }
            }));
        } else if (id == C3242R.C3245id.image_wallet_crypto_eye) {
            this$0.getPresenter().switchHiddenBalance();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$14$lambda$13$lambda$12(WalletHomeBinancePayFragment this$0, TokenOrderType it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        WalletHomeBinancePayPresenter presenter = this$0.getPresenter();
        Intrinsics.checkNotNullExpressionValue(it, "it");
        presenter.setTokensOrderType(it);
    }

    private final void onSubItemClick(int i) {
        if (i == IdFabric$Menu.LOGOUT) {
            getPresenter().startLogOutFlow();
        } else if (i == IdFabric$Menu.RECEIVE) {
            openReceiveScreen();
        }
    }

    private final void setupWalletRecycleView() {
        RecyclerView setupWalletRecycleView$lambda$16 = getBinding().recycleWalletHomeBinancePayDashboard;
        setupWalletRecycleView$lambda$16.setLayoutManager(new LinearLayoutManager(getParentActivity()));
        BinancePayRecycleAdapter binancePayRecycleAdapter = getBinancePayRecycleAdapter();
        binancePayRecycleAdapter.setDiffCallback(new BinancePayDiffCallback());
        setupWalletRecycleView$lambda$16.setAdapter(binancePayRecycleAdapter);
        Intrinsics.checkNotNullExpressionValue(setupWalletRecycleView$lambda$16, "setupWalletRecycleView$lambda$16");
        RecycleViewExtKt.disableDefaultAnimation(setupWalletRecycleView$lambda$16);
    }

    private final void setupSwipeRefresh() {
        getBinding().getRoot().setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayFragment$$ExternalSyntheticLambda0
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                WalletHomeBinancePayFragment.setupSwipeRefresh$lambda$17(WalletHomeBinancePayFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupSwipeRefresh$lambda$17(WalletHomeBinancePayFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().loadScreenInfo();
    }

    /* compiled from: WalletHomeBinancePayFragment.kt */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayFragment$Companion */
    /* loaded from: classes3.dex */
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
