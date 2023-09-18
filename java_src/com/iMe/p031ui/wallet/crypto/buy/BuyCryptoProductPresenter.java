package com.iMe.p031ui.wallet.crypto.buy;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.mapper.crypto.CryptoQuotesToCryptoBuyItemUiMappingKt;
import com.iMe.model.wallet.crypto.buy.CryptoBuyFooterItem;
import com.iMe.model.wallet.crypto.buy.CryptoBuyItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.interactor.crypto.simplex.SimplexInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.billing.CryptoProduct;
import com.iMe.storage.domain.model.crypto.simplex.BuyingCryptoQuote;
import com.iMe.storage.domain.model.crypto.simplex.DigitalCurrency;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SpreadBuilder;
import moxy.InjectViewState;
import org.telegram.messenger.C3473R;
import timber.log.Timber;
/* compiled from: BuyCryptoProductPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductPresenter */
/* loaded from: classes6.dex */
public final class BuyCryptoProductPresenter extends BasePresenter<BuyCryptoProductView> {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final TokenDetailed initToken;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final SimplexInteractor simplexInteractor;

    public BuyCryptoProductPresenter(TokenDetailed tokenDetailed, SimplexInteractor simplexInteractor, ResourceManager resourceManager, CryptoPreferenceHelper cryptoPreferenceHelper, SchedulersProvider schedulersProvider, RxEventBus rxEventBus) {
        Intrinsics.checkNotNullParameter(simplexInteractor, "simplexInteractor");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        this.initToken = tokenDetailed;
        this.simplexInteractor = simplexInteractor;
        this.resourceManager = resourceManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.schedulersProvider = schedulersProvider;
        resourceManager.getString(C3473R.string.common_dash);
    }

    public final void loadAvailableProducts() {
        TokenDetailed tokenDetailed = this.initToken;
        if (tokenDetailed == null) {
            return;
        }
        Observable observeOn = SimplexInteractor.getAllAvailablePurchasesQuotes$default(this.simplexInteractor, null, DigitalCurrency.Companion.map(tokenDetailed.getTicker()), this.cryptoPreferenceHelper.getNetworkId(), 1, null).observeOn(this.schedulersProvider.mo716ui());
        final Function1<Disposable, Unit> function1 = new Function1<Disposable, Unit>() { // from class: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductPresenter$loadAvailableProducts$1
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
                ((BuyCryptoProductView) BuyCryptoProductPresenter.this.getViewState()).showRefreshLoading(true);
            }
        };
        Observable doFinally = observeOn.doOnSubscribe(new Consumer() { // from class: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                BuyCryptoProductPresenter.loadAvailableProducts$lambda$0(Function1.this, obj);
            }
        }).doFinally(new Action() { // from class: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                BuyCryptoProductPresenter.loadAvailableProducts$lambda$1(BuyCryptoProductPresenter.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "fun loadAvailableProduct…     .autoDispose()\n    }");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = doFinally.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<BuyingCryptoQuote>>, Unit>() { // from class: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductPresenter$loadAvailableProducts$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<BuyingCryptoQuote>> result) {
                m1429invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1429invoke(Result<? extends List<BuyingCryptoQuote>> it) {
                ResourceManager resourceManager;
                TokenDetailed tokenDetailed2;
                List sortedWith;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<BuyingCryptoQuote>> result = it;
                if (result instanceof Result.Success) {
                    tokenDetailed2 = BuyCryptoProductPresenter.this.initToken;
                    sortedWith = CollectionsKt___CollectionsKt.sortedWith(CryptoQuotesToCryptoBuyItemUiMappingKt.mapToUI((List) ((Result.Success) result).getData(), tokenDetailed2), new Comparator() { // from class: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductPresenter$loadAvailableProducts$lambda$3$$inlined$sortedBy$1
                        @Override // java.util.Comparator
                        public final int compare(T t, T t2) {
                            int compareValues;
                            compareValues = ComparisonsKt__ComparisonsKt.compareValues(((CryptoBuyItem) t).getProduct(), ((CryptoBuyItem) t2).getProduct());
                            return compareValues;
                        }
                    });
                    BuyCryptoProductPresenter.this.setupUiItems((CryptoBuyItem[]) sortedWith.toArray(new CryptoBuyItem[0]));
                } else if (result instanceof Result.Error) {
                    resourceManager = BuyCryptoProductPresenter.this.resourceManager;
                    ((BuyCryptoProductView) BuyCryptoProductPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductPresenter$loadAvailableProducts$$inlined$subscribeWithErrorHandle$default$2
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
    public static final void loadAvailableProducts$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadAvailableProducts$lambda$1(BuyCryptoProductPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ((BuyCryptoProductView) this$0.getViewState()).showRefreshLoading(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        setupUiItems(getDefaultProducts());
        loadAvailableProducts();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupUiItems(CryptoBuyItem[] cryptoBuyItemArr) {
        List<BaseNode> mutableListOf;
        SpreadBuilder spreadBuilder = new SpreadBuilder(2);
        spreadBuilder.addSpread(cryptoBuyItemArr);
        spreadBuilder.add(new CryptoBuyFooterItem(C3473R.string.wallet_crypto_buy_footer_title, C3473R.string.wallet_crypto_buy_footer_description));
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(spreadBuilder.toArray(new BaseNode[spreadBuilder.size()]));
        ((BuyCryptoProductView) getViewState()).showUiItems(mutableListOf);
    }

    private final CryptoBuyItem[] getDefaultProducts() {
        CryptoProduct[] values = CryptoProduct.values();
        ArrayList arrayList = new ArrayList(values.length);
        for (CryptoProduct cryptoProduct : values) {
            arrayList.add(new CryptoBuyItem(this.initToken, cryptoProduct, null, 4, null));
        }
        return (CryptoBuyItem[]) arrayList.toArray(new CryptoBuyItem[0]);
    }
}
