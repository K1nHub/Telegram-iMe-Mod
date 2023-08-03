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
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.p030rx.event.RxEvent;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
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
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3419R;
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

    /* JADX INFO: Access modifiers changed from: private */
    public final String getCurrentNetworkId() {
        return this.cryptoPreferenceHelper.getNetworkId();
    }

    /* JADX INFO: Access modifiers changed from: private */
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
        ((WalletHomeCryptoView) getViewState()).showChooseNetworkDialog(getCurrentNetwork(), new Function1<Network, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$startChooseNetworkDialog$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Network network) {
                invoke2(network);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Network newNetwork) {
                String currentNetworkId;
                CryptoPreferenceHelper cryptoPreferenceHelper;
                RxEventBus rxEventBus;
                Intrinsics.checkNotNullParameter(newNetwork, "newNetwork");
                String fullName = newNetwork.getFullName();
                currentNetworkId = WalletHomeCryptoPresenter.this.getCurrentNetworkId();
                if (Intrinsics.areEqual(fullName, currentNetworkId)) {
                    return;
                }
                cryptoPreferenceHelper = WalletHomeCryptoPresenter.this.cryptoPreferenceHelper;
                cryptoPreferenceHelper.setNetwork(newNetwork);
                ((WalletHomeCryptoView) WalletHomeCryptoPresenter.this.getViewState()).renderNodes(WalletHomeCryptoPresenter.configureUiItems$default(WalletHomeCryptoPresenter.this, null, true, null, 5, null));
                rxEventBus = WalletHomeCryptoPresenter.this.rxEventBus;
                rxEventBus.publish(DomainRxEvents.NetworkUpdated.INSTANCE);
            }
        });
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

    private final void loadTokens(boolean z, final boolean z2, long j) {
        final Observable<Result<List<BaseNode>>> walletBalanceItemsObservable;
        int i = WhenMappings.$EnumSwitchMapping$0[this.selectedTokenType.ordinal()];
        if (i == 1 || i == 2) {
            walletBalanceItemsObservable = getWalletBalanceItemsObservable(z, j);
        } else if (i != 3) {
            throw new NoWhenBranchMatchedException();
        } else {
            walletBalanceItemsObservable = getNftItemsObservable(j);
        }
        Observable<Result<String>> observeOn = this.cryptoWalletInteractor.getLinkedCryptoWalletAddress(getCurrentBlockchainType()).observeOn(this.schedulersProvider.mo716ui());
        final Function1<Result<? extends String>, ObservableSource<? extends Result<? extends List<BaseNode>>>> function1 = new Function1<Result<? extends String>, ObservableSource<? extends Result<? extends List<BaseNode>>>>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$loadTokens$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ ObservableSource<? extends Result<? extends List<BaseNode>>> invoke(Result<? extends String> result) {
                return invoke2((Result<String>) result);
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final ObservableSource<? extends Result<List<BaseNode>>> invoke2(Result<String> addressResult) {
                CryptoAccessManager cryptoAccessManager;
                BlockchainType currentBlockchainType;
                boolean isWalletDataMismatching;
                Intrinsics.checkNotNullParameter(addressResult, "addressResult");
                WalletHomeCryptoPresenter.this.setLinkedWalletAddress(addressResult.getData());
                if (!z2) {
                    ((WalletHomeCryptoView) WalletHomeCryptoPresenter.this.getViewState()).renderNodes(WalletHomeCryptoPresenter.configureUiItems$default(WalletHomeCryptoPresenter.this, null, true, null, 5, null));
                }
                cryptoAccessManager = WalletHomeCryptoPresenter.this.cryptoAccessManager;
                currentBlockchainType = WalletHomeCryptoPresenter.this.getCurrentBlockchainType();
                if (cryptoAccessManager.isAuthorized(currentBlockchainType)) {
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
        Observable doFinally = observeOn.flatMap(new Function() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource loadTokens$lambda$0;
                loadTokens$lambda$0 = WalletHomeCryptoPresenter.loadTokens$lambda$0(Function1.this, obj);
                return loadTokens$lambda$0;
            }
        }).observeOn(this.schedulersProvider.mo716ui()).doFinally(new Action() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Action
            public final void run() {
                WalletHomeCryptoPresenter.loadTokens$lambda$1(WalletHomeCryptoPresenter.this);
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
                m1518invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1518invoke(Result<? extends List<BaseNode>> it) {
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
            public final void invoke2(Throwable th) {
                Timber.m6e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        autoDispose(subscribe, this.mainScreenSubscriptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource loadTokens$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadTokens$lambda$1(WalletHomeCryptoPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ((WalletHomeCryptoView) this$0.getViewState()).showRefreshing(false);
    }

    private final Observable<Result<List<BaseNode>>> getWalletBalanceItemsObservable(boolean z, long j) {
        Observable delay = WalletInteractor.getWalletBalance$default(this.walletInteractor, z, null, 2, null).distinctUntilChanged().delay(j, TimeUnit.MILLISECONDS);
        Intrinsics.checkNotNullExpressionValue(delay, "walletInteractor\n       …y, TimeUnit.MILLISECONDS)");
        Observable<Result<List<BaseNode>>> flatMap = delay.flatMap(new C2316x21775993(new Function1<Result<? extends List<? extends TokenBalance>>, ObservableSource<? extends Result<? extends List<BaseNode>>>>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$getWalletBalanceItemsObservable$$inlined$flatMapSuccess$1
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
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                walletInteractor = WalletHomeCryptoPresenter.this.walletInteractor;
                Observable tokensSettings$default = WalletInteractor.getTokensSettings$default(walletInteractor, null, 1, null);
                schedulersProvider = WalletHomeCryptoPresenter.this.schedulersProvider;
                Observable observeOn = tokensSettings$default.observeOn(schedulersProvider.mo716ui());
                Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
                final WalletHomeCryptoPresenter walletHomeCryptoPresenter = WalletHomeCryptoPresenter.this;
                Observable map = observeOn.map(new C2316x21775993(new Function1<Result<? extends List<? extends TokenDisplaySettings.Crypto>>, Result<? extends List<BaseNode>>>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$getWalletBalanceItemsObservable$lambda$5$$inlined$mapSuccess$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // kotlin.jvm.functions.Function1
                    public final Result<? extends List<BaseNode>> invoke(Result<? extends List<? extends TokenDisplaySettings.Crypto>> result2) {
                        List list;
                        Intrinsics.checkNotNullParameter(result2, "result");
                        if (!(result2 instanceof Result.Success)) {
                            if (result2 instanceof Result.Error) {
                                Result<? extends List<BaseNode>> error$default2 = Result.Companion.error$default(Result.Companion, ((Result.Error) result2).getError(), null, 2, null);
                                Intrinsics.checkNotNull(error$default2, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.mapSuccess");
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
                        walletHomeCryptoPresenter3.sortTokens(list3);
                        WalletHomeCryptoPresenter walletHomeCryptoPresenter4 = WalletHomeCryptoPresenter.this;
                        list = walletHomeCryptoPresenter4.tokens;
                        return Result.Companion.success(WalletHomeCryptoPresenter.configureUiItems$default(walletHomeCryptoPresenter4, list, false, null, 6, null));
                    }
                }));
                Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
                return map;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    private final Observable<Result<List<BaseNode>>> getNftItemsObservable(long j) {
        Observable<Result<List<NftToken>>> delay = this.nftAvatarInteractor.getNftAvatars(getCurrentNetworkId()).distinctUntilChanged().delay(j, TimeUnit.MILLISECONDS);
        Intrinsics.checkNotNullExpressionValue(delay, "nftAvatarInteractor\n    …y, TimeUnit.MILLISECONDS)");
        Observable map = delay.map(new C2316x21775993(new Function1<Result<? extends List<? extends NftToken>>, Result<? extends List<BaseNode>>>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$getNftItemsObservable$$inlined$mapSuccess$1
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
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.mapSuccess");
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
                walletHomeCryptoPresenter.tokens = (List) data;
                WalletHomeCryptoPresenter walletHomeCryptoPresenter2 = WalletHomeCryptoPresenter.this;
                list = walletHomeCryptoPresenter2.tokens;
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
        return (!(this.cryptoAccessManager.getLastLoggedInAddress(getCurrentBlockchainType()).length() > 0) || getLinkedWalletAddress() == null || Intrinsics.areEqual(this.cryptoAccessManager.getLastLoggedInAddress(getCurrentBlockchainType()), getLinkedWalletAddress())) ? false : true;
    }

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(RxEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
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
                Boolean listenEvents$lambda$15;
                listenEvents$lambda$15 = WalletHomeCryptoPresenter.listenEvents$lambda$15(Function1.this, obj);
                return listenEvents$lambda$15;
            }
        });
        final WalletHomeCryptoPresenter$listenEvents$2 walletHomeCryptoPresenter$listenEvents$2 = new Function1<GroupedObservable<Boolean, RxEvent>, Observable<RxEvent>>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$listenEvents$2
            @Override // kotlin.jvm.functions.Function1
            public final Observable<RxEvent> invoke(GroupedObservable<Boolean, RxEvent> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Intrinsics.areEqual(it.getKey(), Boolean.TRUE) ? it.debounce(500L, TimeUnit.MILLISECONDS) : it;
            }
        };
        Observable merge = Observable.merge(groupBy.map(new Function() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Observable listenEvents$lambda$16;
                listenEvents$lambda$16 = WalletHomeCryptoPresenter.listenEvents$lambda$16(Function1.this, obj);
                return listenEvents$lambda$16;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(merge, "merge(\n                 …      }\n                )");
        Disposable subscribe = merge.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<RxEvent, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RxEvent rxEvent) {
                m1517invoke(rxEvent);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1517invoke(RxEvent it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                RxEvent rxEvent = it;
                if (rxEvent instanceof DomainRxEvents.TokensSettingsChanged ? true : rxEvent instanceof DomainRxEvents.InterfaceSettingsChanged) {
                    WalletHomeCryptoPresenter.loadScreenInfo$default(WalletHomeCryptoPresenter.this, true, true, 0L, 4, null);
                    return;
                }
                if (Intrinsics.areEqual(rxEvent, DomainRxEvents.AllWalletsReset.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.WalletReset.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.NetworkUpdated.INSTANCE)) {
                    WalletHomeCryptoPresenter.this.setLinkedWalletAddress(null);
                    WalletHomeCryptoPresenter.loadScreenInfo$default(WalletHomeCryptoPresenter.this, true, false, 0L, 6, null);
                    return;
                }
                if (Intrinsics.areEqual(rxEvent, DomainRxEvents.WalletCreated.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.WalletRestored.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.SuccessSaveBackup.INSTANCE)) {
                    WalletHomeCryptoPresenter.loadScreenInfo$default(WalletHomeCryptoPresenter.this, true, false, 0L, 6, null);
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
            public final void invoke2(Throwable th) {
                Timber.m6e(th);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean listenEvents$lambda$15(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Boolean) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
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
        int i = C3419R.C3422id.selectable_token_header;
        int category = this.selectedTokenType.getCategory();
        int i2 = C3419R.C3421drawable.fork_ic_arrow_down_16;
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
            this.tokens = new ArrayList();
            ((WalletHomeCryptoView) getViewState()).renderNodes(configureUiItems$default(this, null, true, null, 5, null));
            loadScreenInfo$default(this, true, false, 0L, 6, null);
        }
    }

    private final void configureCryptoAccountHeader(List<BaseNode> list) {
        list.add(new HeaderItemWithNetworkSwitcher(this.resourceManager.getString(C3419R.string.wallet_home_crypto_account), getCurrentNetwork(), false, 4, null));
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
        if (this.cryptoAccessManager.isCurrentBlockchainWalletCreated()) {
            configureTokensHeader(arrayList);
            configureTokens(arrayList, this.selectedTokenType, list, z, iErrorStatus);
        }
        return arrayList;
    }

    private final List<HorizontalActionButtonItem> resolveActions() {
        List<HorizontalActionButtonItem> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new HorizontalActionButtonItem[]{new HorizontalActionButtonItem(C3419R.C3421drawable.msg_send, this.resourceManager.getString(C3419R.string.wallet_token_details_details_action_send), this.selectedTokenType.isCrypto(), new Function0<Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$resolveActions$1
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
                String currentNetworkId;
                currentNetworkId = WalletHomeCryptoPresenter.this.getCurrentNetworkId();
                ((WalletHomeCryptoView) WalletHomeCryptoPresenter.this.getViewState()).openSendScreen(currentNetworkId);
            }
        }), new HorizontalActionButtonItem(C3419R.C3421drawable.fork_ic_ask_transfer, this.resourceManager.getString(C3419R.string.wallet_binance_pay_action_receive), false, new Function0<Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$resolveActions$2
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
                WalletHomeCryptoPresenter.this.showQrReceiveDialog();
            }
        }, 4, null), new HorizontalActionButtonItem(C3419R.C3421drawable.fork_ic_transactions_28, this.resourceManager.getString(C3419R.string.wallet_binance_pay_action_history), this.selectedTokenType.isCrypto(), new Function0<Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$resolveActions$3
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
        List<WalletCreationType> availableWalletCreationTypes = getAvailableWalletCreationTypes();
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
                    WalletHomeCryptoPresenter.this.startWalletCreationFlow(walletCreationType);
                }
            }, 4, null));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showQrReceiveDialog() {
        runWithCryptoInformationCheck(new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletHomeCryptoPresenter.showQrReceiveDialog$lambda$32(WalletHomeCryptoPresenter.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showQrReceiveDialog$lambda$32(WalletHomeCryptoPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        WalletHomeCryptoView walletHomeCryptoView = (WalletHomeCryptoView) this$0.getViewState();
        String linkedWalletAddress = this$0.getLinkedWalletAddress();
        if (linkedWalletAddress == null) {
            linkedWalletAddress = "";
        }
        walletHomeCryptoView.showQrReceiveDialog(linkedWalletAddress, this$0.getCurrentNetwork());
    }

    /* JADX INFO: Access modifiers changed from: private */
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
