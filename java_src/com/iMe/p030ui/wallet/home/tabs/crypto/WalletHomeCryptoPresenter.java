package com.iMe.p030ui.wallet.home.tabs.crypto;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.manager.common.FeatureAvailableManager$Token;
import com.iMe.manager.wallet.create.WalletCreateManager;
import com.iMe.manager.wallet.create.WalletCreateManagerView;
import com.iMe.mapper.nft.NftUiMappingKt;
import com.iMe.mapper.wallet.NetworkUiMappingKt;
import com.iMe.mapper.wallet.TokenUiMappingKt;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.state.GlobalState;
import com.iMe.model.wallet.ItemOptionsModel;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.crypto.create.WalletCreationType;
import com.iMe.model.wallet.details.TokenDetailsArgs;
import com.iMe.model.wallet.home.AccountItem;
import com.iMe.model.wallet.home.BannerItem;
import com.iMe.model.wallet.home.BannerSlide;
import com.iMe.model.wallet.home.CryptoAccountItem;
import com.iMe.model.wallet.home.CryptoAddTokensItem;
import com.iMe.model.wallet.home.HeaderItemWithNetworkSwitcher;
import com.iMe.model.wallet.home.HorizontalActionButtonItem;
import com.iMe.model.wallet.home.NetworkChoosePurpose;
import com.iMe.model.wallet.home.SelectableHeaderItem;
import com.iMe.model.wallet.home.SlideItem;
import com.iMe.model.wallet.home.TokenSortingData;
import com.iMe.model.wallet.home.TotalBalanceItem;
import com.iMe.model.wallet.transfer.TransferScreenArgs;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.data.locale.prefs.model.TokenDisplaySettings;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.interactor.crypto.nft.avatar.NftInteractor;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.nft.NftToken;
import com.iMe.storage.domain.model.wallet.Hint;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.model.wallet.token.TokenOrderType;
import com.iMe.storage.domain.model.wallet.token.TokenType;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.storage.HintsPreferenceHelper;
import com.iMe.storage.domain.utils.p029rx.RxEventBus;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p029rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.p029rx.event.RxEvent;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Function;
import io.reactivex.observables.GroupedObservable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsJvmKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3630R;
import org.telegram.tgnet.TLRPC$User;
import timber.log.Timber;
/* compiled from: WalletHomeCryptoPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter */
/* loaded from: classes4.dex */
public final class WalletHomeCryptoPresenter extends BasePresenter<WalletHomeCryptoView> {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final CryptoWalletInteractor cryptoWalletInteractor;
    private final HintsPreferenceHelper hintsPreferenceHelper;
    private final CompositeDisposable mainScreenSubscriptions;
    private final NftInteractor nftAvatarInteractor;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private NetworkItem selectedNetworkItem;
    private TokenDetailed selectedTokenDetailed;
    private TokenType selectedTokenType;
    private List<? extends Object> sortedTokens;
    private final TelegramControllersGateway telegramControllersGateway;
    private final TelegramGateway telegramGateway;
    private List<? extends Object> tokens;
    private List<TokenDisplaySettings.Crypto> tokensDisplaySettings;
    private final WalletCreateManager walletCreateManager;
    private final WalletInteractor walletInteractor;

    /* compiled from: WalletHomeCryptoPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$WhenMappings */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[TokenType.values().length];
            try {
                iArr[TokenType.CRYPTO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TokenType.NFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[TokenOrderType.values().length];
            try {
                iArr2[TokenOrderType.ALPHABET.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[TokenOrderType.BALANCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[TokenOrderType.DEFAULT.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public void attachViewState(WalletCreateManagerView view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.walletCreateManager.attachViewState(view);
    }

    public List<WalletCreationType> getAvailableWalletCreationTypes(BlockchainType blockchainType) {
        return this.walletCreateManager.getAvailableWalletCreationTypes(blockchainType);
    }

    public Map<BlockchainType, String> getLinkedWalletsAddresses() {
        return this.walletCreateManager.getLinkedWalletsAddresses();
    }

    public void onDetachViewState() {
        this.walletCreateManager.onDetachViewState();
    }

    public void runWithCryptoInformationCheck(Callbacks$Callback endAction) {
        Intrinsics.checkNotNullParameter(endAction, "endAction");
        this.walletCreateManager.runWithCryptoInformationCheck(endAction);
    }

    public void setLinkedWalletsAddresses(Map<BlockchainType, String> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.walletCreateManager.setLinkedWalletsAddresses(map);
    }

    public void startWalletCreationFlow(WalletCreationType walletCreationType) {
        Intrinsics.checkNotNullParameter(walletCreationType, "walletCreationType");
        this.walletCreateManager.startWalletCreationFlow(walletCreationType);
    }

    public WalletHomeCryptoPresenter(CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, CryptoWalletInteractor cryptoWalletInteractor, HintsPreferenceHelper hintsPreferenceHelper, NftInteractor nftAvatarInteractor, ResourceManager resourceManager, RxEventBus rxEventBus, SchedulersProvider schedulersProvider, TelegramControllersGateway telegramControllersGateway, TelegramGateway telegramGateway, WalletCreateManager walletCreateManager, WalletInteractor walletInteractor) {
        List<? extends Object> emptyList;
        List<? extends Object> emptyList2;
        List<TokenDisplaySettings.Crypto> emptyList3;
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(cryptoWalletInteractor, "cryptoWalletInteractor");
        Intrinsics.checkNotNullParameter(hintsPreferenceHelper, "hintsPreferenceHelper");
        Intrinsics.checkNotNullParameter(nftAvatarInteractor, "nftAvatarInteractor");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(telegramControllersGateway, "telegramControllersGateway");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        Intrinsics.checkNotNullParameter(walletCreateManager, "walletCreateManager");
        Intrinsics.checkNotNullParameter(walletInteractor, "walletInteractor");
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.cryptoWalletInteractor = cryptoWalletInteractor;
        this.hintsPreferenceHelper = hintsPreferenceHelper;
        this.nftAvatarInteractor = nftAvatarInteractor;
        this.resourceManager = resourceManager;
        this.rxEventBus = rxEventBus;
        this.schedulersProvider = schedulersProvider;
        this.telegramControllersGateway = telegramControllersGateway;
        this.telegramGateway = telegramGateway;
        this.walletCreateManager = walletCreateManager;
        this.walletInteractor = walletInteractor;
        this.mainScreenSubscriptions = new CompositeDisposable();
        this.selectedNetworkItem = getInitialNetworkItem();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.tokens = emptyList;
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        this.sortedTokens = emptyList2;
        this.selectedTokenType = TokenType.CRYPTO;
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        this.tokensDisplaySettings = emptyList3;
    }

    public final Network getCurrentNetwork() {
        return this.cryptoPreferenceHelper.getNetwork();
    }

    private final String getCurrentNetworkId() {
        return this.cryptoPreferenceHelper.getNetworkId();
    }

    private final BlockchainType getCurrentBlockchainType() {
        return this.cryptoPreferenceHelper.getCurrentBlockchainType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isAllNetworksSelected() {
        return this.cryptoPreferenceHelper.isAllNetworksSelected();
    }

    public static /* synthetic */ void loadScreenInfo$default(WalletHomeCryptoPresenter walletHomeCryptoPresenter, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        walletHomeCryptoPresenter.loadScreenInfo(z, z2);
    }

    public final void loadScreenInfo(boolean z, boolean z2) {
        resetMainRequests();
        loadTokens(z, z2);
    }

    public final void switchHiddenBalance() {
        CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
        cryptoPreferenceHelper.setBalanceHidden(!cryptoPreferenceHelper.isBalanceHidden());
        ((WalletHomeCryptoView) getViewState()).renderNodes(configureUiItems$default(this, this.sortedTokens, false, null, 6, null));
    }

    public static /* synthetic */ void startChooseNetworkDialog$default(WalletHomeCryptoPresenter walletHomeCryptoPresenter, NetworkChoosePurpose networkChoosePurpose, int i, Object obj) {
        if ((i & 1) != 0) {
            networkChoosePurpose = NetworkChoosePurpose.Common.INSTANCE;
        }
        walletHomeCryptoPresenter.startChooseNetworkDialog(networkChoosePurpose);
    }

    public final void startChooseNetworkDialog(NetworkChoosePurpose purpose) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        ((WalletHomeCryptoView) getViewState()).showChooseNetworkDialog(this.selectedNetworkItem, getAvailableNetworkItems(purpose), purpose);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v5, types: [com.iMe.model.wallet.crypto.NetworkItem$All] */
    public final void onNetworkSelected(NetworkItem.Crypto crypto, NetworkChoosePurpose purpose) {
        Network mapToDomain;
        Network mapToDomain2;
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        NetworkItem.Crypto crypto2 = crypto;
        if (purpose instanceof NetworkChoosePurpose.Common) {
            if (crypto == null) {
                crypto2 = NetworkItem.All.INSTANCE;
            }
            if (crypto2 instanceof NetworkItem.All) {
                if (!isAllNetworksSelected()) {
                    this.cryptoPreferenceHelper.setAllNetworksSelected(true);
                    ((WalletHomeCryptoView) getViewState()).renderNodes(configureUiItems$default(this, null, true, null, 5, null));
                    this.rxEventBus.publish(DomainRxEvents.NetworkUpdated.INSTANCE);
                }
            } else if (crypto2 instanceof NetworkItem.Crypto) {
                Network mapToDomain3 = NetworkUiMappingKt.mapToDomain(crypto2);
                if (!Intrinsics.areEqual(mapToDomain3.getId(), getCurrentNetworkId()) || isAllNetworksSelected()) {
                    this.cryptoPreferenceHelper.setAllNetworksSelected(false);
                    this.cryptoPreferenceHelper.setNetwork(mapToDomain3);
                    ((WalletHomeCryptoView) getViewState()).renderNodes(configureUiItems$default(this, null, true, null, 5, null));
                    this.rxEventBus.publish(DomainRxEvents.NetworkUpdated.INSTANCE);
                }
            }
            this.selectedNetworkItem = crypto2;
        } else if (purpose instanceof NetworkChoosePurpose.Receive) {
            if (crypto == null || (mapToDomain2 = NetworkUiMappingKt.mapToDomain(crypto)) == null) {
                return;
            }
            showQrReceiveDialog(mapToDomain2);
        } else if (purpose instanceof NetworkChoosePurpose.NewWallet) {
            CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
            if (crypto == null || (mapToDomain = NetworkUiMappingKt.mapToDomain(crypto)) == null) {
                return;
            }
            cryptoPreferenceHelper.setNetwork(mapToDomain);
            startWalletCreationFlow(((NetworkChoosePurpose.NewWallet) purpose).getWalletCreationType());
        }
    }

    public final void showWalletAddressScan() {
        WalletHomeCryptoView walletHomeCryptoView = (WalletHomeCryptoView) getViewState();
        String str = getLinkedWalletsAddresses().get(getCurrentBlockchainType());
        if (str == null) {
            str = "";
        }
        walletHomeCryptoView.showWalletAddressScan(str);
    }

    public final void onSelectTokensSortingClicked() {
        ((WalletHomeCryptoView) getViewState()).showSelectTokensOrderTypeDialog(new TokenSortingData(isAllNetworksSelected() ? this.cryptoPreferenceHelper.getAllNetworksTokensOrderType() : this.cryptoPreferenceHelper.getTokensOrderType(), this.cryptoPreferenceHelper.isTokensPositiveBalances()), isAllNetworksSelected());
    }

    public final void setTokensSorting(TokenSortingData tokenSortingData) {
        Intrinsics.checkNotNullParameter(tokenSortingData, "tokenSortingData");
        CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
        if (cryptoPreferenceHelper.isAllNetworksSelected()) {
            cryptoPreferenceHelper.setAllNetworksTokensOrderType(tokenSortingData.getTokensOrderType());
        } else {
            cryptoPreferenceHelper.setTokensOrderType(tokenSortingData.getTokensOrderType());
        }
        cryptoPreferenceHelper.setTokensPositiveBalances(tokenSortingData.isPositiveBalances());
        if ((!this.tokensDisplaySettings.isEmpty()) || isAllNetworksSelected()) {
            this.sortedTokens = getSortedTokens();
            ((WalletHomeCryptoView) getViewState()).renderNodes(configureUiItems$default(this, this.sortedTokens, false, null, 6, null));
            return;
        }
        loadTokens$default(this, false, false, 2, null);
    }

    public final void showChangeNetworkHintIfNeeded() {
        HintsPreferenceHelper hintsPreferenceHelper = this.hintsPreferenceHelper;
        Hint.ChangeNetwork.CryptoHomeScreen cryptoHomeScreen = Hint.ChangeNetwork.CryptoHomeScreen.INSTANCE;
        if (hintsPreferenceHelper.shouldShowHint(cryptoHomeScreen) && this.cryptoAccessManager.isWalletCreated(getCurrentBlockchainType())) {
            ((WalletHomeCryptoView) getViewState()).showChangeNetworkHint();
            this.hintsPreferenceHelper.onHintShowed(cryptoHomeScreen);
        }
    }

    public final void openTokenSettingsScreen() {
        ((WalletHomeCryptoView) getViewState()).openTokenSettingsScreen(getCurrentNetworkId());
    }

    public final void openWalletDetails(AccountItem.Token item) {
        Intrinsics.checkNotNullParameter(item, "item");
        ((WalletHomeCryptoView) getViewState()).openWalletDetails(new TokenDetailsArgs.Crypto(item, getLinkedWalletsAddresses().get(NetworksHelper.getNetworkById(item.getBalance().getToken().getNetworkId()).getBlockchainType())));
    }

    public final void onItemLongClick(TokenDetailed tokenDetailed) {
        ((WalletHomeCryptoView) getViewState()).showMenuItems(createMutableListMenuItem(tokenDetailed));
    }

    public final void onMenuItemClick(int i) {
        if (i == IdFabric$Menu.WALLET_BANNER_DISABLE) {
            hideBanners();
        } else if (i == IdFabric$Menu.WALLET_TOKEN_HIDE) {
            TokenDetailed tokenDetailed = this.selectedTokenDetailed;
            if (tokenDetailed == null) {
                return;
            }
            hideToken(tokenDetailed);
        } else {
            boolean z = true;
            if (i != IdFabric$Menu.WALLET_TOKEN_HIDE_RATES && i != IdFabric$Menu.WALLET_TOKEN_SHOW_RATES) {
                z = false;
            }
            if (z) {
                toggleRates();
            } else if (i == IdFabric$Menu.WALLET_TOKEN_SEND) {
                TokenDetailed tokenDetailed2 = this.selectedTokenDetailed;
                if (tokenDetailed2 != null) {
                    ((WalletHomeCryptoView) getViewState()).openSendScreen(new TransferScreenArgs(TokenUiMappingKt.mapToUI(tokenDetailed2), null, null, null, tokenDetailed2.getNetworkId(), 14, null));
                }
            } else if (i == IdFabric$Menu.WALLET_TOKEN_SWAP) {
                WalletHomeCryptoView walletHomeCryptoView = (WalletHomeCryptoView) getViewState();
                TokenDetailed tokenDetailed3 = this.selectedTokenDetailed;
                if (tokenDetailed3 == null) {
                    return;
                }
                walletHomeCryptoView.openSwapScreen(tokenDetailed3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        ((WalletHomeCryptoView) getViewState()).renderNodes(configureUiItems$default(this, null, true, null, 5, null));
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        attachViewState((WalletCreateManagerView) viewState);
        listenEvents();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iMe.p030ui.base.mvp.base.BasePresenter
    public void clearSubscriptions() {
        super.clearSubscriptions();
        onDetachViewState();
        resetMainRequests();
    }

    static /* synthetic */ void loadTokens$default(WalletHomeCryptoPresenter walletHomeCryptoPresenter, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        walletHomeCryptoPresenter.loadTokens(z, z2);
    }

    private final void loadTokens(boolean z, final boolean z2) {
        final Observable<Result<List<BaseNode>>> walletBalanceItemsObservable;
        int i = WhenMappings.$EnumSwitchMapping$0[this.selectedTokenType.ordinal()];
        if (i == 1) {
            walletBalanceItemsObservable = getWalletBalanceItemsObservable(z);
        } else if (i != 2) {
            throw new NoWhenBranchMatchedException();
        } else {
            walletBalanceItemsObservable = getNftItemsObservable();
        }
        Observable<Result<Map<BlockchainType, String>>> observeOn = this.cryptoWalletInteractor.getLinkedWalletsAddresses().observeOn(this.schedulersProvider.mo1009ui());
        final Function1<Result<? extends Map<BlockchainType, ? extends String>>, ObservableSource<? extends Result<? extends List<BaseNode>>>> function1 = new Function1<Result<? extends Map<BlockchainType, ? extends String>>, ObservableSource<? extends Result<? extends List<BaseNode>>>>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$loadTokens$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ ObservableSource<? extends Result<? extends List<BaseNode>>> invoke(Result<? extends Map<BlockchainType, ? extends String>> result) {
                return invoke2((Result<? extends Map<BlockchainType, String>>) result);
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final ObservableSource<? extends Result<List<BaseNode>>> invoke2(Result<? extends Map<BlockchainType, String>> addressResult) {
                NetworkItem networkItem;
                CryptoAccessManager cryptoAccessManager;
                boolean isAuthorized;
                boolean isWalletDataMismatching;
                CryptoAccessManager cryptoAccessManager2;
                Intrinsics.checkNotNullParameter(addressResult, "addressResult");
                WalletHomeCryptoPresenter walletHomeCryptoPresenter = WalletHomeCryptoPresenter.this;
                Map<BlockchainType, String> data = addressResult.getData();
                if (data == null) {
                    data = MapsKt__MapsKt.emptyMap();
                }
                walletHomeCryptoPresenter.setLinkedWalletsAddresses(data);
                if (!z2) {
                    ((WalletHomeCryptoView) WalletHomeCryptoPresenter.this.getViewState()).renderNodes(WalletHomeCryptoPresenter.configureUiItems$default(WalletHomeCryptoPresenter.this, null, true, null, 5, null));
                }
                networkItem = WalletHomeCryptoPresenter.this.selectedNetworkItem;
                if (networkItem instanceof NetworkItem.All) {
                    cryptoAccessManager2 = WalletHomeCryptoPresenter.this.cryptoAccessManager;
                    isAuthorized = cryptoAccessManager2.isAnyWalletCreated();
                } else if (networkItem instanceof NetworkItem.Crypto) {
                    cryptoAccessManager = WalletHomeCryptoPresenter.this.cryptoAccessManager;
                    isAuthorized = cryptoAccessManager.isAuthorized(NetworkUiMappingKt.mapToDomain((NetworkItem.Crypto) networkItem).getBlockchainType());
                } else {
                    throw new NoWhenBranchMatchedException();
                }
                if (isAuthorized) {
                    isWalletDataMismatching = WalletHomeCryptoPresenter.this.isWalletDataMismatching();
                    if (isWalletDataMismatching) {
                        ((WalletHomeCryptoView) WalletHomeCryptoPresenter.this.getViewState()).showAddressMismatchScreen();
                    }
                    return walletBalanceItemsObservable;
                }
                Observable just = Observable.just(Result.Companion.success(WalletHomeCryptoPresenter.configureUiItems$default(WalletHomeCryptoPresenter.this, null, false, null, 7, null)));
                Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                return just;
            }
        };
        Observable doFinally = observeOn.flatMap(new Function() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource loadTokens$lambda$3;
                loadTokens$lambda$3 = WalletHomeCryptoPresenter.loadTokens$lambda$3(Function1.this, obj);
                return loadTokens$lambda$3;
            }
        }).observeOn(this.schedulersProvider.mo1009ui()).doFinally(new Action() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Action
            public final void run() {
                WalletHomeCryptoPresenter.loadTokens$lambda$4(WalletHomeCryptoPresenter.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "private fun loadTokens(\n…creenSubscriptions)\n    }");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = doFinally.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<BaseNode>>, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$loadTokens$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<BaseNode>> result) {
                m1761invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1761invoke(Result<? extends List<BaseNode>> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<BaseNode>> result = it;
                WalletHomeCryptoView walletHomeCryptoView = (WalletHomeCryptoView) WalletHomeCryptoPresenter.this.getViewState();
                if (result instanceof Result.Success) {
                    walletHomeCryptoView.renderNodes((List) ((Result.Success) result).getData());
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    resourceManager = WalletHomeCryptoPresenter.this.resourceManager;
                    walletHomeCryptoView.showErrorToast(error, resourceManager);
                    walletHomeCryptoView.renderNodes(WalletHomeCryptoPresenter.configureUiItems$default(WalletHomeCryptoPresenter.this, null, false, error.getError().getStatus(), 3, null));
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$loadTokens$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        autoDispose(subscribe, this.mainScreenSubscriptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource loadTokens$lambda$3(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadTokens$lambda$4(WalletHomeCryptoPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ((WalletHomeCryptoView) this$0.getViewState()).showRefreshing(false);
    }

    private final List<ItemOptionsModel> createMutableListMenuItem(TokenDetailed tokenDetailed) {
        List<ItemOptionsModel> listOf;
        if (tokenDetailed == null) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(new ItemOptionsModel(IdFabric$Menu.WALLET_BANNER_DISABLE, C3630R.C3632drawable.msg_disable, C3630R.string.wallet_details_menu_hide_banner));
            return listOf;
        }
        this.selectedTokenDetailed = tokenDetailed;
        ArrayList arrayList = new ArrayList();
        if (!tokenDetailed.isCoin() && !isAllNetworksSelected()) {
            arrayList.add(new ItemOptionsModel(IdFabric$Menu.WALLET_TOKEN_HIDE, C3630R.C3632drawable.msg_archive_hide, C3630R.string.wallet_token_details_menu_hide_token));
        }
        if (this.cryptoPreferenceHelper.isQuotationsVisible()) {
            arrayList.add(new ItemOptionsModel(IdFabric$Menu.WALLET_TOKEN_HIDE_RATES, C3630R.C3632drawable.msg_noise_off, C3630R.string.wallet_token_details_menu_hide_rates));
        } else {
            arrayList.add(new ItemOptionsModel(IdFabric$Menu.WALLET_TOKEN_SHOW_RATES, C3630R.C3632drawable.msg_noise_on, C3630R.string.wallet_token_details_menu_show_rates));
        }
        arrayList.add(new ItemOptionsModel(IdFabric$Menu.WALLET_TOKEN_SEND, C3630R.C3632drawable.msg_send, C3630R.string.wallet_token_details_details_action_send));
        if (isBuyAvailable(tokenDetailed.getNetworkId())) {
            arrayList.add(new ItemOptionsModel(IdFabric$Menu.WALLET_TOKEN_SWAP, C3630R.C3632drawable.fork_ic_exchange_27, C3630R.string.wallet_token_details_transactions_swap));
        }
        return arrayList;
    }

    private final void hideToken(TokenDetailed tokenDetailed) {
        Observable<Result<Boolean>> observeOn = this.walletInteractor.setTokenVisibility(new Token(tokenDetailed.getAddress(), tokenDetailed.getNetworkId()), false).observeOn(this.schedulersProvider.mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor.setToke…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$hideToken$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1759invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1759invoke(Result<? extends Boolean> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Boolean> result = it;
                if (result instanceof Result.Success) {
                    WalletHomeCryptoPresenter.loadScreenInfo$default(WalletHomeCryptoPresenter.this, false, true, 1, null);
                } else if (result instanceof Result.Error) {
                    resourceManager = WalletHomeCryptoPresenter.this.resourceManager;
                    ((WalletHomeCryptoView) WalletHomeCryptoPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$hideToken$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void toggleRates() {
        CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
        cryptoPreferenceHelper.setQuotationsVisible(!cryptoPreferenceHelper.isQuotationsVisible());
        this.rxEventBus.publish(DomainRxEvents.InterfaceSettingsChanged.INSTANCE);
    }

    private final void hideBanners() {
        this.cryptoPreferenceHelper.setBannersVisible(false);
        this.rxEventBus.publish(DomainRxEvents.InterfaceSettingsChanged.INSTANCE);
    }

    private final boolean isBuyAvailable(String str) {
        return FeatureAvailableManager$Token.INSTANCE.isPurchaseAvailable(str);
    }

    private final Observable<Result<List<BaseNode>>> getWalletBalanceItemsObservable(boolean z) {
        if (isAllNetworksSelected()) {
            Observable distinctUntilChanged = WalletInteractor.getWalletMultiChainBalance$default(this.walletInteractor, z, null, 2, null).distinctUntilChanged();
            Intrinsics.checkNotNullExpressionValue(distinctUntilChanged, "walletInteractor\n       …  .distinctUntilChanged()");
            Observable<Result<List<BaseNode>>> map = distinctUntilChanged.map(new C2358x21775993(new Function1<Result<? extends List<? extends TokenBalance>>, Result<? extends List<BaseNode>>>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$getWalletBalanceItemsObservable$$inlined$mapSuccess$1
                {
                    super(1);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlin.jvm.functions.Function1
                public final Result<? extends List<BaseNode>> invoke(Result<? extends List<? extends TokenBalance>> result) {
                    List sortedTokens;
                    List list;
                    Intrinsics.checkNotNullParameter(result, "result");
                    if (!(result instanceof Result.Success)) {
                        if (result instanceof Result.Error) {
                            Result<? extends List<BaseNode>> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                            Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.mapSuccess");
                            return error$default;
                        } else if (result instanceof Object) {
                            return result;
                        } else {
                            return null;
                        }
                    }
                    WalletHomeCryptoPresenter walletHomeCryptoPresenter = WalletHomeCryptoPresenter.this;
                    List list2 = (List) result.getData();
                    if (list2 == null) {
                        list2 = CollectionsKt__CollectionsKt.emptyList();
                    }
                    walletHomeCryptoPresenter.tokens = list2;
                    WalletHomeCryptoPresenter walletHomeCryptoPresenter2 = WalletHomeCryptoPresenter.this;
                    sortedTokens = walletHomeCryptoPresenter2.getSortedTokens();
                    walletHomeCryptoPresenter2.sortedTokens = sortedTokens;
                    WalletHomeCryptoPresenter walletHomeCryptoPresenter3 = WalletHomeCryptoPresenter.this;
                    list = walletHomeCryptoPresenter3.sortedTokens;
                    return Result.Companion.success(WalletHomeCryptoPresenter.configureUiItems$default(walletHomeCryptoPresenter3, list, false, null, 6, null));
                }
            }));
            Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
            return map;
        }
        Observable distinctUntilChanged2 = WalletInteractor.getWalletBalance$default(this.walletInteractor, z, null, 2, null).distinctUntilChanged();
        Intrinsics.checkNotNullExpressionValue(distinctUntilChanged2, "walletInteractor\n       …  .distinctUntilChanged()");
        Observable<Result<List<BaseNode>>> flatMap = distinctUntilChanged2.flatMap(new C2358x21775993(new Function1<Result<? extends List<? extends TokenBalance>>, ObservableSource<? extends Result<? extends List<BaseNode>>>>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$getWalletBalanceItemsObservable$$inlined$flatMapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends List<BaseNode>>> invoke(final Result<? extends List<? extends TokenBalance>> result) {
                WalletInteractor walletInteractor;
                SchedulersProvider schedulersProvider;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                walletInteractor = WalletHomeCryptoPresenter.this.walletInteractor;
                Observable tokensSettings$default = WalletInteractor.getTokensSettings$default(walletInteractor, null, 1, null);
                schedulersProvider = WalletHomeCryptoPresenter.this.schedulersProvider;
                Observable observeOn = tokensSettings$default.observeOn(schedulersProvider.mo1009ui());
                Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
                final WalletHomeCryptoPresenter walletHomeCryptoPresenter = WalletHomeCryptoPresenter.this;
                Observable map2 = observeOn.map(new C2358x21775993(new Function1<Result<? extends List<? extends TokenDisplaySettings.Crypto>>, Result<? extends List<BaseNode>>>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$getWalletBalanceItemsObservable$lambda$11$$inlined$mapSuccess$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // kotlin.jvm.functions.Function1
                    public final Result<? extends List<BaseNode>> invoke(Result<? extends List<? extends TokenDisplaySettings.Crypto>> result2) {
                        List sortedTokens;
                        List list;
                        Intrinsics.checkNotNullParameter(result2, "result");
                        if (!(result2 instanceof Result.Success)) {
                            if (result2 instanceof Result.Error) {
                                Result<? extends List<BaseNode>> error$default2 = Result.Companion.error$default(Result.Companion, ((Result.Error) result2).getError(), null, 2, null);
                                Intrinsics.checkNotNull(error$default2, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.mapSuccess");
                                return error$default2;
                            } else if (result2 instanceof Object) {
                                return result2;
                            } else {
                                return null;
                            }
                        }
                        WalletHomeCryptoPresenter walletHomeCryptoPresenter2 = WalletHomeCryptoPresenter.this;
                        List list2 = (List) result2.getData();
                        if (list2 == null) {
                            list2 = CollectionsKt__CollectionsKt.emptyList();
                        }
                        walletHomeCryptoPresenter2.tokensDisplaySettings = list2;
                        WalletHomeCryptoPresenter walletHomeCryptoPresenter3 = WalletHomeCryptoPresenter.this;
                        List list3 = (List) result.getData();
                        if (list3 == null) {
                            list3 = CollectionsKt__CollectionsKt.emptyList();
                        }
                        walletHomeCryptoPresenter3.tokens = list3;
                        WalletHomeCryptoPresenter walletHomeCryptoPresenter4 = WalletHomeCryptoPresenter.this;
                        sortedTokens = walletHomeCryptoPresenter4.getSortedTokens();
                        walletHomeCryptoPresenter4.sortedTokens = sortedTokens;
                        WalletHomeCryptoPresenter walletHomeCryptoPresenter5 = WalletHomeCryptoPresenter.this;
                        list = walletHomeCryptoPresenter5.sortedTokens;
                        return Result.Companion.success(WalletHomeCryptoPresenter.configureUiItems$default(walletHomeCryptoPresenter5, list, false, null, 6, null));
                    }
                }));
                Intrinsics.checkNotNullExpressionValue(map2, "crossinline body: (T) ->…ult as? R\n        }\n    }");
                return map2;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<TokenBalance> getSortedTokens() {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        List<TokenBalance> sortedWith;
        List<TokenBalance> sortedWith2;
        List<TokenBalance> sortedWith3;
        List<TokenBalance> sortedWith4;
        List<? extends Object> list = this.tokens;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof TokenBalance) {
                arrayList.add(obj);
            }
        }
        if (this.cryptoPreferenceHelper.isTokensPositiveBalances()) {
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : arrayList) {
                if (((TokenBalance) obj2).getTotalInFiat().getValue() > 0.0d) {
                    arrayList2.add(obj2);
                }
            }
            arrayList = arrayList2;
        }
        if (isAllNetworksSelected()) {
            int i = WhenMappings.$EnumSwitchMapping$1[this.cryptoPreferenceHelper.getAllNetworksTokensOrderType().ordinal()];
            if (i == 1) {
                sortedWith3 = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$getSortedTokens$$inlined$sortedBy$1
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        int compareValues;
                        String name = ((TokenBalance) t).getToken().getName();
                        Locale locale = Locale.ROOT;
                        String lowerCase = name.toLowerCase(locale);
                        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
                        String lowerCase2 = ((TokenBalance) t2).getToken().getName().toLowerCase(locale);
                        Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(Locale.ROOT)");
                        compareValues = ComparisonsKt__ComparisonsKt.compareValues(lowerCase, lowerCase2);
                        return compareValues;
                    }
                });
                return sortedWith3;
            } else if (i == 2) {
                sortedWith4 = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$getSortedTokens$$inlined$sortedByDescending$1
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        int compareValues;
                        compareValues = ComparisonsKt__ComparisonsKt.compareValues(Double.valueOf(((TokenBalance) t2).getTotalInFiat().getValue()), Double.valueOf(((TokenBalance) t).getTotalInFiat().getValue()));
                        return compareValues;
                    }
                });
                return sortedWith4;
            } else if (i == 3) {
                return arrayList;
            } else {
                throw new NoWhenBranchMatchedException();
            }
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj3 : arrayList) {
            if (!this.cryptoPreferenceHelper.getOnlyPositiveTokens() || ((TokenBalance) obj3).getTotal() > 0.0d) {
                arrayList3.add(obj3);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList3, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (Object obj4 : arrayList3) {
            linkedHashMap.put(((TokenBalance) obj4).getToken().getAddress(), obj4);
        }
        List<TokenDisplaySettings.Crypto> list2 = this.tokensDisplaySettings;
        ArrayList<TokenDisplaySettings.Crypto> arrayList4 = new ArrayList();
        for (Object obj5 : list2) {
            if (((TokenDisplaySettings.Crypto) obj5).isVisible()) {
                arrayList4.add(obj5);
            }
        }
        ArrayList arrayList5 = new ArrayList();
        for (TokenDisplaySettings.Crypto crypto : arrayList4) {
            TokenBalance tokenBalance = (TokenBalance) linkedHashMap.get(crypto.getTokenAddress());
            if (tokenBalance != null) {
                arrayList5.add(tokenBalance);
            }
        }
        int i2 = WhenMappings.$EnumSwitchMapping$1[this.cryptoPreferenceHelper.getTokensOrderType().ordinal()];
        if (i2 == 1) {
            final Comparator comparator = new Comparator() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$getSortedTokens$$inlined$compareByDescending$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Boolean.valueOf(((TokenBalance) t2).getToken().isCoin()), Boolean.valueOf(((TokenBalance) t).getToken().isCoin()));
                    return compareValues;
                }
            };
            sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList5, new Comparator() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$getSortedTokens$$inlined$thenBy$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    int compare = comparator.compare(t, t2);
                    if (compare != 0) {
                        return compare;
                    }
                    String name = ((TokenBalance) t).getToken().getName();
                    Locale locale = Locale.ROOT;
                    String lowerCase = name.toLowerCase(locale);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
                    String lowerCase2 = ((TokenBalance) t2).getToken().getName().toLowerCase(locale);
                    Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(Locale.ROOT)");
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(lowerCase, lowerCase2);
                    return compareValues;
                }
            });
            return sortedWith;
        } else if (i2 != 2) {
            if (i2 == 3) {
                return arrayList5;
            }
            throw new NoWhenBranchMatchedException();
        } else {
            final Comparator comparator2 = new Comparator() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$getSortedTokens$$inlined$compareByDescending$2
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Boolean.valueOf(((TokenBalance) t2).getToken().isCoin()), Boolean.valueOf(((TokenBalance) t).getToken().isCoin()));
                    return compareValues;
                }
            };
            sortedWith2 = CollectionsKt___CollectionsKt.sortedWith(arrayList5, new Comparator() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$getSortedTokens$$inlined$thenByDescending$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    int compare = comparator2.compare(t, t2);
                    if (compare != 0) {
                        return compare;
                    }
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Double.valueOf(((TokenBalance) t2).getTotalInFiat().getValue()), Double.valueOf(((TokenBalance) t).getTotalInFiat().getValue()));
                    return compareValues;
                }
            });
            return sortedWith2;
        }
    }

    private final Observable<Result<List<BaseNode>>> getNftItemsObservable() {
        Observable distinctUntilChanged = NftInteractor.getOwnNftItems$default(this.nftAvatarInteractor, isAllNetworksSelected() ? null : getCurrentNetworkId(), null, null, 6, null).distinctUntilChanged();
        Intrinsics.checkNotNullExpressionValue(distinctUntilChanged, "nftAvatarInteractor\n    …  .distinctUntilChanged()");
        Observable<Result<List<BaseNode>>> map = distinctUntilChanged.map(new C2358x21775993(new Function1<Result<? extends List<? extends NftToken>>, Result<? extends List<BaseNode>>>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$getNftItemsObservable$$inlined$mapSuccess$1
            {
                super(1);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public final Result<? extends List<BaseNode>> invoke(Result<? extends List<? extends NftToken>> result) {
                List list;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result<? extends List<BaseNode>> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.mapSuccess");
                        return error$default;
                    } else if (result instanceof Object) {
                        return result;
                    } else {
                        return null;
                    }
                }
                WalletHomeCryptoPresenter walletHomeCryptoPresenter = WalletHomeCryptoPresenter.this;
                Object data = result.getData();
                Intrinsics.checkNotNull(data);
                walletHomeCryptoPresenter.sortedTokens = (List) data;
                WalletHomeCryptoPresenter walletHomeCryptoPresenter2 = WalletHomeCryptoPresenter.this;
                list = walletHomeCryptoPresenter2.sortedTokens;
                return Result.Companion.success(WalletHomeCryptoPresenter.configureUiItems$default(walletHomeCryptoPresenter2, list, false, null, 6, null));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        return map;
    }

    private final void resetMainRequests() {
        this.mainScreenSubscriptions.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isWalletDataMismatching() {
        String str = getLinkedWalletsAddresses().get(getCurrentBlockchainType());
        return (!(this.cryptoAccessManager.getLastLoggedInAddress(getCurrentBlockchainType()).length() > 0) || str == null || Intrinsics.areEqual(this.cryptoAccessManager.getLastLoggedInAddress(getCurrentBlockchainType()), str)) ? false : true;
    }

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(RxEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n            .o…(schedulersProvider.ui())");
        final WalletHomeCryptoPresenter$listenEvents$1 walletHomeCryptoPresenter$listenEvents$1 = new Function1<RxEvent, Boolean>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$listenEvents$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(RxEvent it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.valueOf(it instanceof DomainRxEvents.TokensSettingsChanged);
            }
        };
        Observable groupBy = observeOn.groupBy(new Function() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Boolean listenEvents$lambda$24;
                listenEvents$lambda$24 = WalletHomeCryptoPresenter.listenEvents$lambda$24(Function1.this, obj);
                return listenEvents$lambda$24;
            }
        });
        final WalletHomeCryptoPresenter$listenEvents$2 walletHomeCryptoPresenter$listenEvents$2 = new Function1<GroupedObservable<Boolean, RxEvent>, Observable<RxEvent>>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$listenEvents$2
            @Override // kotlin.jvm.functions.Function1
            public final Observable<RxEvent> invoke(GroupedObservable<Boolean, RxEvent> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Intrinsics.areEqual(it.getKey(), Boolean.TRUE) ? it.debounce(500L, TimeUnit.MILLISECONDS) : it;
            }
        };
        Observable merge = Observable.merge(groupBy.map(new Function() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Observable listenEvents$lambda$25;
                listenEvents$lambda$25 = WalletHomeCryptoPresenter.listenEvents$lambda$25(Function1.this, obj);
                return listenEvents$lambda$25;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(merge, "merge(\n                r…          }\n            )");
        Disposable subscribe = merge.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<RxEvent, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RxEvent rxEvent) {
                m1760invoke(rxEvent);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1760invoke(RxEvent it) {
                Map<BlockchainType, String> emptyMap;
                NetworkItem networkItem;
                CryptoPreferenceHelper cryptoPreferenceHelper;
                NetworkItem networkItem2;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                RxEvent rxEvent = it;
                if (rxEvent instanceof DomainRxEvents.TokensSettingsChanged ? true : rxEvent instanceof DomainRxEvents.InterfaceSettingsChanged) {
                    WalletHomeCryptoPresenter.this.loadScreenInfo(true, true);
                    return;
                }
                if (Intrinsics.areEqual(rxEvent, DomainRxEvents.NetworksSettingsChanged.INSTANCE)) {
                    networkItem = WalletHomeCryptoPresenter.this.selectedNetworkItem;
                    NetworkItem.Crypto crypto = networkItem instanceof NetworkItem.Crypto ? (NetworkItem.Crypto) networkItem : null;
                    String networkId = crypto != null ? crypto.getNetworkId() : null;
                    if (networkId != null && !NetworksHelper.INSTANCE.isNetworkEnabled(networkId)) {
                        WalletHomeCryptoPresenter.this.selectedNetworkItem = NetworkItem.All.INSTANCE;
                    }
                    cryptoPreferenceHelper = WalletHomeCryptoPresenter.this.cryptoPreferenceHelper;
                    networkItem2 = WalletHomeCryptoPresenter.this.selectedNetworkItem;
                    cryptoPreferenceHelper.setAllNetworksSelected(Intrinsics.areEqual(networkItem2, NetworkItem.All.INSTANCE));
                    WalletHomeCryptoPresenter.this.loadScreenInfo(true, true);
                    return;
                }
                if (Intrinsics.areEqual(rxEvent, DomainRxEvents.AllWalletsReset.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.WalletReset.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.NetworkUpdated.INSTANCE)) {
                    WalletHomeCryptoPresenter walletHomeCryptoPresenter = WalletHomeCryptoPresenter.this;
                    emptyMap = MapsKt__MapsKt.emptyMap();
                    walletHomeCryptoPresenter.setLinkedWalletsAddresses(emptyMap);
                    WalletHomeCryptoPresenter.loadScreenInfo$default(WalletHomeCryptoPresenter.this, true, false, 2, null);
                    return;
                }
                if (Intrinsics.areEqual(rxEvent, DomainRxEvents.WalletCreated.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.WalletRestored.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.SuccessSaveBackup.INSTANCE)) {
                    WalletHomeCryptoPresenter.loadScreenInfo$default(WalletHomeCryptoPresenter.this, true, false, 2, null);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean listenEvents$lambda$24(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Boolean) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Observable listenEvents$lambda$25(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Observable) tmp0.invoke(obj);
    }

    private final BaseNode initBannerSlides() {
        List mutableList;
        BannerSlide[] cryptoBanners = BannerSlide.Companion.getCryptoBanners();
        ArrayList arrayList = new ArrayList(cryptoBanners.length);
        for (BannerSlide bannerSlide : cryptoBanners) {
            arrayList.add(new SlideItem(bannerSlide));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return new BannerItem(mutableList);
    }

    private final void configureBanner(List<BaseNode> list) {
        if (this.cryptoPreferenceHelper.isBannersVisible()) {
            list.add(initBannerSlides());
        }
    }

    private final void configureTokensHeader(List<BaseNode> list) {
        int collectionSizeOrDefault;
        int i = C3630R.C3633id.selectable_token_header;
        int category = this.selectedTokenType.getCategory();
        int i2 = C3630R.C3632drawable.fork_ic_arrow_down_16;
        List<TokenType> availableTypes = TokenType.Companion.getAvailableTypes();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(availableTypes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TokenType tokenType : availableTypes) {
            arrayList.add(Integer.valueOf(tokenType.getCategory()));
        }
        list.add(new SelectableHeaderItem(i, i2, category, arrayList, new Function2<Integer, String, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$configureTokensHeader$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str) {
                invoke(num.intValue(), str);
                return Unit.INSTANCE;
            }

            public final void invoke(int i3, String str) {
                Intrinsics.checkNotNullParameter(str, "<anonymous parameter 1>");
                WalletHomeCryptoPresenter.this.setTokensType(TokenType.Companion.getAvailableTypes().get(i3));
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setTokensType(TokenType tokenType) {
        if (this.selectedTokenType != tokenType) {
            this.selectedTokenType = tokenType;
            this.sortedTokens = new ArrayList();
            ((WalletHomeCryptoView) getViewState()).renderNodes(configureUiItems$default(this, null, true, null, 5, null));
            loadScreenInfo$default(this, true, false, 2, null);
        }
    }

    private final void configureCryptoAccountHeader(List<BaseNode> list) {
        list.add(new HeaderItemWithNetworkSwitcher(this.resourceManager.getString(C3630R.string.wallet_home_crypto_account), this.selectedNetworkItem, false, 4, null));
    }

    private final List<BaseNode> configureCryptoAccount(List<BaseNode> list) {
        BaseNode cryptoAccountItem;
        if (this.cryptoAccessManager.isCurrentBlockchainWalletCreated() || (isAllNetworksSelected() && this.cryptoAccessManager.isAnyWalletCreated())) {
            TLRPC$User user = TelegramControllersGateway.CC.getMessagesController$default(this.telegramControllersGateway, 0, 1, null).getUser(Long.valueOf(this.telegramGateway.getSelectedAccountId()));
            Intrinsics.checkNotNullExpressionValue(user, "telegramControllersGatew…                        )");
            Wallet wallet2 = this.cryptoAccessManager.getWallet(getCurrentBlockchainType());
            String address = wallet2 != null ? wallet2.getAddress() : null;
            if (address == null) {
                address = "";
            }
            cryptoAccountItem = new CryptoAccountItem(user, address, this.selectedNetworkItem, resolveActions());
        } else {
            cryptoAccountItem = new AccountItem.Create(TokenBalance.Companion.createEmptyBalanceFor(TokenDetailed.Companion.getBNB()), getHorizontalActionButtonItems());
        }
        list.add(cryptoAccountItem);
        return list;
    }

    private final List<BaseNode> configureTokens(List<BaseNode> list, TokenType tokenType, List<? extends Object> list2, boolean z, IErrorStatus iErrorStatus) {
        List<TokenBalance> filterIsInstance;
        if (iErrorStatus != null) {
            list.add(new GlobalStateItem(iErrorStatus == ApiErrorHandler.ErrorStatus.NO_CONNECTION ? GlobalState.NoInternet.INSTANCE : GlobalState.Unexpected.INSTANCE));
        } else if (z && list2.isEmpty()) {
            list.add(new GlobalStateItem(GlobalState.Progress.INSTANCE));
        } else if (list2.isEmpty()) {
            list.add(new GlobalStateItem(GlobalState.Empty.Balance.INSTANCE));
        } else {
            int i = WhenMappings.$EnumSwitchMapping$0[tokenType.ordinal()];
            if (i == 1) {
                filterIsInstance = CollectionsKt___CollectionsJvmKt.filterIsInstance(list2, TokenBalance.class);
                configureCryptoTokens(list, filterIsInstance);
            } else if (i == 2) {
                configureNftTokens(list, list2);
            }
        }
        return list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ List configureUiItems$default(WalletHomeCryptoPresenter walletHomeCryptoPresenter, List list, boolean z, IErrorStatus iErrorStatus, int i, Object obj) {
        if ((i & 1) != 0) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            iErrorStatus = null;
        }
        return walletHomeCryptoPresenter.configureUiItems(list, z, iErrorStatus);
    }

    private final List<BaseNode> configureUiItems(List<? extends Object> list, boolean z, IErrorStatus iErrorStatus) {
        ArrayList arrayList = new ArrayList();
        configureBanner(arrayList);
        configureCryptoAccountHeader(arrayList);
        configureCryptoAccount(arrayList);
        if (this.cryptoAccessManager.isCurrentBlockchainWalletCreated() || (isAllNetworksSelected() && this.cryptoAccessManager.isAnyWalletCreated())) {
            configureTokensHeader(arrayList);
            configureTokens(arrayList, this.selectedTokenType, list, z, iErrorStatus);
        }
        return arrayList;
    }

    private final List<HorizontalActionButtonItem> resolveActions() {
        List<HorizontalActionButtonItem> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new HorizontalActionButtonItem[]{new HorizontalActionButtonItem(C3630R.C3632drawable.msg_send, this.resourceManager.getString(C3630R.string.wallet_token_details_details_action_send), this.selectedTokenType.isCrypto(), new Function0<Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$resolveActions$1
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
                ((WalletHomeCryptoView) WalletHomeCryptoPresenter.this.getViewState()).openSendScreen(null);
            }
        }), new HorizontalActionButtonItem(C3630R.C3632drawable.fork_ic_ask_transfer, this.resourceManager.getString(C3630R.string.wallet_binance_pay_action_receive), false, new Function0<Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$resolveActions$2
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
                WalletHomeCryptoPresenter.this.onReceiveClick();
            }
        }, 4, null), new HorizontalActionButtonItem(C3630R.C3632drawable.fork_ic_transactions_28, this.resourceManager.getString(C3630R.string.wallet_binance_pay_action_history), this.selectedTokenType.isCrypto(), new Function0<Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$resolveActions$3
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
                ((WalletHomeCryptoView) WalletHomeCryptoPresenter.this.getViewState()).openHistoryScreen();
            }
        })});
        return listOf;
    }

    private final List<HorizontalActionButtonItem> getHorizontalActionButtonItems() {
        int collectionSizeOrDefault;
        List<WalletCreationType> availableWalletCreationTypes = getAvailableWalletCreationTypes(null);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(availableWalletCreationTypes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (final WalletCreationType walletCreationType : availableWalletCreationTypes) {
            arrayList.add(new HorizontalActionButtonItem(walletCreationType.getIconResId(), walletCreationType.getActionText(this.resourceManager), false, new Function0<Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$getHorizontalActionButtonItems$1$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                    boolean isAllNetworksSelected;
                    isAllNetworksSelected = WalletHomeCryptoPresenter.this.isAllNetworksSelected();
                    if (isAllNetworksSelected) {
                        WalletHomeCryptoPresenter.this.startChooseNetworkDialog(new NetworkChoosePurpose.NewWallet(walletCreationType));
                    } else {
                        WalletHomeCryptoPresenter.this.startWalletCreationFlow(walletCreationType);
                    }
                }
            }, 4, null));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onReceiveClick() {
        if (this.selectedTokenType.isNft()) {
            showQrReceiveDialog(NetworksHelper.getNetworkById(NetworkType.POLY));
        } else if (isAllNetworksSelected()) {
            startChooseNetworkDialog(NetworkChoosePurpose.Receive.INSTANCE);
        } else {
            showQrReceiveDialog$default(this, null, 1, null);
        }
    }

    static /* synthetic */ void showQrReceiveDialog$default(WalletHomeCryptoPresenter walletHomeCryptoPresenter, Network network, int i, Object obj) {
        if ((i & 1) != 0) {
            network = walletHomeCryptoPresenter.getCurrentNetwork();
        }
        walletHomeCryptoPresenter.showQrReceiveDialog(network);
    }

    private final void showQrReceiveDialog(final Network network) {
        runWithCryptoInformationCheck(new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletHomeCryptoPresenter.showQrReceiveDialog$lambda$37(WalletHomeCryptoPresenter.this, network);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showQrReceiveDialog$lambda$37(WalletHomeCryptoPresenter this$0, Network network) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(network, "$network");
        WalletHomeCryptoView walletHomeCryptoView = (WalletHomeCryptoView) this$0.getViewState();
        String str = this$0.getLinkedWalletsAddresses().get(network.getBlockchainType());
        if (str == null) {
            str = "";
        }
        walletHomeCryptoView.showQrReceiveDialog(str, network);
    }

    private final List<NetworkItem> getAvailableNetworkItems(NetworkChoosePurpose networkChoosePurpose) {
        List mutableListOf;
        List<NetworkItem> plus;
        if (networkChoosePurpose instanceof NetworkChoosePurpose.Common) {
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(NetworkItem.All.INSTANCE);
            plus = CollectionsKt___CollectionsKt.plus((Collection) mutableListOf, (Iterable) NetworkUiMappingKt.mapToUI(NetworksHelper.INSTANCE.getEnabledNetworks()));
            return plus;
        } else if (networkChoosePurpose instanceof NetworkChoosePurpose.Receive) {
            return NetworkUiMappingKt.mapToUI(NetworksHelper.INSTANCE.getEnabledCreatedNetworks());
        } else {
            if (networkChoosePurpose instanceof NetworkChoosePurpose.NewWallet) {
                return NetworkUiMappingKt.mapToUI(NetworksHelper.INSTANCE.getEnabledNetworks());
            }
            throw new NoWhenBranchMatchedException();
        }
    }

    private final NetworkItem getInitialNetworkItem() {
        return isAllNetworksSelected() ? NetworkItem.All.INSTANCE : NetworkUiMappingKt.mapToUI(this.cryptoPreferenceHelper.getNetwork());
    }

    private final void configureNftTokens(List<BaseNode> list, List<? extends Object> list2) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list2) {
            if (obj instanceof NftToken) {
                arrayList.add(obj);
            }
        }
        list.addAll(NftUiMappingKt.mapToUi(arrayList, isAllNetworksSelected()));
    }

    private final void configureCryptoTokens(List<BaseNode> list, List<TokenBalance> list2) {
        int collectionSizeOrDefault;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList<AccountItem.Token> arrayList = new ArrayList(collectionSizeOrDefault);
        for (TokenBalance tokenBalance : list2) {
            arrayList.add(new AccountItem.Token(tokenBalance, isAllNetworksSelected(), this.cryptoPreferenceHelper.isQuotationsVisible(), this.cryptoPreferenceHelper.isBalanceHidden()));
        }
        double d = 0.0d;
        for (AccountItem.Token token : arrayList) {
            d += token.getBalance().getTotalInFiat().getValue();
        }
        list.add(new TotalBalanceItem((float) d, this.cryptoPreferenceHelper.isBalanceHidden()));
        if (!arrayList.isEmpty()) {
            list.addAll(arrayList);
        }
        list.add(new CryptoAddTokensItem());
    }
}
