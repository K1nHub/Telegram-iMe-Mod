package com.iMe.p030ui.wallet.home.tabs.crypto.settings;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.mapper.wallet.FoundTokenUiMappingKt;
import com.iMe.mapper.wallet.TokenUiMappingKt;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.state.GlobalState;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.crypto.TokensScreenType;
import com.iMe.model.wallet.home.FoundTokenItem;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.data.locale.prefs.model.TokenDisplaySettings;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.common.CursoredData;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.wallet.token.FoundToken;
import com.iMe.storage.domain.model.wallet.token.FoundTokenWithFamily;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p029rx.RxEventBus;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p029rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.extentions.p031rx.SchedulersExtKt;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3630R;
import timber.log.Timber;
/* compiled from: WalletHomeCryptoTokensSettingsPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter */
/* loaded from: classes4.dex */
public final class WalletHomeCryptoTokensSettingsPresenter extends BasePresenter<WalletHomeCryptoTokensSettingsView> {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private String cursor;
    private final List<BaseNode> items;
    private boolean onlyPositiveTokens;
    private String query;
    private final PublishSubject<String> querySubject;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private final TokensScreenType screenType;
    private final List<FoundTokenWithFamily> searchResults;
    private List<TokenDisplaySettings> settings;
    private GlobalState settingsGlobalState;
    private final PublishSubject<FoundTokenItem> tokenVisibilitySubject;
    private List<TokenDetailed> tokens;
    private final WalletInteractor walletInteractor;

    static {
        new Companion(null);
    }

    public WalletHomeCryptoTokensSettingsPresenter(CryptoPreferenceHelper cryptoPreferenceHelper, RxEventBus rxEventBus, ResourceManager resourceManager, TokensScreenType screenType, WalletInteractor walletInteractor, SchedulersProvider schedulersProvider) {
        List<TokenDetailed> emptyList;
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        Intrinsics.checkNotNullParameter(walletInteractor, "walletInteractor");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.rxEventBus = rxEventBus;
        this.resourceManager = resourceManager;
        this.screenType = screenType;
        this.walletInteractor = walletInteractor;
        this.schedulersProvider = schedulersProvider;
        this.onlyPositiveTokens = resolveOnlyPositiveTokensFlag();
        this.searchResults = new ArrayList();
        this.items = new ArrayList();
        PublishSubject<String> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create()");
        this.querySubject = create;
        PublishSubject<FoundTokenItem> create2 = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create2, "create()");
        this.tokenVisibilitySubject = create2;
        this.settings = resolveTokensSettings();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.tokens = emptyList;
        this.query = "";
    }

    public final GlobalState getSettingsGlobalState() {
        return this.settingsGlobalState;
    }

    public final String getNetworkId() {
        return this.cryptoPreferenceHelper.getNetworkId();
    }

    public final Network getNetwork() {
        return NetworksHelper.getNetworkById(getNetworkId());
    }

    public final void reloadSettings() {
        saveSettings$default(this, false, 1, null);
        loadTokens();
    }

    public final Pair<TokenDetailed, TokenDisplaySettings> getTokenSetting(int i) {
        Object obj;
        boolean areEqual;
        TokenDetailed tokenDetailed = this.tokens.get(i);
        Iterator<T> it = this.settings.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            TokenDisplaySettings tokenDisplaySettings = (TokenDisplaySettings) obj;
            if (tokenDisplaySettings instanceof TokenDisplaySettings.Binance) {
                areEqual = Intrinsics.areEqual(((TokenDisplaySettings.Binance) tokenDisplaySettings).getTokenTicker(), tokenDetailed.getTicker());
                continue;
            } else if (tokenDisplaySettings instanceof TokenDisplaySettings.Crypto) {
                areEqual = Intrinsics.areEqual(((TokenDisplaySettings.Crypto) tokenDisplaySettings).getTokenAddress(), tokenDetailed.getAddress());
                continue;
            } else {
                throw new NoWhenBranchMatchedException();
            }
            if (areEqual) {
                break;
            }
        }
        return TuplesKt.m144to(tokenDetailed, (TokenDisplaySettings) obj);
    }

    public static /* synthetic */ void saveSettings$default(WalletHomeCryptoTokensSettingsPresenter walletHomeCryptoTokensSettingsPresenter, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        walletHomeCryptoTokensSettingsPresenter.saveSettings(z);
    }

    public final void saveSettings(boolean z) {
        if (Intrinsics.areEqual(this.settings, resolveTokensSettings()) && this.onlyPositiveTokens == resolveOnlyPositiveTokensFlag() && !z) {
            return;
        }
        TokensScreenType tokensScreenType = this.screenType;
        if (tokensScreenType instanceof TokensScreenType.Binance) {
            CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
            List<TokenDisplaySettings> list = this.settings;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (obj instanceof TokenDisplaySettings.Binance) {
                    arrayList.add(obj);
                }
            }
            cryptoPreferenceHelper.setBinanceTokensSettings(arrayList);
            this.cryptoPreferenceHelper.setBinanceOnlyPositiveTokens(this.onlyPositiveTokens);
            this.rxEventBus.publish(DomainRxEvents.BinanceTokensSettingsChanged.INSTANCE);
        } else if (tokensScreenType instanceof TokensScreenType.Crypto) {
            List<TokenDisplaySettings> list2 = this.settings;
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : list2) {
                if (obj2 instanceof TokenDisplaySettings.Crypto) {
                    arrayList2.add(obj2);
                }
            }
            boolean z2 = !Intrinsics.areEqual(arrayList2, this.cryptoPreferenceHelper.getTokensSettings(getNetworkId()));
            CryptoPreferenceHelper cryptoPreferenceHelper2 = this.cryptoPreferenceHelper;
            List<TokenDisplaySettings> list3 = this.settings;
            ArrayList arrayList3 = new ArrayList();
            for (Object obj3 : list3) {
                if (obj3 instanceof TokenDisplaySettings.Crypto) {
                    arrayList3.add(obj3);
                }
            }
            cryptoPreferenceHelper2.saveTokensSettings(arrayList3, getNetworkId());
            this.cryptoPreferenceHelper.setOnlyPositiveTokens(this.onlyPositiveTokens);
            if (z2) {
                RxEventBus rxEventBus = this.rxEventBus;
                String simpleName = Reflection.getOrCreateKotlinClass(WalletHomeCryptoTokensSettingsPresenter.class).getSimpleName();
                if (simpleName == null) {
                    simpleName = WalletHomeCryptoTokensSettingsPresenter.class.getSimpleName();
                    Intrinsics.checkNotNullExpressionValue(simpleName, "T::class.java.simpleName");
                }
                rxEventBus.publish(new DomainRxEvents.TokensSettingsChanged(simpleName, false));
            }
        }
    }

    public final void switchTokenVisibility(int i, boolean z) {
        final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        final TokenDisplaySettings tokenDisplaySettings = this.settings.get(i);
        ref$BooleanRef.element = tokenDisplaySettings.isVisible();
        tokenDisplaySettings.setVisible(z);
        if (tokenDisplaySettings instanceof TokenDisplaySettings.Crypto) {
            Observable<Result<Boolean>> observeOn = this.walletInteractor.setTokenVisibility(new Token(((TokenDisplaySettings.Crypto) tokenDisplaySettings).getTokenAddress(), getNetworkId()), z).observeOn(this.schedulersProvider.mo1009ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
            Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$switchTokenVisibility$$inlined$subscribeWithErrorHandle$default$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                    m1769invoke(result);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: collision with other method in class */
                public final void m1769invoke(Result<? extends Boolean> it) {
                    List list;
                    ResourceManager resourceManager;
                    RxEventBus rxEventBus;
                    List list2;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result<? extends Boolean> result = it;
                    Object obj = null;
                    if (result instanceof Result.Success) {
                        rxEventBus = WalletHomeCryptoTokensSettingsPresenter.this.rxEventBus;
                        String simpleName = Reflection.getOrCreateKotlinClass(WalletHomeCryptoTokensSettingsPresenter.class).getSimpleName();
                        if (simpleName == null) {
                            simpleName = WalletHomeCryptoTokensSettingsPresenter.class.getSimpleName();
                            Intrinsics.checkNotNullExpressionValue(simpleName, "T::class.java.simpleName");
                        }
                        rxEventBus.publish(new DomainRxEvents.TokensSettingsChanged(simpleName, false, 2, null));
                        list2 = WalletHomeCryptoTokensSettingsPresenter.this.settings;
                        ArrayList arrayList = new ArrayList();
                        for (Object obj2 : list2) {
                            if (obj2 instanceof TokenDisplaySettings.Crypto) {
                                arrayList.add(obj2);
                            }
                        }
                        Iterator it2 = arrayList.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            Object next = it2.next();
                            if (Intrinsics.areEqual(((TokenDisplaySettings.Crypto) next).getTokenAddress(), ((TokenDisplaySettings.Crypto) tokenDisplaySettings).getTokenAddress())) {
                                obj = next;
                                break;
                            }
                        }
                        TokenDisplaySettings.Crypto crypto = (TokenDisplaySettings.Crypto) obj;
                        if (crypto != null) {
                            crypto.setVisible(((Boolean) ((Result.Success) result).getData()).booleanValue());
                        }
                    } else if (result instanceof Result.Error) {
                        list = WalletHomeCryptoTokensSettingsPresenter.this.settings;
                        ArrayList arrayList2 = new ArrayList();
                        for (Object obj3 : list) {
                            if (obj3 instanceof TokenDisplaySettings.Crypto) {
                                arrayList2.add(obj3);
                            }
                        }
                        Iterator it3 = arrayList2.iterator();
                        while (true) {
                            if (!it3.hasNext()) {
                                break;
                            }
                            Object next2 = it3.next();
                            if (Intrinsics.areEqual(((TokenDisplaySettings.Crypto) next2).getTokenAddress(), ((TokenDisplaySettings.Crypto) tokenDisplaySettings).getTokenAddress())) {
                                obj = next2;
                                break;
                            }
                        }
                        TokenDisplaySettings.Crypto crypto2 = (TokenDisplaySettings.Crypto) obj;
                        if (crypto2 != null) {
                            crypto2.setVisible(ref$BooleanRef.element);
                        }
                        resourceManager = WalletHomeCryptoTokensSettingsPresenter.this.resourceManager;
                        ((WalletHomeCryptoTokensSettingsView) WalletHomeCryptoTokensSettingsPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                    }
                }
            }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$switchTokenVisibility$$inlined$subscribeWithErrorHandle$default$2
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
    }

    public final void swapTokensPositions(int i, int i2) {
        TokenDisplaySettings tokenDisplaySettings = this.settings.get(i);
        TokenDisplaySettings tokenDisplaySettings2 = this.settings.get(i2);
        tokenDisplaySettings.setPosition(i2);
        tokenDisplaySettings2.setPosition(i);
        this.settings.set(i, tokenDisplaySettings2);
        this.settings.set(i2, tokenDisplaySettings);
    }

    public final void onNetworkSelected(NetworkItem.Crypto crypto) {
        String networkId;
        if (crypto == null || (networkId = crypto.getNetworkId()) == null) {
            return;
        }
        saveSettings$default(this, false, 1, null);
        this.cryptoPreferenceHelper.setNetworkId(networkId);
        this.rxEventBus.publish(DomainRxEvents.NetworkUpdated.INSTANCE);
        this.settings = resolveTokensSettings();
        resolveTokensAndShow();
    }

    public static /* synthetic */ void reloadSearchResults$default(WalletHomeCryptoTokensSettingsPresenter walletHomeCryptoTokensSettingsPresenter, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        walletHomeCryptoTokensSettingsPresenter.reloadSearchResults(z);
    }

    public final void reloadSearchResults(boolean z) {
        this.cursor = null;
        this.searchResults.clear();
        this.items.clear();
        searchByQuery(true, z);
    }

    public static /* synthetic */ void searchByQuery$default(WalletHomeCryptoTokensSettingsPresenter walletHomeCryptoTokensSettingsPresenter, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        walletHomeCryptoTokensSettingsPresenter.searchByQuery(z, z2);
    }

    public final void searchByQuery(final boolean z, final boolean z2) {
        final boolean z3 = !z;
        if (z3 && this.cursor == null) {
            ((WalletHomeCryptoTokensSettingsView) getViewState()).onLoadMoreComplete();
            return;
        }
        Observable<Result<List<FoundTokenItem>>> observeOn = getSearchObservable().observeOn(this.schedulersProvider.mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "getSearchObservable()\n  …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends FoundTokenItem>>, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends FoundTokenItem>> result) {
                m1765invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1765invoke(Result<? extends List<? extends FoundTokenItem>> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends FoundTokenItem>> result = it;
                if (result instanceof Result.Success) {
                    WalletHomeCryptoTokensSettingsPresenter.this.onSearchSuccess((List) ((Result.Success) result).getData(), z3);
                } else if (result instanceof Result.Loading) {
                    if (!z || z2) {
                        return;
                    }
                    WalletHomeCryptoTokensSettingsPresenter.this.renderSearchState(GlobalState.Progress.INSTANCE);
                } else if (result instanceof Result.Error) {
                    if (z3) {
                        ((WalletHomeCryptoTokensSettingsView) WalletHomeCryptoTokensSettingsPresenter.this.getViewState()).onLoadMoreError();
                    } else if (((Result.Error) result).getError().isNoConnectionStatus()) {
                        WalletHomeCryptoTokensSettingsPresenter.this.renderSearchState(GlobalState.NoInternet.INSTANCE);
                    } else {
                        WalletHomeCryptoTokensSettingsPresenter.this.renderSearchState(GlobalState.Unexpected.INSTANCE);
                    }
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$2
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

    public final void onQueryUpdate(String newQuery) {
        CharSequence trim;
        Intrinsics.checkNotNullParameter(newQuery, "newQuery");
        PublishSubject<String> publishSubject = this.querySubject;
        trim = StringsKt__StringsKt.trim(newQuery);
        publishSubject.onNext(trim.toString());
    }

    public final void onFoundTokenClick(FoundTokenItem foundTokenItem) {
        Object obj;
        List mutableListOf;
        List<FoundToken> plus;
        int collectionSizeOrDefault;
        List<FoundTokenItem> mutableList;
        Intrinsics.checkNotNullParameter(foundTokenItem, "foundTokenItem");
        if (foundTokenItem.isSwitchable()) {
            Iterator<T> it = this.searchResults.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (Intrinsics.areEqual(((FoundTokenWithFamily) obj).getFoundToken().getToken().getAddress(), foundTokenItem.getAddress())) {
                    break;
                }
            }
            FoundTokenWithFamily foundTokenWithFamily = (FoundTokenWithFamily) obj;
            if (foundTokenWithFamily == null) {
                return;
            }
            if (!foundTokenWithFamily.getTokenFamily().isEmpty()) {
                WalletHomeCryptoTokensSettingsView walletHomeCryptoTokensSettingsView = (WalletHomeCryptoTokensSettingsView) getViewState();
                mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(foundTokenWithFamily.getFoundToken());
                plus = CollectionsKt___CollectionsKt.plus((Collection) mutableListOf, (Iterable) foundTokenWithFamily.getTokenFamily());
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(plus, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (FoundToken foundToken : plus) {
                    arrayList.add(FoundTokenUiMappingKt.mapToUi(foundToken));
                }
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
                walletHomeCryptoTokensSettingsView.showTokenFamilyDialog(mutableList);
                return;
            }
            this.tokenVisibilitySubject.onNext(foundTokenItem);
            return;
        }
        ((WalletHomeCryptoTokensSettingsView) getViewState()).showToast(this.resourceManager.getString(C3630R.string.token_search_coin));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        resolveTokensAndShow();
        subscribeToQueryChanges();
        subscribeToTokenVisibilitySwitch();
        renderSearchState(GlobalState.Empty.TokenSearchStart.INSTANCE);
        if (this.screenType instanceof TokensScreenType.Crypto) {
            subscribeToEvents();
        }
    }

    /* JADX WARN: Type inference failed for: r4v9, types: [java.lang.Object] */
    private final List<TokenDisplaySettings> resolveTokensSettings() {
        List<TokenDisplaySettings> mutableList;
        List<TokenDisplaySettings> mutableList2;
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        int collectionSizeOrDefault2;
        TokensScreenType tokensScreenType = this.screenType;
        if (tokensScreenType instanceof TokensScreenType.Binance) {
            List<TokenDisplaySettings.Binance> binanceTokensSettings = this.cryptoPreferenceHelper.getBinanceTokensSettings();
            if (binanceTokensSettings.isEmpty()) {
                List<TokenDetailed> tokens = ((TokensScreenType.Binance) this.screenType).getTokens();
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(tokens, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault2);
                int i = 0;
                for (Object obj : tokens) {
                    int i2 = i + 1;
                    if (i < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    arrayList.add(new TokenDisplaySettings.Binance(i, true, ((TokenDetailed) obj).getTicker()));
                    i = i2;
                }
                binanceTokensSettings = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
            }
            if (binanceTokensSettings.size() != ((TokensScreenType.Binance) this.screenType).getTokens().size()) {
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(binanceTokensSettings, 10);
                mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
                LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
                for (Object obj2 : binanceTokensSettings) {
                    linkedHashMap.put(((TokenDisplaySettings.Binance) obj2).getTokenTicker(), obj2);
                }
                binanceTokensSettings = new ArrayList<>();
                for (TokenDetailed tokenDetailed : ((TokensScreenType.Binance) this.screenType).getTokens()) {
                    if (linkedHashMap.get(tokenDetailed.getAddress()) == null) {
                        binanceTokensSettings.add(new TokenDisplaySettings.Binance(Integer.MAX_VALUE, true, tokenDetailed.getTicker()));
                    } else {
                        ?? r4 = linkedHashMap.get(tokenDetailed.getAddress());
                        Intrinsics.checkNotNull(r4);
                        binanceTokensSettings.add(r4);
                    }
                }
            }
            mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) binanceTokensSettings);
            return mutableList2;
        } else if (tokensScreenType instanceof TokensScreenType.Crypto) {
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.cryptoPreferenceHelper.getTokensSettings(getNetworkId()));
            return mutableList;
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    private final boolean resolveOnlyPositiveTokensFlag() {
        TokensScreenType tokensScreenType = this.screenType;
        if (tokensScreenType instanceof TokensScreenType.Binance) {
            return this.cryptoPreferenceHelper.getBinanceOnlyPositiveTokens();
        }
        if (tokensScreenType instanceof TokensScreenType.Crypto) {
            return this.cryptoPreferenceHelper.getOnlyPositiveTokens();
        }
        throw new NoWhenBranchMatchedException();
    }

    private final void resolveTokensAndShow() {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        TokensScreenType tokensScreenType = this.screenType;
        if (tokensScreenType instanceof TokensScreenType.Binance) {
            List<TokenDisplaySettings> list = this.settings;
            ArrayList<TokenDisplaySettings.Binance> arrayList = new ArrayList();
            for (Object obj : list) {
                if (obj instanceof TokenDisplaySettings.Binance) {
                    arrayList.add(obj);
                }
            }
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
            mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
            LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
            for (TokenDisplaySettings.Binance binance : arrayList) {
                linkedHashMap.put(binance.getTokenTicker(), Integer.valueOf(binance.getPosition()));
            }
            this.tokens = getSortedTokens(((TokensScreenType.Binance) this.screenType).getTokens(), linkedHashMap);
            ((WalletHomeCryptoTokensSettingsView) getViewState()).renderTokensSettings(TokenUiMappingKt.mapToUI(this.tokens));
        } else if (tokensScreenType instanceof TokensScreenType.Crypto) {
            loadTokens();
        }
    }

    private final void loadTokens() {
        Observable<Result<Map<TokenDetailed, Boolean>>> observeOn = this.walletInteractor.getDisplayedTokens(getNetworkId()).observeOn(this.schedulersProvider.mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Map<TokenDetailed, ? extends Boolean>>, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$loadTokens$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Map<TokenDetailed, ? extends Boolean>> result) {
                m1764invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1764invoke(Result<? extends Map<TokenDetailed, ? extends Boolean>> it) {
                ResourceManager resourceManager;
                CryptoPreferenceHelper cryptoPreferenceHelper;
                List mutableList;
                int collectionSizeOrDefault;
                int mapCapacity;
                int coerceAtLeast;
                List list;
                List sortedTokens;
                List list2;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Map<TokenDetailed, ? extends Boolean>> result = it;
                if (result instanceof Result.Success) {
                    cryptoPreferenceHelper = WalletHomeCryptoTokensSettingsPresenter.this.cryptoPreferenceHelper;
                    List<TokenDisplaySettings.Crypto> tokensSettings = cryptoPreferenceHelper.getTokensSettings(WalletHomeCryptoTokensSettingsPresenter.this.getNetworkId());
                    WalletHomeCryptoTokensSettingsPresenter walletHomeCryptoTokensSettingsPresenter = WalletHomeCryptoTokensSettingsPresenter.this;
                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) tokensSettings);
                    walletHomeCryptoTokensSettingsPresenter.settings = mutableList;
                    collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(tokensSettings, 10);
                    mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
                    coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
                    LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
                    for (TokenDisplaySettings.Crypto crypto : tokensSettings) {
                        linkedHashMap.put(crypto.getTokenAddress(), Integer.valueOf(crypto.getPosition()));
                    }
                    WalletHomeCryptoTokensSettingsPresenter walletHomeCryptoTokensSettingsPresenter2 = WalletHomeCryptoTokensSettingsPresenter.this;
                    list = CollectionsKt___CollectionsKt.toList(((Map) ((Result.Success) result).getData()).keySet());
                    sortedTokens = walletHomeCryptoTokensSettingsPresenter2.getSortedTokens(list, linkedHashMap);
                    walletHomeCryptoTokensSettingsPresenter2.tokens = sortedTokens;
                    list2 = WalletHomeCryptoTokensSettingsPresenter.this.tokens;
                    ((WalletHomeCryptoTokensSettingsView) WalletHomeCryptoTokensSettingsPresenter.this.getViewState()).renderTokensSettings(TokenUiMappingKt.mapToUI(list2));
                } else if (result instanceof Result.Loading) {
                    WalletHomeCryptoTokensSettingsPresenter.this.renderTokensSettingsStateItem(GlobalState.Progress.INSTANCE);
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    WalletHomeCryptoTokensSettingsPresenter.this.renderTokensSettingsStateItem(error.getError().getStatus() == ApiErrorHandler.ErrorStatus.NO_CONNECTION ? GlobalState.NoInternet.INSTANCE : GlobalState.Unexpected.INSTANCE);
                    resourceManager = WalletHomeCryptoTokensSettingsPresenter.this.resourceManager;
                    ((WalletHomeCryptoTokensSettingsView) WalletHomeCryptoTokensSettingsPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$loadTokens$$inlined$subscribeWithErrorHandle$default$2
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
        })), "viewState: BaseView? = n…rror.invoke(error)\n    })");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void renderTokensSettingsStateItem(GlobalState globalState) {
        List<? extends BaseNode> listOfNotNull;
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(new GlobalStateItem(globalState));
        ((WalletHomeCryptoTokensSettingsView) getViewState()).renderTokensSettings(listOfNotNull);
        this.settingsGlobalState = globalState;
    }

    private final void subscribeToEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.TokensSettingsChanged.class).observeOn(rxEventBus.getSchedulersProvider().mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n            .o…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<DomainRxEvents.TokensSettingsChanged, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.TokensSettingsChanged tokensSettingsChanged) {
                m1766invoke(tokensSettingsChanged);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1766invoke(DomainRxEvents.TokensSettingsChanged it) {
                String str;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                DomainRxEvents.TokensSettingsChanged tokensSettingsChanged = it;
                String sourceClassName = tokensSettingsChanged.getSourceClassName();
                String simpleName = Reflection.getOrCreateKotlinClass(WalletHomeCryptoTokensSettingsPresenter.class).getSimpleName();
                if (simpleName == null) {
                    simpleName = WalletHomeCryptoTokensSettingsPresenter.class.getSimpleName();
                    Intrinsics.checkNotNullExpressionValue(simpleName, "T::class.java.simpleName");
                }
                if (!Intrinsics.areEqual(sourceClassName, simpleName)) {
                    WalletHomeCryptoTokensSettingsPresenter.this.reloadSettings();
                    str = WalletHomeCryptoTokensSettingsPresenter.this.query;
                    if (str.length() > 0) {
                        WalletHomeCryptoTokensSettingsPresenter.this.reloadSearchResults(true);
                    }
                } else if (tokensSettingsChanged.isFromSearch()) {
                    WalletHomeCryptoTokensSettingsPresenter.this.reloadSettings();
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$2
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

    private final void subscribeToQueryChanges() {
        Observable<String> observeOn = this.querySubject.debounce(500L, TimeUnit.MILLISECONDS).distinctUntilChanged().observeOn(this.schedulersProvider.mo1009ui());
        final Function1<String, Boolean> function1 = new Function1<String, Boolean>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$subscribeToQueryChanges$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(String rawQuery) {
                boolean z;
                Intrinsics.checkNotNullParameter(rawQuery, "rawQuery");
                if (rawQuery.length() < 2) {
                    WalletHomeCryptoTokensSettingsPresenter.this.renderSearchState(GlobalState.Empty.TokenSearchStart.INSTANCE);
                    z = false;
                } else {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        };
        Observable<String> observeOn2 = observeOn.filter(new Predicate() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                boolean subscribeToQueryChanges$lambda$23;
                subscribeToQueryChanges$lambda$23 = WalletHomeCryptoTokensSettingsPresenter.subscribeToQueryChanges$lambda$23(Function1.this, obj);
                return subscribeToQueryChanges$lambda$23;
            }
        }).observeOn(this.schedulersProvider.mo1010io());
        final Function1<String, ObservableSource<? extends Result<? extends List<? extends FoundTokenItem>>>> function12 = new Function1<String, ObservableSource<? extends Result<? extends List<? extends FoundTokenItem>>>>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$subscribeToQueryChanges$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<List<FoundTokenItem>>> invoke(String newQuery) {
                List list;
                List list2;
                Observable searchObservable;
                Intrinsics.checkNotNullParameter(newQuery, "newQuery");
                WalletHomeCryptoTokensSettingsPresenter.this.query = newQuery;
                WalletHomeCryptoTokensSettingsPresenter.this.cursor = null;
                list = WalletHomeCryptoTokensSettingsPresenter.this.searchResults;
                list.clear();
                list2 = WalletHomeCryptoTokensSettingsPresenter.this.items;
                list2.clear();
                searchObservable = WalletHomeCryptoTokensSettingsPresenter.this.getSearchObservable();
                return searchObservable;
            }
        };
        Observable<R> switchMap = observeOn2.switchMap(new Function() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource subscribeToQueryChanges$lambda$24;
                subscribeToQueryChanges$lambda$24 = WalletHomeCryptoTokensSettingsPresenter.subscribeToQueryChanges$lambda$24(Function1.this, obj);
                return subscribeToQueryChanges$lambda$24;
            }
        });
        Intrinsics.checkNotNullExpressionValue(switchMap, "private fun subscribeToQ…     .autoDispose()\n    }");
        Disposable subscribe = SchedulersExtKt.scheduleIO(switchMap, this.schedulersProvider).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends FoundTokenItem>>, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends FoundTokenItem>> result) {
                m1767invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1767invoke(Result<? extends List<? extends FoundTokenItem>> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends FoundTokenItem>> result = it;
                if (result instanceof Result.Success) {
                    WalletHomeCryptoTokensSettingsPresenter.this.onSearchSuccess((List) ((Result.Success) result).getData(), false);
                } else if (result instanceof Result.Loading) {
                    WalletHomeCryptoTokensSettingsPresenter.this.renderSearchState(GlobalState.Progress.INSTANCE);
                } else if (result instanceof Result.Error) {
                    WalletHomeCryptoTokensSettingsPresenter.this.renderSearchState(((Result.Error) result).getError().isNoConnectionStatus() ? GlobalState.NoInternet.INSTANCE : GlobalState.Unexpected.INSTANCE);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$2
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
    public static final boolean subscribeToQueryChanges$lambda$23(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource subscribeToQueryChanges$lambda$24(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    private final void subscribeToTokenVisibilitySwitch() {
        Observable<FoundTokenItem> observeOn = this.tokenVisibilitySubject.observeOn(this.schedulersProvider.mo1009ui());
        final Function1<FoundTokenItem, FoundTokenItem> function1 = new Function1<FoundTokenItem, FoundTokenItem>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$subscribeToTokenVisibilitySwitch$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final FoundTokenItem invoke(FoundTokenItem foundTokenItem) {
                List<BaseNode> list;
                FoundTokenItem copy;
                Intrinsics.checkNotNullParameter(foundTokenItem, "foundTokenItem");
                list = WalletHomeCryptoTokensSettingsPresenter.this.items;
                WalletHomeCryptoTokensSettingsPresenter walletHomeCryptoTokensSettingsPresenter = WalletHomeCryptoTokensSettingsPresenter.this;
                int indexOf = list.indexOf(foundTokenItem);
                copy = foundTokenItem.copy((r20 & 1) != 0 ? foundTokenItem.name : null, (r20 & 2) != 0 ? foundTokenItem.ticker : null, (r20 & 4) != 0 ? foundTokenItem.address : null, (r20 & 8) != 0 ? foundTokenItem.tokenLogoUrl : null, (r20 & 16) != 0 ? foundTokenItem.networkId : null, (r20 & 32) != 0 ? foundTokenItem.networkLogoUrl : null, (r20 & 64) != 0 ? foundTokenItem.isEnabled : !foundTokenItem.isEnabled(), (r20 & 128) != 0 ? foundTokenItem.isCustom : false, (r20 & 256) != 0 ? foundTokenItem.isSwitchable : false);
                list.set(indexOf, copy);
                ((WalletHomeCryptoTokensSettingsView) walletHomeCryptoTokensSettingsPresenter.getViewState()).renderSearchResultItems(list);
                return foundTokenItem;
            }
        };
        Observable observeOn2 = observeOn.map(new Function() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                FoundTokenItem subscribeToTokenVisibilitySwitch$lambda$26;
                subscribeToTokenVisibilitySwitch$lambda$26 = WalletHomeCryptoTokensSettingsPresenter.subscribeToTokenVisibilitySwitch$lambda$26(Function1.this, obj);
                return subscribeToTokenVisibilitySwitch$lambda$26;
            }
        }).debounce(200L, TimeUnit.MILLISECONDS).observeOn(this.schedulersProvider.mo1010io());
        final C2392xee15b4fa c2392xee15b4fa = new C2392xee15b4fa(this);
        Observable flatMap = observeOn2.flatMap(new Function() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource subscribeToTokenVisibilitySwitch$lambda$27;
                subscribeToTokenVisibilitySwitch$lambda$27 = WalletHomeCryptoTokensSettingsPresenter.subscribeToTokenVisibilitySwitch$lambda$27(Function1.this, obj);
                return subscribeToTokenVisibilitySwitch$lambda$27;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "private fun subscribeToT…     .autoDispose()\n    }");
        Observable scheduleIO = SchedulersExtKt.scheduleIO(flatMap, this.schedulersProvider);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = scheduleIO.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Pair<? extends Result<? extends Boolean>, ? extends FoundTokenItem>, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$subscribeToTokenVisibilitySwitch$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Pair<? extends Result<? extends Boolean>, ? extends FoundTokenItem> pair) {
                m1768invoke(pair);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1768invoke(Pair<? extends Result<? extends Boolean>, ? extends FoundTokenItem> it) {
                ResourceManager resourceManager;
                List<BaseNode> list;
                FoundTokenItem copy;
                RxEventBus rxEventBus;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Pair<? extends Result<? extends Boolean>, ? extends FoundTokenItem> pair = it;
                Result<? extends Boolean> result = pair.component1();
                FoundTokenItem foundTokenItem = pair.component2();
                if (result instanceof Result.Success) {
                    rxEventBus = WalletHomeCryptoTokensSettingsPresenter.this.rxEventBus;
                    String simpleName = Reflection.getOrCreateKotlinClass(WalletHomeCryptoTokensSettingsPresenter.class).getSimpleName();
                    if (simpleName == null) {
                        simpleName = WalletHomeCryptoTokensSettingsPresenter.class.getSimpleName();
                        Intrinsics.checkNotNullExpressionValue(simpleName, "T::class.java.simpleName");
                    }
                    rxEventBus.publish(new DomainRxEvents.TokensSettingsChanged(simpleName, true));
                } else if (result instanceof Result.Error) {
                    Intrinsics.checkNotNullExpressionValue(result, "result");
                    resourceManager = WalletHomeCryptoTokensSettingsPresenter.this.resourceManager;
                    ((WalletHomeCryptoTokensSettingsView) WalletHomeCryptoTokensSettingsPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                    list = WalletHomeCryptoTokensSettingsPresenter.this.items;
                    int indexOf = list.indexOf(foundTokenItem);
                    Intrinsics.checkNotNullExpressionValue(foundTokenItem, "foundTokenItem");
                    copy = foundTokenItem.copy((r20 & 1) != 0 ? foundTokenItem.name : null, (r20 & 2) != 0 ? foundTokenItem.ticker : null, (r20 & 4) != 0 ? foundTokenItem.address : null, (r20 & 8) != 0 ? foundTokenItem.tokenLogoUrl : null, (r20 & 16) != 0 ? foundTokenItem.networkId : null, (r20 & 32) != 0 ? foundTokenItem.networkLogoUrl : null, (r20 & 64) != 0 ? foundTokenItem.isEnabled : !foundTokenItem.isEnabled(), (r20 & 128) != 0 ? foundTokenItem.isCustom : false, (r20 & 256) != 0 ? foundTokenItem.isSwitchable : false);
                    list.set(indexOf, copy);
                    ((WalletHomeCryptoTokensSettingsView) WalletHomeCryptoTokensSettingsPresenter.this.getViewState()).renderSearchResultItems(list);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$subscribeToTokenVisibilitySwitch$$inlined$subscribeWithErrorHandle$default$2
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
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FoundTokenItem subscribeToTokenVisibilitySwitch$lambda$26(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (FoundTokenItem) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource subscribeToTokenVisibilitySwitch$lambda$27(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Result<List<FoundTokenItem>>> getSearchObservable() {
        WalletInteractor walletInteractor = this.walletInteractor;
        String str = this.query;
        String networkId = getNetworkId();
        String str2 = this.cursor;
        if (str2 == null) {
            str2 = "";
        }
        Observable<Result<CursoredData<FoundTokenWithFamily>>> searchTokens = walletInteractor.searchTokens(str, networkId, str2);
        final Function1<Result<? extends CursoredData<FoundTokenWithFamily>>, ObservableSource<? extends Result<? extends List<? extends FoundTokenItem>>>> function1 = new Function1<Result<? extends CursoredData<FoundTokenWithFamily>>, ObservableSource<? extends Result<? extends List<? extends FoundTokenItem>>>>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$getSearchObservable$$inlined$flatMapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends List<? extends FoundTokenItem>>> invoke(Result<? extends CursoredData<FoundTokenWithFamily>> result) {
                List list;
                List<FoundTokenWithFamily> list2;
                int collectionSizeOrDefault;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                WalletHomeCryptoTokensSettingsPresenter walletHomeCryptoTokensSettingsPresenter = WalletHomeCryptoTokensSettingsPresenter.this;
                CursoredData<FoundTokenWithFamily> data = result.getData();
                walletHomeCryptoTokensSettingsPresenter.cursor = data != null ? data.getCursor() : null;
                list = WalletHomeCryptoTokensSettingsPresenter.this.searchResults;
                CursoredData<FoundTokenWithFamily> data2 = result.getData();
                List<FoundTokenWithFamily> data3 = data2 != null ? data2.getData() : null;
                if (data3 == null) {
                    data3 = CollectionsKt__CollectionsKt.emptyList();
                }
                list.addAll(data3);
                list2 = WalletHomeCryptoTokensSettingsPresenter.this.searchResults;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (FoundTokenWithFamily foundTokenWithFamily : list2) {
                    arrayList.add(FoundTokenUiMappingKt.mapToUi(foundTokenWithFamily.getFoundToken()));
                }
                Observable just = Observable.just(Result.Companion.success(arrayList));
                Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                return just;
            }
        };
        Observable<R> flatMap = searchTokens.flatMap(new Function(function1) { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$inlined$sam$i$io_reactivex_functions_Function$0
            private final /* synthetic */ Function1 function;

            {
                Intrinsics.checkNotNullParameter(function1, "function");
                this.function = function1;
            }

            @Override // io.reactivex.functions.Function
            public final /* synthetic */ Object apply(Object obj) {
                return this.function.invoke(obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<List<FoundTokenItem>>> startWith = flatMap.startWith((Observable<R>) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "walletInteractor\n       …artWith(Result.loading())");
        return startWith;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onSearchSuccess(List<FoundTokenItem> list, boolean z) {
        if (!list.isEmpty()) {
            this.items.addAll(list);
            if (z) {
                ((WalletHomeCryptoTokensSettingsView) getViewState()).onLoadMoreItems(this.items);
            } else {
                ((WalletHomeCryptoTokensSettingsView) getViewState()).renderSearchResultItems(this.items);
            }
        } else if (!z) {
            renderSearchState(GlobalState.Empty.TokenSearchResult.INSTANCE);
        }
        if (this.cursor == null) {
            ((WalletHomeCryptoTokensSettingsView) getViewState()).onLoadMoreComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void renderSearchState(GlobalState globalState) {
        List<BaseNode> mutableListOf;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new GlobalStateItem(globalState));
        ((WalletHomeCryptoTokensSettingsView) getViewState()).renderSearchResultItems(mutableListOf);
    }

    /* compiled from: WalletHomeCryptoTokensSettingsPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<TokenDetailed> getSortedTokens(List<TokenDetailed> list, final Map<String, Integer> map) {
        List<TokenDetailed> sortedWith;
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(list, new Comparator() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$getSortedTokens$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                Integer num = (Integer) map.get(((TokenDetailed) t).getAddress());
                Integer valueOf = Integer.valueOf(num != null ? num.intValue() : Integer.MAX_VALUE);
                Integer num2 = (Integer) map.get(((TokenDetailed) t2).getAddress());
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(valueOf, Integer.valueOf(num2 != null ? num2.intValue() : Integer.MAX_VALUE));
                return compareValues;
            }
        });
        return sortedWith;
    }
}
