package com.iMe.p030ui.wallet.home.tabs.binancepay;

import android.net.Uri;
import com.binance.android.opensdk.api.BinanceAPI;
import com.binance.android.opensdk.api.BinanceListener;
import com.binance.android.opensdk.api.OAuthParams;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.AppRxEvents;
import com.iMe.common.IdFabric$Menu;
import com.iMe.manager.crypto.pay.BinancePayProcessManager;
import com.iMe.manager.crypto.pay.BinancePayProcessView;
import com.iMe.mapper.wallet.NetworkUiMappingKt;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.common.NoChildNode;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.state.GlobalState;
import com.iMe.model.wallet.ItemOptionsModel;
import com.iMe.model.wallet.home.BannerItem;
import com.iMe.model.wallet.home.BannerSlide;
import com.iMe.model.wallet.home.CardButtonItem;
import com.iMe.model.wallet.home.HeaderItem;
import com.iMe.model.wallet.home.HeaderItemWithNetworkSwitcher;
import com.iMe.model.wallet.home.HorizontalActionButtonItem;
import com.iMe.model.wallet.home.SlideItem;
import com.iMe.model.wallet.home.TokenSortingData;
import com.iMe.model.wallet.home.TotalBalanceItem;
import com.iMe.model.wallet.home.pay.BinanceAccountItem;
import com.iMe.model.wallet.home.pay.BinanceBalanceItem;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.common.AppConfiguration$Binance;
import com.iMe.storage.data.locale.prefs.model.TokenDisplaySettings;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.data.utils.extentions.CryptoExtKt;
import com.iMe.storage.data.utils.system.AndroidActivityHolder;
import com.iMe.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.iMe.storage.domain.manager.binancepay.BinancePayManager;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceAuthTokens;
import com.iMe.storage.domain.model.binancepay.BinancePayAuthType;
import com.iMe.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.iMe.storage.domain.model.binancepay.BinanceUserInfo;
import com.iMe.storage.domain.model.wallet.token.TokenOrderType;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p029rx.RxEventBus;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p029rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.p029rx.event.RxEvent;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p031rx.RxExtKt;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.helper.binancepay.BinancePayHelper;
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
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SpreadBuilder;
import kotlin.ranges.RangesKt___RangesKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3632R;
import timber.log.Timber;
/* compiled from: WalletHomeBinancePayPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter */
/* loaded from: classes4.dex */
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
    /* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter$WhenMappings */
    /* loaded from: classes4.dex */
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
        cryptoPreferenceHelper.setBalanceHidden(!cryptoPreferenceHelper.isBalanceHidden());
        renderScreenItems$default(this, false, 1, null);
    }

    public final void startBinancePayFlow(AndroidActivityHolder holder, String link) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(link, "link");
        if (!BinancePayHelper.isProcessBinancePayUrl(link)) {
            ((WalletHomeBinancePayView) getViewState()).showToast(this.resourceManager.getString(C3632R.string.wallet_binance_pay_scan_qr_error));
        } else {
            this.binancePayProcessManager.loadAndPay(holder, link);
        }
    }

    public final void startBinancePayLoginFlow() {
        ((WalletHomeBinancePayView) getViewState()).showLoginGuideDialog(getLoginGuideDialogModel(), new Function0<Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter$startBinancePayLoginFlow$1
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
                WalletHomeBinancePayPresenter.this.loginToBinancePay();
            }
        });
    }

    public final void startLogOutFlow() {
        ((WalletHomeBinancePayView) getViewState()).showConfirmLogOutDialog(getLogOutConfirmDialogModel(), new Function0<Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter$startLogOutFlow$1
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
                WalletHomeBinancePayPresenter.this.logout();
            }
        });
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
            Observable<Result<List<BinanceTokenBalanceInfo>>> observeOn = this.binanceInternalInteractor.getUserBalance().observeOn(this.schedulersProvider.mo1010ui());
            final Function1<Disposable, Unit> function1 = new Function1<Disposable, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter$getBinanceUserBalances$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Disposable disposable) {
                    invoke2(disposable);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(Disposable disposable) {
                    ((WalletHomeBinancePayView) WalletHomeBinancePayPresenter.this.getViewState()).showRefreshing(true);
                }
            };
            Observable<Result<List<BinanceTokenBalanceInfo>>> doFinally = observeOn.doOnSubscribe(new Consumer() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter$$ExternalSyntheticLambda1
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    WalletHomeBinancePayPresenter.getBinanceUserBalances$lambda$0(Function1.this, obj);
                }
            }).doFinally(new Action() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter$$ExternalSyntheticLambda0
                @Override // io.reactivex.functions.Action
                public final void run() {
                    WalletHomeBinancePayPresenter.getBinanceUserBalances$lambda$1(WalletHomeBinancePayPresenter.this);
                }
            });
            Intrinsics.checkNotNullExpressionValue(doFinally, "fun getBinanceUserBalanc…     .autoDispose()\n    }");
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe = doFinally.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends BinanceTokenBalanceInfo>>, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter$getBinanceUserBalances$$inlined$subscribeWithErrorHandle$default$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends BinanceTokenBalanceInfo>> result) {
                    m1747invoke(result);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: collision with other method in class */
                public final void m1747invoke(Result<? extends List<? extends BinanceTokenBalanceInfo>> it) {
                    ResourceManager resourceManager;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result<? extends List<? extends BinanceTokenBalanceInfo>> result = it;
                    if (result instanceof Result.Success) {
                        WalletHomeBinancePayPresenter.this.setBalances((List) ((Result.Success) result).getData());
                        WalletHomeBinancePayPresenter.renderScreenItems$default(WalletHomeBinancePayPresenter.this, false, 1, null);
                    } else if (result instanceof Result.Error) {
                        resourceManager = WalletHomeBinancePayPresenter.this.resourceManager;
                        ((WalletHomeBinancePayView) WalletHomeBinancePayPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                    }
                }
            }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter$getBinanceUserBalances$$inlined$subscribeWithErrorHandle$default$2
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

    public final void onOrderTokensClick() {
        ((WalletHomeBinancePayView) getViewState()).showSelectTokensSortingDialog(new TokenSortingData(this.cryptoPreferenceHelper.getBinanceTokensOrderType(), this.cryptoPreferenceHelper.isBinanceTokensPositiveBalances()));
    }

    public final void setTokensSorting(TokenSortingData tokenSortingData) {
        Intrinsics.checkNotNullParameter(tokenSortingData, "tokenSortingData");
        CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
        cryptoPreferenceHelper.setBinanceTokensOrderType(tokenSortingData.getTokensOrderType());
        cryptoPreferenceHelper.setBinanceTokensPositiveBalances(tokenSortingData.isPositiveBalances());
        renderScreenItems$default(this, false, 1, null);
    }

    public final void onMenuItemClick(int i) {
        if (i == IdFabric$Menu.WALLET_BANNER_DISABLE) {
            hideBanners();
        }
    }

    public final void onItemLongClick() {
        List<ItemOptionsModel> listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(new ItemOptionsModel(IdFabric$Menu.WALLET_BANNER_DISABLE, C3632R.C3634drawable.msg_disable, C3632R.string.wallet_details_menu_hide_banner));
        ((WalletHomeBinancePayView) getViewState()).showMenuItems(listOf);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        BinancePayProcessManager binancePayProcessManager = this.binancePayProcessManager;
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        binancePayProcessManager.attachViewState((BinancePayProcessView) viewState);
        renderScreenItems(true);
        listenEvents();
    }

    @Override // com.iMe.p030ui.base.mvp.base.BasePresenter, moxy.MvpPresenter
    public void onDestroy() {
        this.binancePayProcessManager.onDetachViewState();
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loginToBinancePay() {
        this.binanceAPI.authorize(new OAuthParams(AppConfiguration$Binance.INSTANCE.getAUTH_REDIRECT_URL(), "user:pay,user:email,user:address,user:status,asset:ocbs,asset:balance", CryptoExtKt.randomString()), new BinanceListener() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter$loginToBinancePay$1
            @Override // com.binance.android.opensdk.api.BinanceListener
            public void onError(int i) {
                ResourceManager resourceManager;
                StringBuilder sb = new StringBuilder();
                resourceManager = WalletHomeBinancePayPresenter.this.resourceManager;
                sb.append(resourceManager.getString(C3632R.string.common_error_unexpected));
                sb.append(" (");
                sb.append(i);
                sb.append(')');
                ((WalletHomeBinancePayView) WalletHomeBinancePayPresenter.this.getViewState()).showToast(sb.toString());
            }
        });
    }

    private final void hideBanners() {
        CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
        cryptoPreferenceHelper.setBannersVisible(!cryptoPreferenceHelper.isBannersVisible());
        this.rxEventBus.publish(DomainRxEvents.InterfaceSettingsChanged.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void getAuthTokensByCode(String str) {
        Observable<Result<BinanceAuthTokens>> observeOn = this.binanceInternalInteractor.getAuthTokens(BinancePayAuthType.CODE, str).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends BinanceAuthTokens>, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter$getAuthTokensByCode$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends BinanceAuthTokens> result) {
                m1746invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1746invoke(Result<? extends BinanceAuthTokens> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends BinanceAuthTokens> result = it;
                if (result instanceof Result.Success) {
                    WalletHomeBinancePayPresenter.this.loadScreenInfo();
                } else if (result instanceof Result.Error) {
                    resourceManager = WalletHomeBinancePayPresenter.this.resourceManager;
                    ((WalletHomeBinancePayView) WalletHomeBinancePayPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter$getAuthTokensByCode$$inlined$subscribeWithErrorHandle$default$2
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

    static /* synthetic */ void getBinanceUserInfo$default(WalletHomeBinancePayPresenter walletHomeBinancePayPresenter, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        walletHomeBinancePayPresenter.getBinanceUserInfo(z);
    }

    private final void getBinanceUserInfo(boolean z) {
        Observable<Result<BinanceUserInfo>> observeOn = this.binanceInternalInteractor.getUserInfo(z).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends BinanceUserInfo>, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter$getBinanceUserInfo$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends BinanceUserInfo> result) {
                m1748invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1748invoke(Result<? extends BinanceUserInfo> it) {
                ResourceManager resourceManager;
                List resolveActions;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends BinanceUserInfo> result = it;
                if (result instanceof Result.Success) {
                    resolveActions = WalletHomeBinancePayPresenter.this.resolveActions();
                    ((WalletHomeBinancePayView) WalletHomeBinancePayPresenter.this.getViewState()).showUserInfo(new BinanceAccountItem((BinanceUserInfo) ((Result.Success) result).getData(), resolveActions));
                } else if (result instanceof Result.Error) {
                    resourceManager = WalletHomeBinancePayPresenter.this.resourceManager;
                    ((WalletHomeBinancePayView) WalletHomeBinancePayPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter$getBinanceUserInfo$$inlined$subscribeWithErrorHandle$default$2
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

    private final DialogModel getLoginGuideDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3632R.string.wallet_binance_pay_login_title), this.resourceManager.getString(C3632R.string.wallet_binance_pay_login_description), this.resourceManager.getString(C3632R.string.common_cancel), this.resourceManager.getString(C3632R.string.wallet_binance_pay_login_positive_button));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void renderScreenItems$default(WalletHomeBinancePayPresenter walletHomeBinancePayPresenter, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        walletHomeBinancePayPresenter.renderScreenItems(z);
    }

    private final void renderScreenItems(boolean z) {
        List listOfNotNull;
        List<BaseNode> mutableList;
        WalletHomeBinancePayView walletHomeBinancePayView = (WalletHomeBinancePayView) getViewState();
        SpreadBuilder spreadBuilder = new SpreadBuilder(4);
        spreadBuilder.add(this.cryptoPreferenceHelper.isBannersVisible() ? initBannerSlides() : null);
        spreadBuilder.add(new HeaderItemWithNetworkSwitcher(this.resourceManager.getString(C3632R.string.wallet_binance_pay_account_header), NetworkUiMappingKt.mapToUI(NetworksHelper.getBSCNetwork()), false));
        spreadBuilder.add(resolveUserState());
        spreadBuilder.addSpread(resolveBalancesState(z, this.balances));
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull((Object[]) spreadBuilder.toArray(new BaseNode[spreadBuilder.size()]));
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
            List<TokenDisplaySettings.Binance> binanceTokensSettings = this.cryptoPreferenceHelper.getBinanceTokensSettings();
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
                linkedHashMap.put(((BinanceTokenBalanceInfo) obj).getAssetCode(), obj);
            }
            if (!binanceTokensSettings.isEmpty()) {
                ArrayList<TokenDisplaySettings.Binance> arrayList2 = new ArrayList();
                for (Object obj2 : binanceTokensSettings) {
                    if (((TokenDisplaySettings.Binance) obj2).isVisible()) {
                        arrayList2.add(obj2);
                    }
                }
                list2 = new ArrayList<>();
                for (TokenDisplaySettings.Binance binance : arrayList2) {
                    BinanceTokenBalanceInfo binanceTokenBalanceInfo2 = (BinanceTokenBalanceInfo) linkedHashMap.get(binance.getTokenTicker());
                    if (binanceTokenBalanceInfo2 != null) {
                        list2.add(binanceTokenBalanceInfo2);
                    }
                }
            } else {
                list2 = list;
            }
            if (this.cryptoPreferenceHelper.isBinanceTokensPositiveBalances()) {
                ArrayList arrayList3 = new ArrayList();
                for (Object obj3 : list2) {
                    if (((BinanceTokenBalanceInfo) obj3).getCombined().getTotal() > 0.0d) {
                        arrayList3.add(obj3);
                    }
                }
                list2 = arrayList3;
            }
            int i = WhenMappings.$EnumSwitchMapping$0[this.cryptoPreferenceHelper.getBinanceTokensOrderType().ordinal()];
            if (i == 1) {
                list2 = CollectionsKt___CollectionsKt.sortedWith(list2, new Comparator() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter$resolveBalancesState$$inlined$sortedBy$1
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
                list2 = CollectionsKt___CollectionsKt.sortedWith(list2, new Comparator() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter$resolveBalancesState$$inlined$sortedByDescending$1
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
            boolean isBalanceHidden = this.cryptoPreferenceHelper.isBalanceHidden();
            if (list2.isEmpty()) {
                GlobalState globalState = z ? GlobalState.Progress.INSTANCE : GlobalState.Empty.Common.INSTANCE;
                NoChildNode[] noChildNodeArr2 = new NoChildNode[2];
                noChildNodeArr2[0] = ((list.isEmpty() ^ true) && list2.isEmpty()) ? new TotalBalanceItem((float) BitmapDescriptorFactory.HUE_RED, isBalanceHidden) : null;
                noChildNodeArr2[1] = new GlobalStateItem(globalState);
                listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull((Object[]) noChildNodeArr2);
                noChildNodeArr = (NoChildNode[]) listOfNotNull.toArray(new NoChildNode[0]);
            } else {
                SpreadBuilder spreadBuilder = new SpreadBuilder(2);
                for (BinanceTokenBalanceInfo binanceTokenBalanceInfo3 : list2) {
                    d += binanceTokenBalanceInfo3.getCombined().getFiatValuation();
                }
                spreadBuilder.add(new TotalBalanceItem((float) d, isBalanceHidden));
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
                ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault2);
                for (BinanceTokenBalanceInfo binanceTokenBalanceInfo4 : list2) {
                    arrayList4.add(new BinanceBalanceItem(binanceTokenBalanceInfo4, isBalanceHidden));
                }
                spreadBuilder.addSpread(arrayList4.toArray(new BinanceBalanceItem[0]));
                noChildNodeArr = (NoChildNode[]) spreadBuilder.toArray(new NoChildNode[spreadBuilder.size()]);
            }
            SpreadBuilder spreadBuilder2 = new SpreadBuilder(2);
            spreadBuilder2.add(new HeaderItem(this.resourceManager.getString(C3632R.string.wallet_binance_pay_balances_header)));
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
        return new CardButtonItem(C3632R.C3635id.binance_pay_link, C3632R.C3634drawable.fork_ic_add_account_40, C3632R.string.wallet_binance_pay_login);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<HorizontalActionButtonItem> resolveActions() {
        List<HorizontalActionButtonItem> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new HorizontalActionButtonItem[]{new HorizontalActionButtonItem(C3632R.C3634drawable.fork_ic_pay_qr_28, this.resourceManager.getString(C3632R.string.wallet_binance_pay_action_pay), false, new Function0<Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter$resolveActions$1
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
                ((WalletHomeBinancePayView) WalletHomeBinancePayPresenter.this.getViewState()).openPayScreen();
            }
        }, 4, null), new HorizontalActionButtonItem(C3632R.C3634drawable.fork_ic_buy_28, this.resourceManager.getString(C3632R.string.wallet_token_details_action_buy), false, new Function0<Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter$resolveActions$2
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
                WalletHomeBinancePayPresenter.this.openReplenishScreen();
            }
        }, 4, null), new HorizontalActionButtonItem(C3632R.C3634drawable.fork_ic_exchange_27, this.resourceManager.getString(C3632R.string.wallet_binance_pay_action_convert), false, new Function0<Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter$resolveActions$3
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
                WalletHomeBinancePayPresenter.this.openConvertScreen();
            }
        }, 4, null), new HorizontalActionButtonItem(C3632R.C3634drawable.fork_ic_transactions_28, this.resourceManager.getString(C3632R.string.wallet_binance_pay_action_history), false, new Function0<Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter$resolveActions$4
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
                ((WalletHomeBinancePayView) WalletHomeBinancePayPresenter.this.getViewState()).openHistoryScreen();
            }
        }, 4, null)});
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
            ((WalletHomeBinancePayView) getViewState()).openReplenishScreen(this.cryptoPreferenceHelper.getNetworkId());
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
        BannerSlide.Binance[] banners = BannerSlide.Binance.Companion.getBanners();
        ArrayList arrayList = new ArrayList(banners.length);
        for (BannerSlide.Binance binance : banners) {
            arrayList.add(new SlideItem(binance));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return new BannerItem(mutableList);
    }

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(RxEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n            .o…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<RxEvent, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RxEvent rxEvent) {
                m1749invoke(rxEvent);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1749invoke(RxEvent it) {
                List<BinanceTokenBalanceInfo> emptyList;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                RxEvent rxEvent = it;
                if (rxEvent instanceof AppRxEvents.BinanceAuthHandled) {
                    AppRxEvents.BinanceAuthHandled binanceAuthHandled = (AppRxEvents.BinanceAuthHandled) rxEvent;
                    if (binanceAuthHandled.getIntent() != null) {
                        WalletHomeBinancePayPresenter walletHomeBinancePayPresenter = WalletHomeBinancePayPresenter.this;
                        Uri data = binanceAuthHandled.getIntent().getData();
                        String queryParameter = data != null ? data.getQueryParameter("code") : null;
                        if (queryParameter == null) {
                            queryParameter = "";
                        }
                        walletHomeBinancePayPresenter.getAuthTokensByCode(queryParameter);
                    }
                } else if (rxEvent instanceof DomainRxEvents.BinanceExpiredSession) {
                    WalletHomeBinancePayPresenter walletHomeBinancePayPresenter2 = WalletHomeBinancePayPresenter.this;
                    emptyList = CollectionsKt__CollectionsKt.emptyList();
                    walletHomeBinancePayPresenter2.setBalances(emptyList);
                    WalletHomeBinancePayPresenter.renderScreenItems$default(WalletHomeBinancePayPresenter.this, false, 1, null);
                } else if (rxEvent instanceof DomainRxEvents.InterfaceSettingsChanged) {
                    WalletHomeBinancePayPresenter.renderScreenItems$default(WalletHomeBinancePayPresenter.this, false, 1, null);
                } else if (rxEvent instanceof DomainRxEvents.BinanceTokensSettingsChanged) {
                    WalletHomeBinancePayPresenter.this.loadScreenInfo();
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2
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

    private final DialogModel getLogOutConfirmDialogModel() {
        ResourceManager resourceManager = this.resourceManager;
        int i = C3632R.string.wallet_binance_logout_confirm_dialog_title;
        return new DialogModel(resourceManager.getString(i), this.resourceManager.getString(C3632R.string.wallet_binance_logout_confirm_dialog_description), this.resourceManager.getString(C3632R.string.common_cancel), this.resourceManager.getString(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logout() {
        BinanceInternalInteractor binanceInternalInteractor = this.binanceInternalInteractor;
        String accessToken = this.binancePayManager.getAccessToken();
        if (accessToken == null) {
            accessToken = "";
        }
        Observable<Result<Boolean>> observeOn = binanceInternalInteractor.logout(accessToken).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter$logout$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1750invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1750invoke(Result<? extends Boolean> it) {
                ResourceManager resourceManager;
                List<BinanceTokenBalanceInfo> emptyList;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Boolean> result = it;
                if (result instanceof Result.Success) {
                    WalletHomeBinancePayPresenter walletHomeBinancePayPresenter = WalletHomeBinancePayPresenter.this;
                    emptyList = CollectionsKt__CollectionsKt.emptyList();
                    walletHomeBinancePayPresenter.setBalances(emptyList);
                    WalletHomeBinancePayPresenter.renderScreenItems$default(WalletHomeBinancePayPresenter.this, false, 1, null);
                } else if (result instanceof Result.Error) {
                    resourceManager = WalletHomeBinancePayPresenter.this.resourceManager;
                    ((WalletHomeBinancePayView) WalletHomeBinancePayPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter$logout$$inlined$subscribeWithErrorHandle$default$2
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
}
