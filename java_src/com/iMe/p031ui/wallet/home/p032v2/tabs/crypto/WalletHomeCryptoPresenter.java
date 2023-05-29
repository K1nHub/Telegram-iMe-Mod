package com.iMe.p031ui.wallet.home.p032v2.tabs.crypto;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.common.AppRxEvents;
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
import com.iMe.model.wallet.home.CryptoSelectTokensItem;
import com.iMe.model.wallet.home.HeaderItemWithNetworkSwitcher;
import com.iMe.model.wallet.home.HorizontalActionButtonItem;
import com.iMe.model.wallet.home.SelectableHeaderItem;
import com.iMe.model.wallet.home.SlideItem;
import com.iMe.model.wallet.home.TotalBalanceItem;
import com.iMe.model.wallet.home.nft.NftCollectionItem;
import com.iMe.model.wallet.home.nft.NftTokenItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.data.locale.prefs.model.WalletCryptoTokensSettingsMetadata;
import com.iMe.storage.data.locale.prefs.model.WalletCryptoTokensSettingsTokenState;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.interactor.crypto.nft.avatar.NftAvatarInteractor;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.nft.avatar.NftCollection;
import com.iMe.storage.domain.model.crypto.nft.avatar.NftToken;
import com.iMe.storage.domain.model.wallet.Hint;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import com.iMe.storage.domain.model.wallet.token.TokenOrderType;
import com.iMe.storage.domain.model.wallet.token.TokenType;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.storage.HintsPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p030rx.event.RxEvent;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
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
import kotlin.Unit;
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
import org.telegram.messenger.C3295R;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: WalletHomeCryptoPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoPresenter */
/* loaded from: classes4.dex */
public final class WalletHomeCryptoPresenter extends BasePresenter<WalletHomeCryptoView> {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final CryptoWalletInteractor cryptoWalletInteractor;
    private final HintsPreferenceHelper hintsPreferenceHelper;
    private boolean isLoading;
    private final CompositeDisposable mainScreenSubscriptions;
    private final NftAvatarInteractor nftAvatarInteractor;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private TokenType selectedTokenType;
    private final TelegramControllersGateway telegramControllersGateway;
    private final TelegramGateway telegramGateway;
    private List<? extends Object> tokens;
    private final WalletCreateManager walletCreateManager;
    private final WalletInteractor walletInteractor;

    /* compiled from: WalletHomeCryptoPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoPresenter$WhenMappings */
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

    public String getLinkedCryptoWalletAddress() {
        return this.walletCreateManager.getLinkedCryptoWalletAddress();
    }

    public void onDetachViewState() {
        this.walletCreateManager.onDetachViewState();
    }

    public void setLinkedCryptoWalletAddress(String str) {
        this.walletCreateManager.setLinkedCryptoWalletAddress(str);
    }

    public void startWalletCreationFlow(WalletCreationType walletCreationType) {
        Intrinsics.checkNotNullParameter(walletCreationType, "walletCreationType");
        this.walletCreateManager.startWalletCreationFlow(walletCreationType);
    }

    public WalletHomeCryptoPresenter(CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, CryptoWalletInteractor cryptoWalletInteractor, HintsPreferenceHelper hintsPreferenceHelper, NftAvatarInteractor nftAvatarInteractor, ResourceManager resourceManager, RxEventBus rxEventBus, SchedulersProvider schedulersProvider, TelegramControllersGateway telegramControllersGateway, TelegramGateway telegramGateway, WalletCreateManager walletCreateManager, WalletInteractor walletInteractor) {
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
        this.tokens = new ArrayList();
        this.selectedTokenType = TokenType.CRYPTO;
        this.mainScreenSubscriptions = new CompositeDisposable();
    }

    public final NetworkType getCurrentNetworkType() {
        return this.cryptoPreferenceHelper.getNetworkType();
    }

    public static /* synthetic */ void loadScreenInfo$default(WalletHomeCryptoPresenter walletHomeCryptoPresenter, boolean z, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            j = 0;
        }
        walletHomeCryptoPresenter.loadScreenInfo(z, j);
    }

    public final void loadScreenInfo(boolean z, long j) {
        resetMainRequests();
        loadAccountInformation();
        loadTokens(z, j);
    }

    public final void switchHiddenBalance() {
        CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
        cryptoPreferenceHelper.setCryptoHiddenBalance(!cryptoPreferenceHelper.getCryptoHiddenBalance());
        this.rxEventBus.publish(AppRxEvents.HiddenBalanceSettingChanged.INSTANCE);
    }

    public final void startChooseNetworkDialog() {
        ((WalletHomeCryptoView) getViewState()).showChooseNetworkDialog(this.cryptoPreferenceHelper.getNetworkType(), new WalletHomeCryptoPresenter$startChooseNetworkDialog$1(this));
    }

    public final void showWalletAddressScan() {
        WalletHomeCryptoView walletHomeCryptoView = (WalletHomeCryptoView) getViewState();
        String linkedCryptoWalletAddress = getLinkedCryptoWalletAddress();
        if (linkedCryptoWalletAddress == null) {
            linkedCryptoWalletAddress = "";
        }
        walletHomeCryptoView.showWalletAddressScan(linkedCryptoWalletAddress);
    }

    public final TokenOrderType getSelectedTokensOrderType() {
        return this.cryptoPreferenceHelper.getTokensOrderType();
    }

    public final void setTokensOrderType(TokenOrderType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.cryptoPreferenceHelper.setTokensOrderType(type);
        loadTokens$default(this, false, 0L, 2, null);
    }

    public final void showChangeNetworkHintIfNeeded() {
        HintsPreferenceHelper hintsPreferenceHelper = this.hintsPreferenceHelper;
        Hint.ChangeNetwork.CryptoHomeScreen cryptoHomeScreen = Hint.ChangeNetwork.CryptoHomeScreen.INSTANCE;
        if (hintsPreferenceHelper.shouldShowHint(cryptoHomeScreen) && this.cryptoAccessManager.isWalletCreated(this.cryptoPreferenceHelper.getCurrentBlockchainType())) {
            ((WalletHomeCryptoView) getViewState()).showChangeNetworkHint();
            this.hintsPreferenceHelper.onHintShowed(cryptoHomeScreen);
        }
    }

    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        attachViewState((WalletCreateManagerView) viewState);
        listenEvents();
        this.isLoading = true;
        this.tokens = new ArrayList();
        ((WalletHomeCryptoView) getViewState()).renderNodes(configureUiItems$default(this, this.selectedTokenType, null, 2, null));
    }

    @Override // com.iMe.p031ui.base.mvp.base.BasePresenter
    public void clearSubscriptions() {
        super.clearSubscriptions();
        onDetachViewState();
        resetMainRequests();
    }

    private final void loadAccountInformation() {
        Observable<R> map = this.cryptoWalletInteractor.getLinkedCryptoWalletAddress(getCurrentNetworkType().getBlockchainType()).map(new C2302x21775993(new C2297x3703ab47(this)));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        Observable observeOn = map.observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2298xa8abeb1d(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2299xa8abeb1e((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        autoDispose(subscribe, this.mainScreenSubscriptions);
    }

    static /* synthetic */ void loadTokens$default(WalletHomeCryptoPresenter walletHomeCryptoPresenter, boolean z, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            j = 0;
        }
        walletHomeCryptoPresenter.loadTokens(z, j);
    }

    private final void loadTokens(boolean z, long j) {
        Observable<Result<List<NftToken>>> walletBalance$default;
        int i = WhenMappings.$EnumSwitchMapping$0[this.selectedTokenType.ordinal()];
        if (i == 1 || i == 2) {
            walletBalance$default = WalletInteractor.getWalletBalance$default(this.walletInteractor, z, null, 2, null);
        } else if (i != 3) {
            throw new NoWhenBranchMatchedException();
        } else {
            walletBalance$default = this.nftAvatarInteractor.getNftAvatars(getCurrentNetworkType());
        }
        Observable<Result<List<NftToken>>> delay = walletBalance$default.distinctUntilChanged().delay(j, TimeUnit.MILLISECONDS);
        Intrinsics.checkNotNullExpressionValue(delay, "observable\n             …y, TimeUnit.MILLISECONDS)");
        Observable<R> map = delay.map(new C2302x21775993(new WalletHomeCryptoPresenter$loadTokens$$inlined$mapSuccess$1(this)));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        Observable observeOn = map.observeOn(this.schedulersProvider.mo698ui());
        final WalletHomeCryptoPresenter$loadTokens$2 walletHomeCryptoPresenter$loadTokens$2 = new WalletHomeCryptoPresenter$loadTokens$2(this);
        Observable doFinally = observeOn.doOnSubscribe(new Consumer() { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                WalletHomeCryptoPresenter.loadTokens$lambda$4(Function1.this, obj);
            }
        }).doFinally(new Action() { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                WalletHomeCryptoPresenter.loadTokens$lambda$5(WalletHomeCryptoPresenter.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "private fun loadTokens(f…creenSubscriptions)\n    }");
        Disposable subscribe = doFinally.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2300xe9f7ff8(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2301xe9f7ff9((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        autoDispose(subscribe, this.mainScreenSubscriptions);
    }

    public static final void loadTokens$lambda$4(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public static final void loadTokens$lambda$5(WalletHomeCryptoPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ((WalletHomeCryptoView) this$0.getViewState()).showRefreshing(false);
    }

    private final void resetMainRequests() {
        this.mainScreenSubscriptions.clear();
    }

    public final void checkWalletState() {
        if (this.cryptoAccessManager.isAuthorized(this.cryptoPreferenceHelper.getCurrentBlockchainType()) && isRemoteAndLocaleWalletNotMatch(getLinkedCryptoWalletAddress())) {
            ((WalletHomeCryptoView) getViewState()).showAddressMismatchScreen();
        }
    }

    private final boolean isRemoteAndLocaleWalletNotMatch(String str) {
        return (!(this.cryptoAccessManager.getLastLoggedInAddress(this.cryptoPreferenceHelper.getCurrentBlockchainType()).length() > 0) || str == null || Intrinsics.areEqual(this.cryptoAccessManager.getLastLoggedInAddress(this.cryptoPreferenceHelper.getCurrentBlockchainType()), str)) ? false : true;
    }

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(RxEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2295x69225658(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2296x69225659(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
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
        int i = C3295R.C3298id.selectable_token_header;
        int category = this.selectedTokenType.getCategory();
        int i2 = C3295R.C3297drawable.fork_ic_arrow_down_16;
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
            this.isLoading = true;
            this.tokens = new ArrayList();
            ((WalletHomeCryptoView) getViewState()).renderNodes(configureUiItems$default(this, this.selectedTokenType, null, 2, null));
            loadScreenInfo$default(this, true, 0L, 2, null);
        }
    }

    private final void configureCryptoAccountHeader(List<BaseNode> list) {
        list.add(new HeaderItemWithNetworkSwitcher(this.resourceManager.getString(C3295R.string.wallet_home_crypto_account), this.cryptoPreferenceHelper.getNetworkType(), false, 4, null));
    }

    private final List<BaseNode> configureCryptoAccount(List<BaseNode> list) {
        BaseNode create;
        if (this.cryptoAccessManager.isCurrentBlockchainWalletCreated()) {
            TLRPC$User user = TelegramControllersGateway.CC.getMessagesController$default(this.telegramControllersGateway, 0, 1, null).getUser(Long.valueOf(this.telegramGateway.getSelectedAccountId()));
            Intrinsics.checkNotNullExpressionValue(user, "telegramControllersGatew…                        )");
            Wallet wallet2 = this.cryptoAccessManager.getWallet(this.cryptoPreferenceHelper.getCurrentBlockchainType());
            String address = wallet2 != null ? wallet2.getAddress() : null;
            if (address == null) {
                address = "";
            }
            create = new CryptoAccountItem(user, address, this.cryptoPreferenceHelper.getNetworkType(), resolveActions());
        } else {
            create = new AccountItem.Create(TokenBalance.Companion.createEmptyBalanceFor(TokenInfo.Crypto.Ethereum.ETH.INSTANCE), getHorizontalActionButtonItems());
        }
        list.add(create);
        return list;
    }

    private final Object configureTokens(List<BaseNode> list, TokenType tokenType, List<? extends Object> list2) {
        if (this.isLoading && list2.isEmpty()) {
            return Boolean.valueOf(list.add(new GlobalStateItem(GlobalState.Progress.INSTANCE)));
        }
        if (list2.isEmpty()) {
            return Boolean.valueOf(list.add(new GlobalStateItem(GlobalState.Empty.Balance.INSTANCE)));
        }
        int i = WhenMappings.$EnumSwitchMapping$0[tokenType.ordinal()];
        if (i == 1 || i == 2) {
            configureCryptoTokens(list, list2);
            return Unit.INSTANCE;
        } else if (i == 3) {
            configureNftTokens(list, list2);
            return Unit.INSTANCE;
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    private final void configureCryptoTokens(List<BaseNode> list, List<? extends Object> list2) {
        List filterIsInstance;
        double d;
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        int collectionSizeOrDefault2;
        CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
        WalletCryptoTokensSettingsMetadata tokensSettings = cryptoPreferenceHelper.getTokensSettings(cryptoPreferenceHelper.getNetworkType());
        filterIsInstance = CollectionsKt___CollectionsJvmKt.filterIsInstance(list2, TokenBalance.class);
        ArrayList arrayList = new ArrayList();
        Iterator it = filterIsInstance.iterator();
        while (true) {
            d = 0.0d;
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
            linkedHashMap.put(((TokenBalance) obj).getCode(), obj);
        }
        List<WalletCryptoTokensSettingsTokenState> states = tokensSettings.getStates();
        ArrayList<WalletCryptoTokensSettingsTokenState> arrayList2 = new ArrayList();
        for (Object obj2 : states) {
            if (((WalletCryptoTokensSettingsTokenState) obj2).isEnabled()) {
                arrayList2.add(obj2);
            }
        }
        List<TokenBalance> arrayList3 = new ArrayList();
        for (WalletCryptoTokensSettingsTokenState walletCryptoTokensSettingsTokenState : arrayList2) {
            TokenBalance tokenBalance2 = (TokenBalance) linkedHashMap.get(TokenCode.Companion.map(walletCryptoTokensSettingsTokenState.getToken()));
            if (tokenBalance2 != null) {
                arrayList3.add(tokenBalance2);
            }
        }
        int i = WhenMappings.$EnumSwitchMapping$1[this.cryptoPreferenceHelper.getTokensOrderType().ordinal()];
        if (i == 1) {
            arrayList3 = CollectionsKt___CollectionsKt.sortedWith(arrayList3, new Comparator() { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoPresenter$configureCryptoTokens$$inlined$sortedBy$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    ResourceManager resourceManager;
                    ResourceManager resourceManager2;
                    int compareValues;
                    resourceManager = WalletHomeCryptoPresenter.this.resourceManager;
                    String string = resourceManager.getString(((TokenBalance) t).getInfo().getFullName());
                    Locale locale = Locale.ROOT;
                    String lowerCase = string.toLowerCase(locale);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
                    resourceManager2 = WalletHomeCryptoPresenter.this.resourceManager;
                    String lowerCase2 = resourceManager2.getString(((TokenBalance) t2).getInfo().getFullName()).toLowerCase(locale);
                    Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(Locale.ROOT)");
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(lowerCase, lowerCase2);
                    return compareValues;
                }
            });
        } else if (i == 2) {
            arrayList3 = CollectionsKt___CollectionsKt.sortedWith(arrayList3, new Comparator() { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoPresenter$configureCryptoTokens$$inlined$sortedByDescending$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Float.valueOf(((TokenBalance) t2).getTotalInDollars()), Float.valueOf(((TokenBalance) t).getTotalInDollars()));
                    return compareValues;
                }
            });
        } else if (i != 3) {
            throw new NoWhenBranchMatchedException();
        }
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList3, 10);
        ArrayList<AccountItem.Token> arrayList4 = new ArrayList(collectionSizeOrDefault2);
        for (TokenBalance tokenBalance3 : arrayList3) {
            arrayList4.add(new AccountItem.Token(tokenBalance3, this.cryptoPreferenceHelper.isQuotationsVisible()));
        }
        for (AccountItem.Token token : arrayList4) {
            d += token.getBalance().getTotalInDollars();
        }
        list.add(new TotalBalanceItem((float) d));
        if (!arrayList4.isEmpty()) {
            list.addAll(arrayList4);
        } else {
            list.add(new CryptoSelectTokensItem());
        }
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
    public static /* synthetic */ List configureUiItems$default(WalletHomeCryptoPresenter walletHomeCryptoPresenter, TokenType tokenType, List list, int i, Object obj) {
        if ((i & 2) != 0) {
            list = walletHomeCryptoPresenter.tokens;
        }
        return walletHomeCryptoPresenter.configureUiItems(tokenType, list);
    }

    public final List<BaseNode> configureUiItems(TokenType tokenType, List<? extends Object> list) {
        ArrayList arrayList = new ArrayList();
        configureBanner(arrayList);
        configureCryptoAccountHeader(arrayList);
        configureCryptoAccount(arrayList);
        if (this.cryptoAccessManager.isCurrentBlockchainWalletCreated()) {
            configureTokensHeader(arrayList);
            configureTokens(arrayList, tokenType, list);
        }
        return arrayList;
    }

    private final List<HorizontalActionButtonItem> resolveActions() {
        List<HorizontalActionButtonItem> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new HorizontalActionButtonItem[]{new HorizontalActionButtonItem(C3295R.C3297drawable.msg_send, this.resourceManager.getString(C3295R.string.wallet_token_details_details_action_send), this.selectedTokenType.isCrypto(), new WalletHomeCryptoPresenter$resolveActions$1(this)), new HorizontalActionButtonItem(C3295R.C3297drawable.fork_ic_ask_transfer, this.resourceManager.getString(C3295R.string.wallet_binance_pay_action_receive), false, new WalletHomeCryptoPresenter$resolveActions$2(this), 4, null), new HorizontalActionButtonItem(C3295R.C3297drawable.fork_ic_transactions_28, this.resourceManager.getString(C3295R.string.wallet_binance_pay_action_history), this.selectedTokenType.isCrypto(), new WalletHomeCryptoPresenter$resolveActions$3(this))});
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
        WalletHomeCryptoView walletHomeCryptoView = (WalletHomeCryptoView) getViewState();
        String linkedCryptoWalletAddress = getLinkedCryptoWalletAddress();
        if (linkedCryptoWalletAddress == null) {
            linkedCryptoWalletAddress = "";
        }
        walletHomeCryptoView.showQrReceiveDialog(linkedCryptoWalletAddress, getCurrentNetworkType().getBlockchainType());
    }
}
