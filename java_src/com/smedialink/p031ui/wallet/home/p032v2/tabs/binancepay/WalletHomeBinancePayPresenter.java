package com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay;

import com.binance.android.opensdk.api.BinanceAPI;
import com.binance.android.opensdk.api.BinanceListener;
import com.binance.android.opensdk.api.OAuthParams;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.common.AppRxEvents;
import com.smedialink.manager.crypto.pay.BinancePayProcessManager;
import com.smedialink.manager.crypto.pay.BinancePayProcessView;
import com.smedialink.model.common.GlobalStateItem;
import com.smedialink.model.common.NoChildNode;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.state.GlobalState;
import com.smedialink.model.wallet.home.BannerItem;
import com.smedialink.model.wallet.home.BannerSlide;
import com.smedialink.model.wallet.home.CardButtonItem;
import com.smedialink.model.wallet.home.HeaderItem;
import com.smedialink.model.wallet.home.HeaderItemWithNetworkSwitcher;
import com.smedialink.model.wallet.home.HorizontalActionButtonItem;
import com.smedialink.model.wallet.home.SlideItem;
import com.smedialink.model.wallet.home.TotalBalanceItem;
import com.smedialink.model.wallet.home.pay.BinanceAccountItem;
import com.smedialink.model.wallet.home.pay.BinanceBalanceItem;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.common.AppConfiguration$Binance;
import com.smedialink.storage.data.locale.prefs.model.WalletCryptoTokensSettingsMetadata;
import com.smedialink.storage.data.locale.prefs.model.WalletCryptoTokensSettingsTokenState;
import com.smedialink.storage.data.utils.extentions.CryptoExtKt;
import com.smedialink.storage.data.utils.system.AndroidActivityHolder;
import com.smedialink.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.smedialink.storage.domain.manager.binancepay.BinancePayManager;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.binancepay.BinanceAuthTokens;
import com.smedialink.storage.domain.model.binancepay.BinancePayAuthType;
import com.smedialink.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.smedialink.storage.domain.model.binancepay.BinanceUserInfo;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.token.TokenOrderType;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.p030rx.event.RxEvent;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import com.smedialink.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.smedialink.utils.helper.binancepay.BinancePayHelper;
import io.reactivex.Observable;
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
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SpreadBuilder;
import kotlin.ranges.RangesKt___RangesKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3286R;
/* compiled from: WalletHomeBinancePayPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayPresenter */
/* loaded from: classes3.dex */
public final class WalletHomeBinancePayPresenter extends BasePresenter<WalletHomeBinancePayView> {
    private final CryptoAccessManager accessManager;
    private List<BinanceTokenBalanceInfo> balances;
    private final BinanceAPI binanceAPI;
    private final BinanceInternalInteractor binanceInternalInteractor;
    private final BinancePayManager binancePayManager;
    private final BinancePayProcessManager binancePayProcessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;

    /* compiled from: WalletHomeBinancePayPresenter.kt */
    /* renamed from: com.smedialink.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayPresenter$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TokenOrderType.values().length];
            try {
                iArr[TokenOrderType.ALPHABET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TokenOrderType.BALANCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TokenOrderType.DEFAULT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public WalletHomeBinancePayPresenter(BinanceAPI binanceAPI, BinancePayProcessManager binancePayProcessManager, RxEventBus rxEventBus, BinanceInternalInteractor binanceInternalInteractor, SchedulersProvider schedulersProvider, CryptoPreferenceHelper cryptoPreferenceHelper, BinancePayManager binancePayManager, CryptoAccessManager accessManager, ResourceManager resourceManager) {
        List<BinanceTokenBalanceInfo> emptyList;
        Intrinsics.checkNotNullParameter(binanceAPI, "binanceAPI");
        Intrinsics.checkNotNullParameter(binancePayProcessManager, "binancePayProcessManager");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(binanceInternalInteractor, "binanceInternalInteractor");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(binancePayManager, "binancePayManager");
        Intrinsics.checkNotNullParameter(accessManager, "accessManager");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.binanceAPI = binanceAPI;
        this.binancePayProcessManager = binancePayProcessManager;
        this.rxEventBus = rxEventBus;
        this.binanceInternalInteractor = binanceInternalInteractor;
        this.schedulersProvider = schedulersProvider;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.binancePayManager = binancePayManager;
        this.accessManager = accessManager;
        this.resourceManager = resourceManager;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.balances = emptyList;
    }

    public final List<BinanceTokenBalanceInfo> getBalances() {
        return this.balances;
    }

    public final void setBalances(List<BinanceTokenBalanceInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.balances = list;
    }

    public final void switchHiddenBalance() {
        CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
        cryptoPreferenceHelper.setCryptoHiddenBalance(!cryptoPreferenceHelper.getCryptoHiddenBalance());
        this.rxEventBus.publish(AppRxEvents.HiddenBalanceSettingChanged.INSTANCE);
    }

    public final void startBinancePayFlow(AndroidActivityHolder holder, String link) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(link, "link");
        if (!BinancePayHelper.isProcessBinancePayUrl(link)) {
            ((WalletHomeBinancePayView) getViewState()).showToast(this.resourceManager.getString(C3286R.string.wallet_binance_pay_scan_qr_error));
        } else {
            this.binancePayProcessManager.loadAndPay(holder, link);
        }
    }

    public final void startBinancePayLoginFlow() {
        ((WalletHomeBinancePayView) getViewState()).showLoginGuideDialog(getLoginGuideDialogModel(), new WalletHomeBinancePayPresenter$startBinancePayLoginFlow$1(this));
    }

    public final void startLogOutFlow() {
        ((WalletHomeBinancePayView) getViewState()).showConfirmLogOutDialog(getLogOutConfirmDialogModel(), new WalletHomeBinancePayPresenter$startLogOutFlow$1(this));
    }

    public final void loadScreenInfo() {
        if (this.binancePayManager.isAuthorized()) {
            getBinanceUserInfo$default(this, false, 1, null);
            getBinanceUserBalances();
            return;
        }
        ((WalletHomeBinancePayView) getViewState()).showRefreshing(false);
    }

    public final void getBinanceUserBalances() {
        if (this.binancePayManager.isAuthorized()) {
            Observable<Result<List<BinanceTokenBalanceInfo>>> observeOn = this.binanceInternalInteractor.getUserBalance().observeOn(this.schedulersProvider.mo707ui());
            final WalletHomeBinancePayPresenter$getBinanceUserBalances$1 walletHomeBinancePayPresenter$getBinanceUserBalances$1 = new WalletHomeBinancePayPresenter$getBinanceUserBalances$1(this);
            Observable<Result<List<BinanceTokenBalanceInfo>>> doFinally = observeOn.doOnSubscribe(new Consumer() { // from class: com.smedialink.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayPresenter$$ExternalSyntheticLambda1
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    WalletHomeBinancePayPresenter.getBinanceUserBalances$lambda$0(Function1.this, obj);
                }
            }).doFinally(new Action() { // from class: com.smedialink.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayPresenter$$ExternalSyntheticLambda0
                @Override // io.reactivex.functions.Action
                public final void run() {
                    WalletHomeBinancePayPresenter.getBinanceUserBalances$lambda$1(WalletHomeBinancePayPresenter.this);
                }
            });
            Intrinsics.checkNotNullExpressionValue(doFinally, "fun getBinanceUserBalanc…     .autoDispose()\n    }");
            Disposable subscribe = doFinally.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2163x7f5177cb(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2164x7f5177cc((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getBinanceUserBalances$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getBinanceUserBalances$lambda$1(WalletHomeBinancePayPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ((WalletHomeBinancePayView) this$0.getViewState()).showRefreshing(false);
    }

    public final TokenOrderType getSelectedTokensOrderType() {
        return this.cryptoPreferenceHelper.getBinanceTokensOrderType();
    }

    public final void setTokensOrderType(TokenOrderType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.cryptoPreferenceHelper.setBinanceTokensOrderType(type);
        renderScreenItems$default(this, false, this.balances, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        BinancePayProcessManager binancePayProcessManager = this.binancePayProcessManager;
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        binancePayProcessManager.attachViewState((BinancePayProcessView) viewState);
        renderScreenItems$default(this, true, null, 2, null);
        listenEvents();
    }

    @Override // com.smedialink.p031ui.base.mvp.base.BasePresenter, moxy.MvpPresenter
    public void onDestroy() {
        this.binancePayProcessManager.onDetachViewState();
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loginToBinancePay() {
        this.binanceAPI.authorize(new OAuthParams(AppConfiguration$Binance.INSTANCE.getAUTH_REDIRECT_URL(), "user:pay,user:email,user:address,user:status,asset:ocbs,asset:balance", CryptoExtKt.randomString()), new BinanceListener() { // from class: com.smedialink.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayPresenter$loginToBinancePay$1
            @Override // com.binance.android.opensdk.api.BinanceListener
            public void onError(int i) {
                ResourceManager resourceManager;
                StringBuilder sb = new StringBuilder();
                resourceManager = WalletHomeBinancePayPresenter.this.resourceManager;
                sb.append(resourceManager.getString(C3286R.string.common_error_unexpected));
                sb.append(" (");
                sb.append(i);
                sb.append(')');
                ((WalletHomeBinancePayView) WalletHomeBinancePayPresenter.this.getViewState()).showToast(sb.toString());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void getAuthTokensByCode(String str) {
        Observable<Result<BinanceAuthTokens>> observeOn = this.binanceInternalInteractor.getAuthTokens(BinancePayAuthType.CODE, str).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2161x88e4b599(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2162x88e4b59a((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    static /* synthetic */ void getBinanceUserInfo$default(WalletHomeBinancePayPresenter walletHomeBinancePayPresenter, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        walletHomeBinancePayPresenter.getBinanceUserInfo(z);
    }

    private final void getBinanceUserInfo(boolean z) {
        Observable<Result<BinanceUserInfo>> observeOn = this.binanceInternalInteractor.getUserInfo(z).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2165x207b8962(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2166x207b8963((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final DialogModel getLoginGuideDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3286R.string.wallet_binance_pay_login_title), this.resourceManager.getString(C3286R.string.wallet_binance_pay_login_description), this.resourceManager.getString(C3286R.string.common_cancel), this.resourceManager.getString(C3286R.string.wallet_binance_pay_login_positive_button));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void renderScreenItems$default(WalletHomeBinancePayPresenter walletHomeBinancePayPresenter, boolean z, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        walletHomeBinancePayPresenter.renderScreenItems(z, list);
    }

    private final void renderScreenItems(boolean z, List<BinanceTokenBalanceInfo> list) {
        List listOfNotNull;
        List<BaseNode> mutableList;
        WalletHomeBinancePayView walletHomeBinancePayView = (WalletHomeBinancePayView) getViewState();
        SpreadBuilder spreadBuilder = new SpreadBuilder(4);
        spreadBuilder.add(this.cryptoPreferenceHelper.isBannersVisible() ? initBannerSlides() : null);
        spreadBuilder.add(new HeaderItemWithNetworkSwitcher(this.resourceManager.getString(C3286R.string.wallet_binance_pay_account_header), NetworkType.BINANCE_SMART_CHAIN, false));
        spreadBuilder.add(resolveUserState());
        spreadBuilder.addSpread(resolveBalancesState(z, list));
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(spreadBuilder.toArray(new BaseNode[spreadBuilder.size()]));
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) listOfNotNull);
        walletHomeBinancePayView.render(mutableList);
    }

    private final BaseNode[] resolveBalancesState(boolean z, List<BinanceTokenBalanceInfo> list) {
        double d;
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        List<BinanceTokenBalanceInfo> list2;
        int collectionSizeOrDefault2;
        NoChildNode[] noChildNodeArr;
        List listOfNotNull;
        if (this.binancePayManager.isAuthorized()) {
            WalletCryptoTokensSettingsMetadata binanceTokensSettings = this.cryptoPreferenceHelper.getBinanceTokensSettings();
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = list.iterator();
            while (true) {
                d = 0.0d;
                boolean z2 = true;
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                BinanceTokenBalanceInfo binanceTokenBalanceInfo = (BinanceTokenBalanceInfo) next;
                if (this.cryptoPreferenceHelper.getBinanceOnlyPositiveTokens() && binanceTokenBalanceInfo.getCombined().getTotal() <= 0.0d) {
                    z2 = false;
                }
                if (z2) {
                    arrayList.add(next);
                }
            }
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
            mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
            LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
            for (Object obj : arrayList) {
                linkedHashMap.put(((BinanceTokenBalanceInfo) obj).getAsset(), obj);
            }
            if (binanceTokensSettings.getStates() != null) {
                List<WalletCryptoTokensSettingsTokenState> states = binanceTokensSettings.getStates();
                ArrayList<WalletCryptoTokensSettingsTokenState> arrayList2 = new ArrayList();
                for (Object obj2 : states) {
                    if (((WalletCryptoTokensSettingsTokenState) obj2).isEnabled()) {
                        arrayList2.add(obj2);
                    }
                }
                list2 = new ArrayList<>();
                for (WalletCryptoTokensSettingsTokenState walletCryptoTokensSettingsTokenState : arrayList2) {
                    BinanceTokenBalanceInfo binanceTokenBalanceInfo2 = (BinanceTokenBalanceInfo) linkedHashMap.get(walletCryptoTokensSettingsTokenState.getToken());
                    if (binanceTokenBalanceInfo2 != null) {
                        list2.add(binanceTokenBalanceInfo2);
                    }
                }
            } else {
                list2 = list;
            }
            int i = WhenMappings.$EnumSwitchMapping$0[this.cryptoPreferenceHelper.getBinanceTokensOrderType().ordinal()];
            if (i == 1) {
                list2 = CollectionsKt___CollectionsKt.sortedWith(list2, new Comparator() { // from class: com.smedialink.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayPresenter$resolveBalancesState$$inlined$sortedBy$1
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        int compareValues;
                        String assetName = ((BinanceTokenBalanceInfo) t).getAssetName();
                        Locale locale = Locale.ROOT;
                        String lowerCase = assetName.toLowerCase(locale);
                        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
                        String lowerCase2 = ((BinanceTokenBalanceInfo) t2).getAssetName().toLowerCase(locale);
                        Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(Locale.ROOT)");
                        compareValues = ComparisonsKt__ComparisonsKt.compareValues(lowerCase, lowerCase2);
                        return compareValues;
                    }
                });
            } else if (i == 2) {
                list2 = CollectionsKt___CollectionsKt.sortedWith(list2, new Comparator() { // from class: com.smedialink.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayPresenter$resolveBalancesState$$inlined$sortedByDescending$1
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        int compareValues;
                        compareValues = ComparisonsKt__ComparisonsKt.compareValues(Double.valueOf(((BinanceTokenBalanceInfo) t2).getCombined().getFiatValuation()), Double.valueOf(((BinanceTokenBalanceInfo) t).getCombined().getFiatValuation()));
                        return compareValues;
                    }
                });
            } else if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            if (list2.isEmpty()) {
                GlobalState globalState = z ? GlobalState.Progress.INSTANCE : GlobalState.Empty.Common.INSTANCE;
                NoChildNode[] noChildNodeArr2 = new NoChildNode[2];
                noChildNodeArr2[0] = ((list.isEmpty() ^ true) && list2.isEmpty()) ? new TotalBalanceItem(BitmapDescriptorFactory.HUE_RED) : null;
                noChildNodeArr2[1] = new GlobalStateItem(globalState);
                listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(noChildNodeArr2);
                noChildNodeArr = (NoChildNode[]) listOfNotNull.toArray(new NoChildNode[0]);
            } else {
                SpreadBuilder spreadBuilder = new SpreadBuilder(2);
                for (BinanceTokenBalanceInfo binanceTokenBalanceInfo3 : list2) {
                    d += binanceTokenBalanceInfo3.getCombined().getFiatValuation();
                }
                spreadBuilder.add(new TotalBalanceItem((float) d));
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
                ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault2);
                for (BinanceTokenBalanceInfo binanceTokenBalanceInfo4 : list2) {
                    arrayList3.add(new BinanceBalanceItem(binanceTokenBalanceInfo4));
                }
                spreadBuilder.addSpread(arrayList3.toArray(new BinanceBalanceItem[0]));
                noChildNodeArr = (NoChildNode[]) spreadBuilder.toArray(new NoChildNode[spreadBuilder.size()]);
            }
            SpreadBuilder spreadBuilder2 = new SpreadBuilder(2);
            spreadBuilder2.add(new HeaderItem(this.resourceManager.getString(C3286R.string.wallet_binance_pay_balances_header)));
            spreadBuilder2.addSpread(noChildNodeArr);
            return (BaseNode[]) spreadBuilder2.toArray(new BaseNode[spreadBuilder2.size()]);
        }
        return new BaseNode[0];
    }

    private final BaseNode resolveUserState() {
        BinanceUserInfo user = this.binancePayManager.getUser();
        if (this.binancePayManager.isAuthorized() && user != null) {
            return new BinanceAccountItem(user, resolveActions());
        }
        return new CardButtonItem(C3286R.C3289id.binance_pay_link, C3286R.C3288drawable.fork_ic_add_account_40, C3286R.string.wallet_binance_pay_login);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<HorizontalActionButtonItem> resolveActions() {
        List<HorizontalActionButtonItem> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new HorizontalActionButtonItem[]{new HorizontalActionButtonItem(C3286R.C3288drawable.fork_ic_pay_qr_28, C3286R.string.wallet_binance_pay_action_pay, false, new WalletHomeBinancePayPresenter$resolveActions$1(this), 4, null), new HorizontalActionButtonItem(C3286R.C3288drawable.fork_ic_buy_28, C3286R.string.wallet_token_details_action_buy, false, new WalletHomeBinancePayPresenter$resolveActions$2(this), 4, null), new HorizontalActionButtonItem(C3286R.C3288drawable.fork_ic_exchange_27, C3286R.string.wallet_binance_pay_action_convert, false, new WalletHomeBinancePayPresenter$resolveActions$3(this), 4, null), new HorizontalActionButtonItem(C3286R.C3288drawable.fork_ic_transactions_28, C3286R.string.wallet_binance_pay_action_history, false, new WalletHomeBinancePayPresenter$resolveActions$4(this), 4, null)});
        return listOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openReplenishScreen() {
        if (!this.accessManager.isCurrentBlockchainWalletCreated()) {
            ((WalletHomeBinancePayView) getViewState()).showRequiredWalletCreatedDialog();
            return;
        }
        BinanceUserInfo info = this.cryptoPreferenceHelper.getBinanceUserInfo().getInfo();
        boolean z = false;
        if (info != null && !info.isVerified()) {
            z = true;
        }
        if (z) {
            ((WalletHomeBinancePayView) getViewState()).showRequiredVerifyDialog();
        } else {
            ((WalletHomeBinancePayView) getViewState()).openReplenishScreen(this.cryptoPreferenceHelper.getNetworkType());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openConvertScreen() {
        BinanceUserInfo info = this.cryptoPreferenceHelper.getBinanceUserInfo().getInfo();
        if (Intrinsics.areEqual(info != null ? Boolean.valueOf(info.isVerified()) : null, Boolean.FALSE)) {
            ((WalletHomeBinancePayView) getViewState()).showRequiredVerifyDialog();
        } else {
            ((WalletHomeBinancePayView) getViewState()).openConvertScreen();
        }
    }

    private final BaseNode initBannerSlides() {
        List mutableList;
        BannerSlide[] binancePayBanners = BannerSlide.Companion.getBinancePayBanners();
        ArrayList arrayList = new ArrayList(binancePayBanners.length);
        for (BannerSlide bannerSlide : binancePayBanners) {
            arrayList.add(new SlideItem(bannerSlide));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return new BannerItem(mutableList);
    }

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(RxEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2167xc9b19749(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2168xc9b1974a(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final DialogModel getLogOutConfirmDialogModel() {
        ResourceManager resourceManager = this.resourceManager;
        int i = C3286R.string.wallet_binance_logout_confirm_dialog_title;
        return new DialogModel(resourceManager.getString(i), this.resourceManager.getString(C3286R.string.wallet_binance_logout_confirm_dialog_description), this.resourceManager.getString(C3286R.string.common_cancel), this.resourceManager.getString(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logout() {
        BinanceInternalInteractor binanceInternalInteractor = this.binanceInternalInteractor;
        String accessToken = this.binancePayManager.getAccessToken();
        if (accessToken == null) {
            accessToken = "";
        }
        Observable<Result<Boolean>> observeOn = binanceInternalInteractor.logout(accessToken).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2169x9e560893(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2170x9e560894((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }
}
