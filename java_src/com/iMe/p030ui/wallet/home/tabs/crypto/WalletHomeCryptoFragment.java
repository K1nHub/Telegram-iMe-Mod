package com.iMe.p030ui.wallet.home.tabs.crypto;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.listener.GridSpanSizeLookup;
import com.chad.library.adapter.base.listener.OnItemChildClickListener;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.chad.library.adapter.base.listener.OnItemLongClickListener;
import com.iMe.common.IdFabric$CustomType;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.p023ui.dialog.SelectNetworkBottomSheet;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.manager.common.MediaEditManager;
import com.iMe.manager.wallet.create.WalletCreateManagerView;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.ItemOptionsModel;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.crypto.TokensScreenType;
import com.iMe.model.wallet.crypto.create.WalletCreationType;
import com.iMe.model.wallet.details.TokenDetailsArgs;
import com.iMe.model.wallet.home.AccountItem;
import com.iMe.model.wallet.home.BannerSlide;
import com.iMe.model.wallet.home.CryptoAddTokensItem;
import com.iMe.model.wallet.home.NetworkChoosePurpose;
import com.iMe.model.wallet.home.TokenSortingData;
import com.iMe.model.wallet.home.nft.NftCollectionItem;
import com.iMe.model.wallet.home.nft.NftTokenItem;
import com.iMe.model.wallet.send.WalletSendScreenType;
import com.iMe.model.wallet.swap.WalletSwapScreenType;
import com.iMe.model.wallet.transaction.WalletTransactionsScreenType;
import com.iMe.model.wallet.transfer.TransferScreenArgs;
import com.iMe.p030ui.adapter.provider.BannerProvider;
import com.iMe.p030ui.adapter.provider.CryptoAccountProvider;
import com.iMe.p030ui.custom.SlopSwipeRefreshLayout;
import com.iMe.p030ui.wallet.crypto.address_mismatch.AddressMismatchFragment;
import com.iMe.p030ui.wallet.crypto.create.intro.CreateWalletIntroFragment;
import com.iMe.p030ui.wallet.home.adapter.BalancesRecycleAdapter;
import com.iMe.p030ui.wallet.home.adapter.diff.BalanceDiffCallback;
import com.iMe.p030ui.wallet.home.details.WalletTokenDetailsFragment;
import com.iMe.p030ui.wallet.home.tabs.WalletHomeTabFragment;
import com.iMe.p030ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment;
import com.iMe.p030ui.wallet.send.WalletSendFragment;
import com.iMe.p030ui.wallet.swap.process.WalletSwapProcessFragment;
import com.iMe.p030ui.wallet.transaction.WalletTransactionsFragment;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.common.ContextExtKt;
import com.iMe.utils.extentions.common.RecycleViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import com.iMe.utils.helper.wallet.CryptoHelper;
import com.iMe.utils.hints.HintUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
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
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.databinding.ForkFragmentWalletHomeCryptoBinding;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.ActionIntroActivity;
import org.telegram.p043ui.Components.ItemOptions;
import org.telegram.p043ui.Components.QRCodeBottomSheet;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.p043ui.ContentPreviewViewer;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$InputStickerSet;
/* compiled from: WalletHomeCryptoFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment */
/* loaded from: classes4.dex */
public final class WalletHomeCryptoFragment extends WalletHomeTabFragment implements WalletHomeCryptoView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletHomeCryptoFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletHomeCryptoFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;", 0)), Reflection.property1(new PropertyReference1Impl(WalletHomeCryptoFragment.class, "mediaEditManager", "getMediaEditManager()Lcom/iMe/manager/common/MediaEditManager;", 0))};
    public static final Companion Companion = new Companion(null);
    private final Lazy balancesRecycleAdapter$delegate;
    private final ResettableLazy binding$delegate;
    private ItemOptions itemOptions;
    private final ResettableLazy mediaEditManager$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private View viewItem;

    /* JADX INFO: Access modifiers changed from: private */
    public static final int setupWalletRecycleView$lambda$25$lambda$24$lambda$22(GridLayoutManager gridLayoutManager, int i, int i2) {
        Intrinsics.checkNotNullParameter(gridLayoutManager, "<anonymous parameter 0>");
        return 1;
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public /* synthetic */ void showSelectOptionsDialog(String str, String[] strArr, DialogInterface.OnClickListener onClickListener) {
        WalletCreateManagerView.CC.$default$showSelectOptionsDialog(this, str, strArr, onClickListener);
    }

    public WalletHomeCryptoFragment() {
        Lazy lazy;
        Function0<WalletHomeCryptoPresenter> function0 = new Function0<WalletHomeCryptoPresenter>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final WalletHomeCryptoPresenter invoke() {
                Lazy lazy2;
                final WalletHomeCryptoFragment walletHomeCryptoFragment = WalletHomeCryptoFragment.this;
                lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletHomeCryptoPresenter>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final WalletHomeCryptoPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function02 = r3;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(WalletHomeCryptoPresenter.class), qualifier, function02);
                    }
                });
                return (WalletHomeCryptoPresenter) lazy2.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletHomeCryptoPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<BalancesRecycleAdapter>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.wallet.home.adapter.BalancesRecycleAdapter] */
            @Override // kotlin.jvm.functions.Function0
            public final BalancesRecycleAdapter invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(BalancesRecycleAdapter.class), qualifier, function02);
            }
        });
        this.balancesRecycleAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentWalletHomeCryptoBinding>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentWalletHomeCryptoBinding invoke() {
                return ForkFragmentWalletHomeCryptoBinding.inflate(BaseFragmentExtKt.getLayoutInflater(WalletHomeCryptoFragment.this));
            }
        }, 1, (Object) null);
        this.mediaEditManager$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<MediaEditManager>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$mediaEditManager$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final MediaEditManager invoke() {
                int i;
                WalletHomeCryptoFragment walletHomeCryptoFragment = WalletHomeCryptoFragment.this;
                i = ((BaseFragment) walletHomeCryptoFragment).currentAccount;
                return new MediaEditManager(walletHomeCryptoFragment, i, null, 4, null);
            }
        }, 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WalletHomeCryptoPresenter getPresenter() {
        return (WalletHomeCryptoPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final BalancesRecycleAdapter getBalancesRecycleAdapter() {
        return (BalancesRecycleAdapter) this.balancesRecycleAdapter$delegate.getValue();
    }

    private final ForkFragmentWalletHomeCryptoBinding getBinding() {
        return (ForkFragmentWalletHomeCryptoBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    private final MediaEditManager getMediaEditManager() {
        return (MediaEditManager) this.mediaEditManager$delegate.getValue(this, $$delegatedProperties[2]);
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
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda15
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletHomeCryptoFragment.getThemeDescriptions$lambda$0(WalletHomeCryptoFragment.this);
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$0(WalletHomeCryptoFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBalancesRecycleAdapter().notifyDataSetChanged();
        this$0.getBinding().getRoot().setColorSchemeColors(Theme.getColor(Theme.key_chats_actionBackground));
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void renderNodes(List<? extends BaseNode> nodes) {
        List mutableList;
        Intrinsics.checkNotNullParameter(nodes, "nodes");
        BalancesRecycleAdapter balancesRecycleAdapter = getBalancesRecycleAdapter();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) nodes);
        BaseQuickAdapter.setDiffNewData$default(balancesRecycleAdapter, mutableList, null, 2, null);
    }

    @Override // com.iMe.p030ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        getBinding().getRoot().setRefreshing(z);
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void showActivationConfirmationDialog(DialogModel dialogModel, Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogUtils.createDialog$default(parentActivity, dialogModel, action, null, 8, null));
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void openCreateWalletIntroScreen(BlockchainType blockchainType, String linkedWalletAddress, WalletCreationType.Initial walletCreationType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Intrinsics.checkNotNullParameter(linkedWalletAddress, "linkedWalletAddress");
        Intrinsics.checkNotNullParameter(walletCreationType, "walletCreationType");
        presentFragment(CreateWalletIntroFragment.Companion.newInstance(linkedWalletAddress, walletCreationType, blockchainType));
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void showAddressMismatchScreen() {
        postViewActionDelayed(250L, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda13
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletHomeCryptoFragment.showAddressMismatchScreen$lambda$1(WalletHomeCryptoFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showAddressMismatchScreen$lambda$1(WalletHomeCryptoFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.presentFragment(AddressMismatchFragment.Companion.newInstance());
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.WalletHomeTabFragment
    public void loadTabInfo() {
        WalletHomeCryptoPresenter.loadScreenInfo$default(getPresenter(), true, false, 2, null);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.WalletHomeTabFragment
    public void loadBalances() {
        WalletHomeCryptoPresenter.loadScreenInfo$default(getPresenter(), true, false, 2, null);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.WalletHomeTabFragment
    public void handleBottomPadding(int i) {
        RecyclerView recyclerView = getBinding().recycleWalletHomeCryptoDashboard;
        recyclerView.setPadding(recyclerView.getPaddingLeft(), recyclerView.getPaddingTop(), recyclerView.getPaddingRight(), i);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void showChooseNetworkDialog(NetworkItem network, List<? extends NetworkItem> availableNetworksItems, final NetworkChoosePurpose purpose) {
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(availableNetworksItems, "availableNetworksItems");
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        SelectNetworkBottomSheet.Companion companion = SelectNetworkBottomSheet.Companion;
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(companion.newInstance(parentActivity, network, availableNetworksItems, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda10
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletHomeCryptoFragment.showChooseNetworkDialog$lambda$3(WalletHomeCryptoFragment.this, purpose, (NetworkItem.Crypto) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showChooseNetworkDialog$lambda$3(WalletHomeCryptoFragment this$0, NetworkChoosePurpose purpose, NetworkItem.Crypto crypto) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(purpose, "$purpose");
        this$0.getPresenter().onNetworkSelected(crypto, purpose);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void showSelectTokensOrderTypeDialog(TokenSortingData tokensOrderType, boolean z) {
        Intrinsics.checkNotNullParameter(tokensOrderType, "tokensOrderType");
        showDialog(DialogsFactoryKt.createSelectTokensSortingDialog(this, getResourceManager(), tokensOrderType, z, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda8
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletHomeCryptoFragment.showSelectTokensOrderTypeDialog$lambda$4(WalletHomeCryptoFragment.this, (TokenSortingData) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showSelectTokensOrderTypeDialog$lambda$4(WalletHomeCryptoFragment this$0, TokenSortingData it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        WalletHomeCryptoPresenter presenter = this$0.getPresenter();
        Intrinsics.checkNotNullExpressionValue(it, "it");
        presenter.setTokensSorting(it);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void showMenuItems(List<ItemOptionsModel> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        View view = this.viewItem;
        if (view == null) {
            return;
        }
        ItemOptions makeOptions = ItemOptions.makeOptions(this, view);
        for (final ItemOptionsModel itemOptionsModel : items) {
            makeOptions.add(itemOptionsModel.getIconResId(), getResourceManager().getString(itemOptionsModel.getTextResId()), new Runnable() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    WalletHomeCryptoFragment.showMenuItems$lambda$7$lambda$6$lambda$5(WalletHomeCryptoFragment.this, itemOptionsModel);
                }
            });
        }
        this.itemOptions = makeOptions.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showMenuItems$lambda$7$lambda$6$lambda$5(WalletHomeCryptoFragment this$0, ItemOptionsModel it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "$it");
        this$0.getPresenter().onMenuItemClick(it.getId());
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void showWalletAddressScan(String address) {
        Intrinsics.checkNotNullParameter(address, "address");
        Browser.openUrl(getParentActivity(), getPresenter().getCurrentNetwork().getAddressUrl(address));
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void showQrReceiveDialog(final String address, final Network network) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(network, "network");
        final Activity parentActivity = getParentActivity();
        final String formatAddressQR = CryptoHelper.formatAddressQR(address, network.getBlockchainType());
        QRCodeBottomSheet qRCodeBottomSheet = new QRCodeBottomSheet(address, parentActivity, formatAddressQR) { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$showQrReceiveDialog$1
            @Override // org.telegram.p043ui.Components.QRCodeBottomSheet
            public String getCustomQrCenterImageUrl() {
                return network.getLogoUrl();
            }

            @Override // org.telegram.p043ui.Components.QRCodeBottomSheet
            public int getType() {
                return IdFabric$CustomType.QR_BOTTOM_SHEET_WALLET_RECEIVE;
            }
        };
        qRCodeBottomSheet.setupWalletTypeReceive(getResourceManager().getString(C3632R.string.wallet_receive_dialog_title), getResourceManager().getString(C3632R.string.wallet_receive_dialog_btn_text), address);
        showDialog(qRCodeBottomSheet);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void openSendScreen(TransferScreenArgs transferScreenArgs) {
        WalletSendFragment.Companion companion = WalletSendFragment.Companion;
        if (transferScreenArgs == null) {
            transferScreenArgs = new TransferScreenArgs(null, null, null, null, null, 31, null);
        }
        presentFragment(companion.newInstance(transferScreenArgs, WalletSendScreenType.WALLET_TRANSFER));
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void openSwapScreen(TokenDetailed tokenDetailed) {
        Intrinsics.checkNotNullParameter(tokenDetailed, "tokenDetailed");
        presentFragment(WalletSwapProcessFragment.Companion.newInstance(new WalletSwapScreenType.Crypto(SwapProtocol.Companion.resolveByNetworkId(tokenDetailed.getNetworkId()), tokenDetailed, null, tokenDetailed.getNetworkId(), 4, null)));
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void openHistoryScreen() {
        presentFragment(WalletTransactionsFragment.Companion.newInstance$default(WalletTransactionsFragment.Companion, WalletTransactionsScreenType.Fullscreen.INSTANCE, null, 2, null));
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void openTokenSettingsScreen(String networkId) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        presentFragment(WalletHomeCryptoTokensSettingsFragment.Companion.newInstance(TokensScreenType.Crypto.INSTANCE));
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void openWalletDetails(TokenDetailsArgs tokenDetailsArgs) {
        Intrinsics.checkNotNullParameter(tokenDetailsArgs, "tokenDetailsArgs");
        presentFragment(WalletTokenDetailsFragment.Companion.newInstance(tokenDetailsArgs));
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void openActionIntroScreen(BannerSlide bannerSlide) {
        Intrinsics.checkNotNullParameter(bannerSlide, "bannerSlide");
        presentFragment(new ActionIntroActivity(108, null, null, null, bannerSlide, null));
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void openBrowserUrl(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Browser.openUrl(getParentActivity(), url);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void showChangeNetworkHint() {
        getBalancesRecycleAdapter().resetOnNetworkViewLayoutAction();
        final HintUtils hintUtils = getHintUtils();
        INavigationLayout parentLayout = this.parentLayout;
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        hintUtils.showChangeNetworkHint(parentLayout);
        getBinding().recycleWalletHomeCryptoDashboard.setOnTouchListener(new View.OnTouchListener() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean showChangeNetworkHint$lambda$10$lambda$9;
                showChangeNetworkHint$lambda$10$lambda$9 = WalletHomeCryptoFragment.showChangeNetworkHint$lambda$10$lambda$9(HintUtils.this, view, motionEvent);
                return showChangeNetworkHint$lambda$10$lambda$9;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean showChangeNetworkHint$lambda$10$lambda$9(HintUtils this_with, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        this_with.hideHint();
        return false;
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        getBalancesRecycleAdapter().getBannerProvider().getBannersRecycleAdapter().resumeAnimation();
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onPause() {
        getBalancesRecycleAdapter().getBannerProvider().getBannersRecycleAdapter().pauseAnimation();
        ItemOptions itemOptions = this.itemOptions;
        if (itemOptions != null && itemOptions != null) {
            itemOptions.dismiss();
        }
        this.viewItem = null;
        super.onPause();
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getMediaEditManager().finishLoading();
        super.onFragmentDestroy();
    }

    private final void setupColors() {
        SlopSwipeRefreshLayout root = getBinding().getRoot();
        root.setColorSchemeColors(Theme.getColor(Theme.key_chats_actionBackground));
        root.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
    }

    private final void setupListeners() {
        final BalancesRecycleAdapter balancesRecycleAdapter = getBalancesRecycleAdapter();
        final BannerProvider bannerProvider = balancesRecycleAdapter.getBannerProvider();
        bannerProvider.setBannerOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda5
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletHomeCryptoFragment.setupListeners$lambda$21$lambda$14$lambda$12(WalletHomeCryptoFragment.this, bannerProvider, baseQuickAdapter, view, i);
            }
        });
        bannerProvider.setBannerOnItemLongClickListener(new OnItemLongClickListener() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda7
            @Override // com.chad.library.adapter.base.listener.OnItemLongClickListener
            public final boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                boolean z;
                z = WalletHomeCryptoFragment.setupListeners$lambda$21$lambda$14$lambda$13(WalletHomeCryptoFragment.this, baseQuickAdapter, view, i);
                return z;
            }
        });
        CryptoAccountProvider cryptoAccountProvider = balancesRecycleAdapter.getCryptoAccountProvider();
        cryptoAccountProvider.setOnMenuItemClickAction(new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda9
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletHomeCryptoFragment.setupListeners$lambda$21$lambda$17$lambda$15(WalletHomeCryptoFragment.this, (Integer) obj);
            }
        });
        cryptoAccountProvider.setOnAddressClickAction(new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda11
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletHomeCryptoFragment.setupListeners$lambda$21$lambda$17$lambda$16((String) obj);
            }
        });
        balancesRecycleAdapter.getGlobalStateProvider().setOnRetryButtonClickAction(new Function0<Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$setupListeners$1$3
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
                WalletHomeCryptoPresenter presenter;
                presenter = WalletHomeCryptoFragment.this.getPresenter();
                WalletHomeCryptoPresenter.loadScreenInfo$default(presenter, true, false, 2, null);
            }
        });
        balancesRecycleAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda4
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletHomeCryptoFragment.setupListeners$lambda$21$lambda$18(BalancesRecycleAdapter.this, this, baseQuickAdapter, view, i);
            }
        });
        balancesRecycleAdapter.setOnItemChildClickListener(new OnItemChildClickListener() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda3
            @Override // com.chad.library.adapter.base.listener.OnItemChildClickListener
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletHomeCryptoFragment.setupListeners$lambda$21$lambda$19(WalletHomeCryptoFragment.this, baseQuickAdapter, view, i);
            }
        });
        balancesRecycleAdapter.setOnItemLongClickListener(new OnItemLongClickListener() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda6
            @Override // com.chad.library.adapter.base.listener.OnItemLongClickListener
            public final boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                boolean z;
                z = WalletHomeCryptoFragment.setupListeners$lambda$21$lambda$20(BalancesRecycleAdapter.this, this, baseQuickAdapter, view, i);
                return z;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$21$lambda$14$lambda$12(WalletHomeCryptoFragment this$0, BannerProvider this_with, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.getPresenter().onBannerClick(this_with.getBannersRecycleAdapter().getItem(i).getSlide());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean setupListeners$lambda$21$lambda$14$lambda$13(WalletHomeCryptoFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "view");
        this$0.viewItem = view;
        this$0.getPresenter().onItemLongClick(null);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$21$lambda$17$lambda$15(WalletHomeCryptoFragment this$0, Integer num) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int i = IdFabric$Menu.SCAN_ADDRESS;
        if (num != null && num.intValue() == i) {
            this$0.getPresenter().showWalletAddressScan();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$21$lambda$17$lambda$16(String address) {
        Intrinsics.checkNotNullExpressionValue(address, "address");
        ContextExtKt.copyToClipboard$default(address, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$21$lambda$18(BalancesRecycleAdapter this_with, WalletHomeCryptoFragment this$0, BaseQuickAdapter adapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        BaseNode baseNode = (BaseNode) this_with.getItem(i);
        if (baseNode instanceof AccountItem.Token) {
            this$0.getPresenter().openWalletDetails((AccountItem.Token) baseNode);
        } else if (baseNode instanceof CryptoAddTokensItem) {
            this$0.getPresenter().openTokenSettingsScreen();
        } else if (baseNode instanceof NftCollectionItem) {
            if (adapter instanceof BaseNodeAdapter) {
                BaseNodeAdapter.expandOrCollapse$default((BaseNodeAdapter) adapter, i, true, true, null, 8, null);
            }
        } else if (baseNode instanceof NftTokenItem) {
            this$0.openNftDetails(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$21$lambda$19(WalletHomeCryptoFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "view");
        int id = view.getId();
        if (id == C3632R.C3635id.network_type_view) {
            WalletHomeCryptoPresenter.startChooseNetworkDialog$default(this$0.getPresenter(), null, 1, null);
        } else if (id == C3632R.C3635id.image_wallet_crypto_eye) {
            this$0.getPresenter().switchHiddenBalance();
        } else if (id == C3632R.C3635id.image_wallet_crypto_tokens_settings) {
            this$0.getPresenter().openTokenSettingsScreen();
        } else if (id == C3632R.C3635id.image_wallet_order_tokens) {
            this$0.getPresenter().onSelectTokensSortingClicked();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean setupListeners$lambda$21$lambda$20(BalancesRecycleAdapter this_with, WalletHomeCryptoFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "view");
        BaseNode baseNode = (BaseNode) this_with.getItem(i);
        if (baseNode instanceof AccountItem.Token) {
            this$0.viewItem = view;
            this$0.getPresenter().onItemLongClick(((AccountItem.Token) baseNode).getBalance().getToken());
            return true;
        }
        return false;
    }

    private final void openNftDetails(View view) {
        ContentPreviewViewer.getInstanceForNft(getMediaEditManager()).showInstantly(view, 0, new ContentPreviewViewer.ContentPreviewViewerDelegate() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$openNftDetails$1
            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ boolean can() {
                return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$can(this);
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public boolean canSchedule() {
                return false;
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ Boolean canSetAsStatus(TLRPC$Document tLRPC$Document) {
                return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$canSetAsStatus(this, tLRPC$Document);
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ void copyEmoji(TLRPC$Document tLRPC$Document) {
                ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$copyEmoji(this, tLRPC$Document);
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ void editAnimatedSticker(TLRPC$Document tLRPC$Document, RLottieDrawable rLottieDrawable, boolean z) {
                ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$editAnimatedSticker(this, tLRPC$Document, rLottieDrawable, z);
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ void editMedia(TLRPC$Document tLRPC$Document, boolean z) {
                ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$editMedia(this, tLRPC$Document, z);
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public long getDialogId() {
                return -1L;
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ String getQuery(boolean z) {
                return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$getQuery(this, z);
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ void gifAddedOrDeleted() {
                ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$gifAddedOrDeleted(this);
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public boolean isInScheduleMode() {
                return false;
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ boolean isPhotoEditor() {
                return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$isPhotoEditor(this);
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ boolean isStoryReply() {
                return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$isStoryReply(this);
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ boolean needCopy(TLRPC$Document tLRPC$Document) {
                return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$needCopy(this, tLRPC$Document);
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ boolean needMenu() {
                return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$needMenu(this);
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ boolean needOpen() {
                return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$needOpen(this);
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ boolean needRemove() {
                return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$needRemove(this);
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ boolean needRemoveFromRecent(TLRPC$Document tLRPC$Document) {
                return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$needRemoveFromRecent(this, tLRPC$Document);
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public boolean needSend(int i) {
                return false;
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ void openKiklikoReport(String str) {
                ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$openKiklikoReport(this, str);
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public void openSet(TLRPC$InputStickerSet tLRPC$InputStickerSet, boolean z) {
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ void remove(SendMessagesHelper.ImportingSticker importingSticker) {
                ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$remove(this, importingSticker);
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ void removeFromRecent(TLRPC$Document tLRPC$Document) {
                ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$removeFromRecent(this, tLRPC$Document);
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ void resetTouch() {
                ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$resetTouch(this);
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ void sendEmoji(TLRPC$Document tLRPC$Document) {
                ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$sendEmoji(this, tLRPC$Document);
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ void sendGif(Object obj, Object obj2, boolean z, int i) {
                ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$sendGif(this, obj, obj2, z, i);
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ void sendKiklikoVideo(String str, String str2, boolean z, boolean z2, int i) {
                ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$sendKiklikoVideo(this, str, str2, z, z2, i);
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public void sendSticker(TLRPC$Document tLRPC$Document, String str, Object obj, boolean z, int i) {
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ void setAsEmojiStatus(TLRPC$Document tLRPC$Document, Integer num) {
                ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$setAsEmojiStatus(this, tLRPC$Document, num);
            }

            @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ void setKiklikoAvatar(String str) {
                ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$setKiklikoAvatar(this, str);
            }
        }, null);
    }

    private final void setupWalletRecycleView() {
        RecyclerView setupWalletRecycleView$lambda$25 = getBinding().recycleWalletHomeCryptoDashboard;
        setupWalletRecycleView$lambda$25.setLayoutManager(new GridLayoutManager(getParentActivity(), 4));
        BalancesRecycleAdapter balancesRecycleAdapter = getBalancesRecycleAdapter();
        balancesRecycleAdapter.getNftTokenProvider().setSpanCount(4);
        balancesRecycleAdapter.setDiffCallback(new BalanceDiffCallback());
        balancesRecycleAdapter.setGridSpanSizeLookup(new GridSpanSizeLookup() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda2
            @Override // com.chad.library.adapter.base.listener.GridSpanSizeLookup
            public final int getSpanSize(GridLayoutManager gridLayoutManager, int i, int i2) {
                int i3;
                i3 = WalletHomeCryptoFragment.setupWalletRecycleView$lambda$25$lambda$24$lambda$22(gridLayoutManager, i, i2);
                return i3;
            }
        });
        balancesRecycleAdapter.setOnNetworkViewLayoutAction(new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda12
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletHomeCryptoFragment.setupWalletRecycleView$lambda$25$lambda$24$lambda$23(WalletHomeCryptoFragment.this);
            }
        });
        setupWalletRecycleView$lambda$25.setAdapter(balancesRecycleAdapter);
        Intrinsics.checkNotNullExpressionValue(setupWalletRecycleView$lambda$25, "setupWalletRecycleView$lambda$25");
        RecycleViewExtKt.disableDefaultAnimation(setupWalletRecycleView$lambda$25);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupWalletRecycleView$lambda$25$lambda$24$lambda$23(WalletHomeCryptoFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().showChangeNetworkHintIfNeeded();
    }

    private final void setupSwipeRefresh() {
        getBinding().getRoot().setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda1
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                WalletHomeCryptoFragment.setupSwipeRefresh$lambda$26(WalletHomeCryptoFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupSwipeRefresh$lambda$26(WalletHomeCryptoFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().loadScreenInfo(true, true);
    }

    /* compiled from: WalletHomeCryptoFragment.kt */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletHomeCryptoFragment newInstance() {
            return new WalletHomeCryptoFragment();
        }
    }
}
