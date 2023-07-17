package com.iMe.p031ui.wallet.home.tabs.crypto;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.manager.wallet.create.WalletCreateManager;
import com.iMe.manager.wallet.create.WalletCreateManagerView;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.state.GlobalState;
import com.iMe.model.wallet.crypto.create.WalletCreationType;
import com.iMe.model.wallet.home.AccountItem;
import com.iMe.model.wallet.home.BannerItem;
import com.iMe.model.wallet.home.BannerSlide;
import com.iMe.model.wallet.home.CryptoAccountItem;
import com.iMe.model.wallet.home.CryptoAddTokensItem;
import com.iMe.model.wallet.home.HeaderItemWithNetworkSwitcher;
import com.iMe.model.wallet.home.HorizontalActionButtonItem;
import com.iMe.model.wallet.home.SelectableHeaderItem;
import com.iMe.model.wallet.home.SlideItem;
import com.iMe.model.wallet.home.TotalBalanceItem;
import com.iMe.model.wallet.home.nft.NftCollectionItem;
import com.iMe.model.wallet.home.nft.NftTokenItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.data.locale.prefs.model.TokenDisplaySettings;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.interactor.crypto.nft.avatar.NftAvatarInteractor;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.nft.avatar.NftCollection;
import com.iMe.storage.domain.model.crypto.nft.avatar.NftToken;
import com.iMe.storage.domain.model.wallet.Hint;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.model.wallet.token.TokenOrderType;
import com.iMe.storage.domain.model.wallet.token.TokenType;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.storage.HintsPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p030rx.event.RxEvent;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsJvmKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3417R;
import org.telegram.tgnet.TLRPC$User;
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
    private final NftAvatarInteractor nftAvatarInteractor;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private TokenType selectedTokenType;
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
                iArr[TokenType.FIAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TokenType.NFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[TokenOrderType.values().length];
            try {
                iArr2[TokenOrderType.ALPHABET.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[TokenOrderType.BALANCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[TokenOrderType.DEFAULT.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public void attachViewState(WalletCreateManagerView view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.walletCreateManager.attachViewState(view);
    }

    public List<WalletCreationType> getAvailableWalletCreationTypes() {
        return this.walletCreateManager.getAvailableWalletCreationTypes();
    }

    public String getLinkedWalletAddress() {
        return this.walletCreateManager.getLinkedWalletAddress();
    }

    public void onDetachViewState() {
        this.walletCreateManager.onDetachViewState();
    }

    public void runWithCryptoInformationCheck(Callbacks$Callback endAction) {
        Intrinsics.checkNotNullParameter(endAction, "endAction");
        this.walletCreateManager.runWithCryptoInformationCheck(endAction);
    }

    public void setLinkedWalletAddress(String str) {
        this.walletCreateManager.setLinkedWalletAddress(str);
    }

    public void startWalletCreationFlow(WalletCreationType walletCreationType) {
        Intrinsics.checkNotNullParameter(walletCreationType, "walletCreationType");
        this.walletCreateManager.startWalletCreationFlow(walletCreationType);
    }

    public WalletHomeCryptoPresenter(CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, CryptoWalletInteractor cryptoWalletInteractor, HintsPreferenceHelper hintsPreferenceHelper, NftAvatarInteractor nftAvatarInteractor, ResourceManager resourceManager, RxEventBus rxEventBus, SchedulersProvider schedulersProvider, TelegramControllersGateway telegramControllersGateway, TelegramGateway telegramGateway, WalletCreateManager walletCreateManager, WalletInteractor walletInteractor) {
        List<? extends Object> emptyList;
        List<TokenDisplaySettings.Crypto> emptyList2;
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
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.tokens = emptyList;
        this.selectedTokenType = TokenType.CRYPTO;
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        this.tokensDisplaySettings = emptyList2;
    }

    public final Network getCurrentNetwork() {
        return this.cryptoPreferenceHelper.getNetwork();
    }

    public final String getCurrentNetworkId() {
        return this.cryptoPreferenceHelper.getNetworkId();
    }

    public final BlockchainType getCurrentBlockchainType() {
        return this.cryptoPreferenceHelper.getCurrentBlockchainType();
    }

    public static /* synthetic */ void loadScreenInfo$default(WalletHomeCryptoPresenter walletHomeCryptoPresenter, boolean z, boolean z2, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        if ((i & 4) != 0) {
            j = 0;
        }
        walletHomeCryptoPresenter.loadScreenInfo(z, z2, j);
    }

    public final void loadScreenInfo(boolean z, boolean z2, long j) {
        resetMainRequests();
        loadTokens(z, z2, j);
    }

    public final void switchHiddenBalance() {
        CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
        cryptoPreferenceHelper.setBalanceHidden(!cryptoPreferenceHelper.isBalanceHidden());
        ((WalletHomeCryptoView) getViewState()).renderNodes(configureUiItems$default(this, this.tokens, false, null, 6, null));
    }

    public final void startChooseNetworkDialog() {
        ((WalletHomeCryptoView) getViewState()).showChooseNetworkDialog(getCurrentNetwork(), new WalletHomeCryptoPresenter$startChooseNetworkDialog$1(this));
    }

    public final void showWalletAddressScan() {
        WalletHomeCryptoView walletHomeCryptoView = (WalletHomeCryptoView) getViewState();
        String linkedWalletAddress = getLinkedWalletAddress();
        if (linkedWalletAddress == null) {
            linkedWalletAddress = "";
        }
        walletHomeCryptoView.showWalletAddressScan(linkedWalletAddress);
    }

    public final void onSelectTokensOrderTypeClicked() {
        ((WalletHomeCryptoView) getViewState()).showSelectTokensOrderTypeDialog(this.cryptoPreferenceHelper.getTokensOrderType());
    }

    public final void setTokensOrderType(TokenOrderType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.cryptoPreferenceHelper.setTokensOrderType(type);
        if (!this.tokensDisplaySettings.isEmpty()) {
            List<? extends Object> list = this.tokens;
            List<TokenBalance> arrayList = new ArrayList<>();
            for (Object obj : list) {
                if (obj instanceof TokenBalance) {
                    arrayList.add(obj);
                }
            }
            sortTokens(arrayList);
            ((WalletHomeCryptoView) getViewState()).renderNodes(configureUiItems$default(this, this.tokens, false, null, 6, null));
            return;
        }
        loadTokens$default(this, false, false, 0L, 6, null);
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

    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        ((WalletHomeCryptoView) getViewState()).renderNodes(configureUiItems$default(this, null, true, null, 5, null));
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        attachViewState((WalletCreateManagerView) viewState);
        listenEvents();
    }

    @Override // com.iMe.p031ui.base.mvp.base.BasePresenter
    public void clearSubscriptions() {
        super.clearSubscriptions();
        onDetachViewState();
        resetMainRequests();
    }

    static /* synthetic */ void loadTokens$default(WalletHomeCryptoPresenter walletHomeCryptoPresenter, boolean z, boolean z2, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        if ((i & 4) != 0) {
            j = 0;
        }
        walletHomeCryptoPresenter.loadTokens(z, z2, j);
    }

    private final void loadTokens(boolean z, boolean z2, long j) {
        Observable<Result<List<BaseNode>>> walletBalanceItemsObservable;
        int i = WhenMappings.$EnumSwitchMapping$0[this.selectedTokenType.ordinal()];
        if (i == 1 || i == 2) {
            walletBalanceItemsObservable = getWalletBalanceItemsObservable(z, j);
        } else if (i != 3) {
            throw new NoWhenBranchMatchedException();
        } else {
            walletBalanceItemsObservable = getNftItemsObservable(j);
        }
        Observable<Result<String>> observeOn = this.cryptoWalletInteractor.getLinkedCryptoWalletAddress(getCurrentBlockchainType()).observeOn(this.schedulersProvider.mo698ui());
        final WalletHomeCryptoPresenter$loadTokens$1 walletHomeCryptoPresenter$loadTokens$1 = new WalletHomeCryptoPresenter$loadTokens$1(this, z2, walletBalanceItemsObservable);
        Observable doFinally = observeOn.flatMap(new Function() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource loadTokens$lambda$0;
                loadTokens$lambda$0 = WalletHomeCryptoPresenter.loadTokens$lambda$0(Function1.this, obj);
                return loadTokens$lambda$0;
            }
        }).observeOn(this.schedulersProvider.mo698ui()).doFinally(new Action() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Action
            public final void run() {
                WalletHomeCryptoPresenter.loadTokens$lambda$1(WalletHomeCryptoPresenter.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "private fun loadTokens(\n…creenSubscriptions)\n    }");
        Disposable subscribe = doFinally.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2312xe9f7ff8(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2313xe9f7ff9((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        autoDispose(subscribe, this.mainScreenSubscriptions);
    }

    public static final ObservableSource loadTokens$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    public static final void loadTokens$lambda$1(WalletHomeCryptoPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ((WalletHomeCryptoView) this$0.getViewState()).showRefreshing(false);
    }

    private final Observable<Result<List<BaseNode>>> getWalletBalanceItemsObservable(boolean z, long j) {
        Observable delay = WalletInteractor.getWalletBalance$default(this.walletInteractor, z, null, 2, null).distinctUntilChanged().delay(j, TimeUnit.MILLISECONDS);
        Intrinsics.checkNotNullExpressionValue(delay, "walletInteractor\n       …y, TimeUnit.MILLISECONDS)");
        Observable<Result<List<BaseNode>>> flatMap = delay.flatMap(new C2316x21775993(new C2308x250116c7(this)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    private final Observable<Result<List<BaseNode>>> getNftItemsObservable(long j) {
        Observable<Result<List<NftToken>>> delay = this.nftAvatarInteractor.getNftAvatars(getCurrentNetworkId()).distinctUntilChanged().delay(j, TimeUnit.MILLISECONDS);
        Intrinsics.checkNotNullExpressionValue(delay, "nftAvatarInteractor\n    …y, TimeUnit.MILLISECONDS)");
        Observable map = delay.map(new C2316x21775993(new C2307x80bc9575(this)));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        return map;
    }

    private final void resetMainRequests() {
        this.mainScreenSubscriptions.clear();
    }

    public final boolean isWalletDataMismatching() {
        return (!(this.cryptoAccessManager.getLastLoggedInAddress(getCurrentBlockchainType()).length() > 0) || getLinkedWalletAddress() == null || Intrinsics.areEqual(this.cryptoAccessManager.getLastLoggedInAddress(getCurrentBlockchainType()), getLinkedWalletAddress())) ? false : true;
    }

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(RxEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        final WalletHomeCryptoPresenter$listenEvents$1 walletHomeCryptoPresenter$listenEvents$1 = WalletHomeCryptoPresenter$listenEvents$1.INSTANCE;
        Observable groupBy = observeOn.groupBy(new Function() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Boolean listenEvents$lambda$15;
                listenEvents$lambda$15 = WalletHomeCryptoPresenter.listenEvents$lambda$15(Function1.this, obj);
                return listenEvents$lambda$15;
            }
        });
        final WalletHomeCryptoPresenter$listenEvents$2 walletHomeCryptoPresenter$listenEvents$2 = WalletHomeCryptoPresenter$listenEvents$2.INSTANCE;
        Observable merge = Observable.merge(groupBy.map(new Function() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Observable listenEvents$lambda$16;
                listenEvents$lambda$16 = WalletHomeCryptoPresenter.listenEvents$lambda$16(Function1.this, obj);
                return listenEvents$lambda$16;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(merge, "merge(\n                 …      }\n                )");
        Disposable subscribe = merge.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2310x69225658(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2311x69225659(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public static final Boolean listenEvents$lambda$15(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Boolean) tmp0.invoke(obj);
    }

    public static final Observable listenEvents$lambda$16(Function1 tmp0, Object obj) {
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
        int i = C3417R.C3420id.selectable_token_header;
        int category = this.selectedTokenType.getCategory();
        int i2 = C3417R.C3419drawable.fork_ic_arrow_down_16;
        List<TokenType> availableTypes = TokenType.Companion.getAvailableTypes();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(availableTypes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TokenType tokenType : availableTypes) {
            arrayList.add(Integer.valueOf(tokenType.getCategory()));
        }
        list.add(new SelectableHeaderItem(i, i2, category, arrayList, new WalletHomeCryptoPresenter$configureTokensHeader$2(this)));
    }

    public final void setTokensType(TokenType tokenType) {
        if (this.selectedTokenType != tokenType) {
            this.selectedTokenType = tokenType;
            this.tokens = new ArrayList();
            ((WalletHomeCryptoView) getViewState()).renderNodes(configureUiItems$default(this, null, true, null, 5, null));
            loadScreenInfo$default(this, true, false, 0L, 6, null);
        }
    }

    private final void configureCryptoAccountHeader(List<BaseNode> list) {
        list.add(new HeaderItemWithNetworkSwitcher(this.resourceManager.getString(C3417R.string.wallet_home_crypto_account), getCurrentNetwork(), false, 4, null));
    }

    private final List<BaseNode> configureCryptoAccount(List<BaseNode> list) {
        BaseNode create;
        if (this.cryptoAccessManager.isCurrentBlockchainWalletCreated()) {
            TLRPC$User user = TelegramControllersGateway.CC.getMessagesController$default(this.telegramControllersGateway, 0, 1, null).getUser(Long.valueOf(this.telegramGateway.getSelectedAccountId()));
            Intrinsics.checkNotNullExpressionValue(user, "telegramControllersGatew…                        )");
            Wallet wallet2 = this.cryptoAccessManager.getWallet(getCurrentBlockchainType());
            String address = wallet2 != null ? wallet2.getAddress() : null;
            if (address == null) {
                address = "";
            }
            create = new CryptoAccountItem(user, address, getCurrentNetwork(), resolveActions());
        } else {
            create = new AccountItem.Create(TokenBalance.Companion.createEmptyBalanceFor(TokenDetailed.Companion.getBNB()), getHorizontalActionButtonItems());
        }
        list.add(create);
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
            if (i == 1 || i == 2) {
                filterIsInstance = CollectionsKt___CollectionsJvmKt.filterIsInstance(list2, TokenBalance.class);
                configureCryptoTokens(list, filterIsInstance);
            } else if (i == 3) {
                configureNftTokens(list, list2);
            }
        }
        return list;
    }

    private final void configureNftTokens(List<BaseNode> list, List<? extends Object> list2) {
        List filterIsInstance;
        int collectionSizeOrDefault;
        filterIsInstance = CollectionsKt___CollectionsJvmKt.filterIsInstance(list2, NftToken.class);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : filterIsInstance) {
            NftCollection collection = ((NftToken) obj).getCollection();
            Object obj2 = linkedHashMap.get(collection);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(collection, obj2);
            }
            ((List) obj2).add(obj);
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            NftCollection nftCollection = (NftCollection) entry.getKey();
            Iterable<NftToken> iterable = (Iterable) entry.getValue();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            for (NftToken nftToken : iterable) {
                arrayList2.add(new NftTokenItem(nftToken, (List) entry.getValue()));
            }
            NftCollectionItem nftCollectionItem = new NftCollectionItem(nftCollection, arrayList2);
            nftCollectionItem.setExpanded(false);
            arrayList.add(nftCollectionItem);
        }
        list.addAll(arrayList);
    }

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
        if (this.cryptoAccessManager.isCurrentBlockchainWalletCreated()) {
            configureTokensHeader(arrayList);
            configureTokens(arrayList, this.selectedTokenType, list, z, iErrorStatus);
        }
        return arrayList;
    }

    private final List<HorizontalActionButtonItem> resolveActions() {
        List<HorizontalActionButtonItem> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new HorizontalActionButtonItem[]{new HorizontalActionButtonItem(C3417R.C3419drawable.msg_send, this.resourceManager.getString(C3417R.string.wallet_token_details_details_action_send), this.selectedTokenType.isCrypto(), new WalletHomeCryptoPresenter$resolveActions$1(this)), new HorizontalActionButtonItem(C3417R.C3419drawable.fork_ic_ask_transfer, this.resourceManager.getString(C3417R.string.wallet_binance_pay_action_receive), false, new WalletHomeCryptoPresenter$resolveActions$2(this), 4, null), new HorizontalActionButtonItem(C3417R.C3419drawable.fork_ic_transactions_28, this.resourceManager.getString(C3417R.string.wallet_binance_pay_action_history), this.selectedTokenType.isCrypto(), new WalletHomeCryptoPresenter$resolveActions$3(this))});
        return listOf;
    }

    private final List<HorizontalActionButtonItem> getHorizontalActionButtonItems() {
        int collectionSizeOrDefault;
        List<WalletCreationType> availableWalletCreationTypes = getAvailableWalletCreationTypes();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(availableWalletCreationTypes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (WalletCreationType walletCreationType : availableWalletCreationTypes) {
            arrayList.add(new HorizontalActionButtonItem(walletCreationType.getIconResId(), walletCreationType.getActionText(this.resourceManager), false, new WalletHomeCryptoPresenter$getHorizontalActionButtonItems$1$1$1(this, walletCreationType), 4, null));
        }
        return arrayList;
    }

    public final void showQrReceiveDialog() {
        runWithCryptoInformationCheck(new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletHomeCryptoPresenter.showQrReceiveDialog$lambda$32(WalletHomeCryptoPresenter.this);
            }
        });
    }

    public static final void showQrReceiveDialog$lambda$32(WalletHomeCryptoPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        WalletHomeCryptoView walletHomeCryptoView = (WalletHomeCryptoView) this$0.getViewState();
        String linkedWalletAddress = this$0.getLinkedWalletAddress();
        if (linkedWalletAddress == null) {
            linkedWalletAddress = "";
        }
        walletHomeCryptoView.showQrReceiveDialog(linkedWalletAddress, this$0.getCurrentNetwork());
    }

    public final void sortTokens(List<TokenBalance> list) {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (true) {
            boolean z = true;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            TokenBalance tokenBalance = (TokenBalance) next;
            if (this.cryptoPreferenceHelper.getOnlyPositiveTokens() && tokenBalance.getTotal() <= 0.0d) {
                z = false;
            }
            if (z) {
                arrayList.add(next);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (Object obj : arrayList) {
            linkedHashMap.put(((TokenBalance) obj).getToken().getAddress(), obj);
        }
        List<TokenDisplaySettings.Crypto> list2 = this.tokensDisplaySettings;
        ArrayList<TokenDisplaySettings.Crypto> arrayList2 = new ArrayList();
        for (Object obj2 : list2) {
            if (((TokenDisplaySettings.Crypto) obj2).isVisible()) {
                arrayList2.add(obj2);
            }
        }
        List<? extends Object> arrayList3 = new ArrayList<>();
        for (TokenDisplaySettings.Crypto crypto : arrayList2) {
            TokenBalance tokenBalance2 = (TokenBalance) linkedHashMap.get(crypto.getTokenAddress());
            if (tokenBalance2 != null) {
                arrayList3.add(tokenBalance2);
            }
        }
        int i = WhenMappings.$EnumSwitchMapping$1[this.cryptoPreferenceHelper.getTokensOrderType().ordinal()];
        if (i == 1) {
            final Comparator comparator = new Comparator() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$sortTokens$$inlined$compareByDescending$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Boolean.valueOf(((TokenBalance) t2).getToken().isCoin()), Boolean.valueOf(((TokenBalance) t).getToken().isCoin()));
                    return compareValues;
                }
            };
            arrayList3 = CollectionsKt___CollectionsKt.sortedWith(arrayList3, new Comparator() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$sortTokens$$inlined$thenBy$1
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
        } else if (i == 2) {
            final Comparator comparator2 = new Comparator() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$sortTokens$$inlined$compareByDescending$2
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Boolean.valueOf(((TokenBalance) t2).getToken().isCoin()), Boolean.valueOf(((TokenBalance) t).getToken().isCoin()));
                    return compareValues;
                }
            };
            arrayList3 = CollectionsKt___CollectionsKt.sortedWith(arrayList3, new Comparator() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$sortTokens$$inlined$thenByDescending$1
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
        } else if (i != 3) {
            throw new NoWhenBranchMatchedException();
        }
        this.tokens = arrayList3;
    }

    private final void configureCryptoTokens(List<BaseNode> list, List<TokenBalance> list2) {
        int collectionSizeOrDefault;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList<AccountItem.Token> arrayList = new ArrayList(collectionSizeOrDefault);
        for (TokenBalance tokenBalance : list2) {
            arrayList.add(new AccountItem.Token(tokenBalance, this.cryptoPreferenceHelper.isQuotationsVisible(), this.cryptoPreferenceHelper.isBalanceHidden()));
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
