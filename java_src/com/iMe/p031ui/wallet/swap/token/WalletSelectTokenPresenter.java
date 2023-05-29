package com.iMe.p031ui.wallet.swap.token;

import com.iMe.model.wallet.select.SelectableToken;
import com.iMe.model.wallet.select.SelectableTokenItem;
import com.iMe.model.wallet.select.SelectableType;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
/* compiled from: WalletSelectTokenPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter */
/* loaded from: classes4.dex */
public final class WalletSelectTokenPresenter extends BasePresenter<WalletSelectTokenView> {
    private final BinanceInternalInteractor binanceInternalInteractor;
    private final NetworkType networkType;
    private final boolean onlyPositiveBalance;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final SelectableToken selectedToken;
    private final List<SelectableToken> supportedTokens;
    private final Lazy supportedTokensItemsMap$delegate;
    private final SelectableType type;
    private final WalletInteractor walletInteractor;

    /* compiled from: WalletSelectTokenPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$WhenMappings */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SelectableType.values().length];
            try {
                iArr[SelectableType.INTERNAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SelectableType.BINANCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public WalletSelectTokenPresenter(SelectableType type, SelectableToken selectableToken, List<? extends SelectableToken> supportedTokens, NetworkType networkType, boolean z, WalletInteractor walletInteractor, BinanceInternalInteractor binanceInternalInteractor, SchedulersProvider schedulersProvider, ResourceManager resourceManager) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(supportedTokens, "supportedTokens");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(walletInteractor, "walletInteractor");
        Intrinsics.checkNotNullParameter(binanceInternalInteractor, "binanceInternalInteractor");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.type = type;
        this.selectedToken = selectableToken;
        this.supportedTokens = supportedTokens;
        this.networkType = networkType;
        this.onlyPositiveBalance = z;
        this.walletInteractor = walletInteractor;
        this.binanceInternalInteractor = binanceInternalInteractor;
        this.schedulersProvider = schedulersProvider;
        this.resourceManager = resourceManager;
        lazy = LazyKt__LazyJVMKt.lazy(new WalletSelectTokenPresenter$supportedTokensItemsMap$2(this));
        this.supportedTokensItemsMap$delegate = lazy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Map<String, SelectableTokenItem> getSupportedTokensItemsMap() {
        return (Map) this.supportedTokensItemsMap$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        loadBalances();
    }

    private final void loadBalances() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()];
        if (i == 1) {
            loadInternalBalances();
        } else if (i != 2) {
        } else {
            loadBinanceBalances();
        }
    }

    private final void loadBinanceBalances() {
        Observable<Result<List<BinanceTokenBalanceInfo>>> observeOn = this.binanceInternalInteractor.getUserBalance().observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2401xe8a4a06a(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2402xe8a4a06b((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void loadInternalBalances() {
        Observable<Result<List<TokenBalance>>> observeOn = this.walletInteractor.getWalletBalance(false, this.networkType).distinctUntilChanged().observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2403x58d117dd(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2404x58d117de((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<SelectableTokenItem> withExcludedSelectedToken(List<SelectableTokenItem> list) {
        List sortedWith;
        List<SelectableTokenItem> sortedWith2;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            String id = ((SelectableTokenItem) obj).getToken().getId();
            SelectableToken selectableToken = this.selectedToken;
            if (!Intrinsics.areEqual(id, selectableToken != null ? selectableToken.getId() : null)) {
                arrayList.add(obj);
            }
        }
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$withExcludedSelectedToken$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(((SelectableTokenItem) t).getToken().getName(), ((SelectableTokenItem) t2).getToken().getName());
                return compareValues;
            }
        });
        sortedWith2 = CollectionsKt___CollectionsKt.sortedWith(sortedWith, new Comparator() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$withExcludedSelectedToken$$inlined$sortedByDescending$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                TokenCode.Companion companion = TokenCode.Companion;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Boolean.valueOf(companion.map(((SelectableTokenItem) t2).getToken().getTicker()).isLime()), Boolean.valueOf(companion.map(((SelectableTokenItem) t).getToken().getTicker()).isLime()));
                return compareValues;
            }
        });
        return sortedWith2;
    }
}
