package com.iMe.p031ui.wallet.home.tabs.crypto.settings;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.mapper.wallet.FoundTokenUiMappingKt;
import com.iMe.mapper.wallet.TokenUiMappingKt;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.state.GlobalState;
import com.iMe.model.wallet.crypto.TokensScreenType;
import com.iMe.model.wallet.home.FoundTokenItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.data.locale.prefs.model.TokenDisplaySettings;
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
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.extentions.p032rx.SchedulersExtKt;
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
import org.telegram.messenger.C3417R;
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
        return TuplesKt.m85to(tokenDetailed, (TokenDisplaySettings) obj);
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
        Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        TokenDisplaySettings tokenDisplaySettings = this.settings.get(i);
        ref$BooleanRef.element = tokenDisplaySettings.isVisible();
        tokenDisplaySettings.setVisible(z);
        if (tokenDisplaySettings instanceof TokenDisplaySettings.Crypto) {
            Observable<Result<Boolean>> observeOn = this.walletInteractor.setTokenVisibility(new Token(((TokenDisplaySettings.Crypto) tokenDisplaySettings).getTokenAddress(), getNetworkId()), z).observeOn(this.schedulersProvider.mo698ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
            Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2344x45b35dc8(this, tokenDisplaySettings, ref$BooleanRef)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2345x45b35dc9(null)));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
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

    public final void setNetworkType(String newNetworkId) {
        Intrinsics.checkNotNullParameter(newNetworkId, "newNetworkId");
        saveSettings$default(this, false, 1, null);
        this.cryptoPreferenceHelper.setNetworkId(newNetworkId);
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

    public final void searchByQuery(boolean z, boolean z2) {
        boolean z3 = !z;
        if (z3 && this.cursor == null) {
            ((WalletHomeCryptoTokensSettingsView) getViewState()).onLoadMoreComplete();
            return;
        }
        Observable<Result<List<FoundTokenItem>>> observeOn = getSearchObservable().observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "getSearchObservable()\n  …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2335xdd3a309a(this, z3, z, z2)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2336xdd3a309b(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
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
        ((WalletHomeCryptoTokensSettingsView) getViewState()).showToast(this.resourceManager.getString(C3417R.string.token_search_coin));
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
        Observable<Result<Map<TokenDetailed, Boolean>>> observeOn = this.walletInteractor.getDisplayedTokens(getNetworkId()).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2333xb6444835(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2334xb6444836(null))), "viewState: BaseView? = n…Error.invoke()\n        })");
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
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.TokensSettingsChanged.class).observeOn(rxEventBus.getSchedulersProvider().mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2337x92dd90f(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2338x92dd910(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void subscribeToQueryChanges() {
        Observable<String> observeOn = this.querySubject.debounce(500L, TimeUnit.MILLISECONDS).distinctUntilChanged().observeOn(this.schedulersProvider.mo698ui());
        final C2347xf79fdcdb c2347xf79fdcdb = new C2347xf79fdcdb(this);
        Observable<String> observeOn2 = observeOn.filter(new Predicate() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                boolean subscribeToQueryChanges$lambda$23;
                subscribeToQueryChanges$lambda$23 = WalletHomeCryptoTokensSettingsPresenter.subscribeToQueryChanges$lambda$23(Function1.this, obj);
                return subscribeToQueryChanges$lambda$23;
            }
        }).observeOn(this.schedulersProvider.mo699io());
        final C2348xf79fdcdc c2348xf79fdcdc = new C2348xf79fdcdc(this);
        Observable<R> switchMap = observeOn2.switchMap(new Function() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource subscribeToQueryChanges$lambda$24;
                subscribeToQueryChanges$lambda$24 = WalletHomeCryptoTokensSettingsPresenter.subscribeToQueryChanges$lambda$24(Function1.this, obj);
                return subscribeToQueryChanges$lambda$24;
            }
        });
        Intrinsics.checkNotNullExpressionValue(switchMap, "private fun subscribeToQ…     .autoDispose()\n    }");
        Disposable subscribe = SchedulersExtKt.scheduleIO(switchMap, this.schedulersProvider).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2339xf3403b91(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2340xf3403b92(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
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
        Observable<FoundTokenItem> observeOn = this.tokenVisibilitySubject.observeOn(this.schedulersProvider.mo698ui());
        final C2349xee15b4f9 c2349xee15b4f9 = new C2349xee15b4f9(this);
        Observable observeOn2 = observeOn.map(new Function() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                FoundTokenItem subscribeToTokenVisibilitySwitch$lambda$26;
                subscribeToTokenVisibilitySwitch$lambda$26 = WalletHomeCryptoTokensSettingsPresenter.subscribeToTokenVisibilitySwitch$lambda$26(Function1.this, obj);
                return subscribeToTokenVisibilitySwitch$lambda$26;
            }
        }).debounce(200L, TimeUnit.MILLISECONDS).observeOn(this.schedulersProvider.mo699io());
        final C2350xee15b4fa c2350xee15b4fa = new C2350xee15b4fa(this);
        Observable flatMap = observeOn2.flatMap(new Function() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource subscribeToTokenVisibilitySwitch$lambda$27;
                subscribeToTokenVisibilitySwitch$lambda$27 = WalletHomeCryptoTokensSettingsPresenter.subscribeToTokenVisibilitySwitch$lambda$27(Function1.this, obj);
                return subscribeToTokenVisibilitySwitch$lambda$27;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "private fun subscribeToT…     .autoDispose()\n    }");
        Disposable subscribe = SchedulersExtKt.scheduleIO(flatMap, this.schedulersProvider).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2341x1a930e2f(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2342x1a930e30((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
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
        final C2331x23aaeb5 c2331x23aaeb5 = new C2331x23aaeb5(this);
        Observable<R> flatMap = searchTokens.flatMap(new Function(c2331x23aaeb5) { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$inlined$sam$i$io_reactivex_functions_Function$0
            private final /* synthetic */ Function1 function;

            {
                Intrinsics.checkNotNullParameter(c2331x23aaeb5, "function");
                this.function = c2331x23aaeb5;
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
