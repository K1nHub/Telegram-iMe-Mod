package com.smedialink.p031ui.wallet.crypto.buy;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.common.AppRxEvents;
import com.smedialink.manager.common.FeatureAvailableManager$Token;
import com.smedialink.mapper.crypto.CryptoQuotesToCryptoBuyItemUiMappingKt;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.wallet.crypto.buy.CryptoBuyFooterItem;
import com.smedialink.model.wallet.crypto.buy.CryptoBuyItem;
import com.smedialink.model.wallet.crypto.simplex.PaymentResult;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.interactor.crypto.simplex.SimplexInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.billing.CryptoProduct;
import com.smedialink.storage.domain.model.crypto.simplex.BuyingCryptoPayment;
import com.smedialink.storage.domain.model.crypto.simplex.BuyingCryptoQuote;
import com.smedialink.storage.domain.model.crypto.simplex.Currency;
import com.smedialink.storage.domain.model.crypto.simplex.DigitalCurrency;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import com.smedialink.utils.formatter.BalanceFormatter;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SpreadBuilder;
import moxy.InjectViewState;
import org.telegram.messenger.C3158R;
import timber.log.Timber;
/* compiled from: BuyCryptoProductPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductPresenter */
/* loaded from: classes3.dex */
public final class BuyCryptoProductPresenter extends BasePresenter<BuyCryptoProductView> {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final TokenCode initTokenCode;
    private String lastUsedOrderId;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private final SimplexInteractor simplexInteractor;
    private final Lazy tokenCode$delegate;
    private final Lazy tokenInfo$delegate;

    public BuyCryptoProductPresenter(TokenCode initTokenCode, SimplexInteractor simplexInteractor, ResourceManager resourceManager, CryptoPreferenceHelper cryptoPreferenceHelper, SchedulersProvider schedulersProvider, RxEventBus rxEventBus) {
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(initTokenCode, "initTokenCode");
        Intrinsics.checkNotNullParameter(simplexInteractor, "simplexInteractor");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        this.initTokenCode = initTokenCode;
        this.simplexInteractor = simplexInteractor;
        this.resourceManager = resourceManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.schedulersProvider = schedulersProvider;
        this.rxEventBus = rxEventBus;
        lazy = LazyKt__LazyJVMKt.lazy(new BuyCryptoProductPresenter$tokenCode$2(this));
        this.tokenCode$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new BuyCryptoProductPresenter$tokenInfo$2(this));
        this.tokenInfo$delegate = lazy2;
        this.lastUsedOrderId = resourceManager.getString(C3158R.string.common_dash);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TokenCode getTokenCode() {
        return (TokenCode) this.tokenCode$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TokenInfo getTokenInfo() {
        return (TokenInfo) this.tokenInfo$delegate.getValue();
    }

    public final DialogModel getInformationDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3158R.string.wallet_crypto_buy_information_dialog_title), this.resourceManager.getString(C3158R.string.wallet_crypto_buy_information_dialog_description), null, this.resourceManager.getString(C3158R.string.common_ok), 4, null);
    }

    public final void loadAvailableProducts() {
        Observable doFinally = SimplexInteractor.getAllAvailablePurchasesQuotes$default(this.simplexInteractor, null, DigitalCurrency.Companion.map(getTokenCode()), this.cryptoPreferenceHelper.getNetworkType(), 1, null).observeOn(this.schedulersProvider.mo707ui()).doOnSubscribe(new Consumer() { // from class: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                BuyCryptoProductPresenter.m1577loadAvailableProducts$lambda0(BuyCryptoProductPresenter.this, (Disposable) obj);
            }
        }).doFinally(new Action() { // from class: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                BuyCryptoProductPresenter.m1578loadAvailableProducts$lambda1(BuyCryptoProductPresenter.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "simplexInteractor\n      …owRefreshLoading(false) }");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = doFinally.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductPresenter$loadAvailableProducts$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                TokenInfo tokenInfo;
                List sortedWith;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    tokenInfo = BuyCryptoProductPresenter.this.getTokenInfo();
                    sortedWith = CollectionsKt___CollectionsKt.sortedWith(CryptoQuotesToCryptoBuyItemUiMappingKt.mapToUI((List) ((Result.Success) result).getData(), tokenInfo), new Comparator() { // from class: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductPresenter$loadAvailableProducts$lambda-3$$inlined$sortedBy$1
                        @Override // java.util.Comparator
                        public final int compare(T t, T t2) {
                            int compareValues;
                            compareValues = ComparisonsKt__ComparisonsKt.compareValues(((CryptoBuyItem) t).getProduct(), ((CryptoBuyItem) t2).getProduct());
                            return compareValues;
                        }
                    });
                    Object[] array = sortedWith.toArray(new CryptoBuyItem[0]);
                    Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                    BuyCryptoProductPresenter.this.setupUiItems((CryptoBuyItem[]) array);
                } else if (result instanceof Result.Error) {
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = BuyCryptoProductPresenter.this.resourceManager;
                    ((BuyCryptoProductView) BuyCryptoProductPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductPresenter$loadAvailableProducts$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView2.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadAvailableProducts$lambda-0  reason: not valid java name */
    public static final void m1577loadAvailableProducts$lambda0(BuyCryptoProductPresenter this$0, Disposable disposable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ((BuyCryptoProductView) this$0.getViewState()).showRefreshLoading(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadAvailableProducts$lambda-1  reason: not valid java name */
    public static final void m1578loadAvailableProducts$lambda1(BuyCryptoProductPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ((BuyCryptoProductView) this$0.getViewState()).showRefreshLoading(false);
    }

    public final void purchase(float f, Currency currency) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        Observable observeOn = SimplexInteractor.purchase$default(this.simplexInteractor, null, DigitalCurrency.Companion.map(getTokenCode()), f, currency, this.cryptoPreferenceHelper.getNetworkType(), 1, null).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "simplexInteractor\n      …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductPresenter$purchase$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    Result.Success success = (Result.Success) result;
                    BuyCryptoProductPresenter.this.lastUsedOrderId = ((BuyingCryptoPayment) success.getData()).getOrderId();
                    ((BuyCryptoProductView) BuyCryptoProductPresenter.this.getViewState()).showProcessingUrl(((BuyingCryptoPayment) success.getData()).getHtml());
                } else if (result instanceof Result.Error) {
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = BuyCryptoProductPresenter.this.resourceManager;
                    ((BuyCryptoProductView) BuyCryptoProductPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductPresenter$purchase$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView2.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void purchase(CryptoBuyItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        BuyingCryptoQuote quote = item.getQuote();
        if (quote == null) {
            return;
        }
        Observable observeOn = SimplexInteractor.purchase$default(this.simplexInteractor, null, DigitalCurrency.Companion.map(getTokenCode()), quote.getCryptoMoneyAmount(), (int) quote.getFiatMoneyAmount(), quote.getQuoteId(), this.cryptoPreferenceHelper.getNetworkType(), 1, null).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "simplexInteractor\n      …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductPresenter$purchase$lambda-6$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    Result.Success success = (Result.Success) result;
                    BuyCryptoProductPresenter.this.lastUsedOrderId = ((BuyingCryptoPayment) success.getData()).getOrderId();
                    ((BuyCryptoProductView) BuyCryptoProductPresenter.this.getViewState()).showProcessingUrl(((BuyingCryptoPayment) success.getData()).getHtml());
                } else if (result instanceof Result.Error) {
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = BuyCryptoProductPresenter.this.resourceManager;
                    ((BuyCryptoProductView) BuyCryptoProductPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductPresenter$purchase$lambda-6$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView2.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void processPaymentResult(PaymentResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (Intrinsics.areEqual(result, PaymentResult.Success.INSTANCE)) {
            ((BuyCryptoProductView) getViewState()).showSuccessPurchase();
            this.rxEventBus.publish(AppRxEvents.UpdateWalletScreen.INSTANCE);
        } else if (Intrinsics.areEqual(result, PaymentResult.Failed.INSTANCE)) {
            ((BuyCryptoProductView) getViewState()).showErrorPurchase(this.lastUsedOrderId);
            resetOrderIdToDefault();
        }
    }

    public final void prepareConfirmDialog(CryptoBuyItem cryptoBuyItem, CryptoBuyItem selectedItem) {
        Intrinsics.checkNotNullParameter(selectedItem, "selectedItem");
        if (selectedItem.getProduct().isCustom()) {
            if ((cryptoBuyItem == null ? null : cryptoBuyItem.getQuote()) != null) {
                ((BuyCryptoProductView) getViewState()).openCustomPriceDialog(cryptoBuyItem);
                return;
            }
        }
        if (selectedItem.getQuote() != null) {
            ((BuyCryptoProductView) getViewState()).showConfirmDialog(selectedItem, getConfirmationDialogModel(selectedItem));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        setupUiItems(getDefaultProducts());
        loadAvailableProducts();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TokenCode resolveSupportedTokenCode(TokenCode tokenCode) {
        return FeatureAvailableManager$Token.INSTANCE.isPurchaseViaSimplexAvailable(tokenCode, this.cryptoPreferenceHelper.getNetworkType()) ? tokenCode : TokenCode.ETHER;
    }

    private final DialogModel getConfirmationDialogModel(CryptoBuyItem cryptoBuyItem) {
        return new DialogModel(this.resourceManager.getString(C3158R.string.wallet_crypto_buy_confirm_dialog_title), this.resourceManager.getString(C3158R.string.wallet_crypto_buy_confirm_dialog_description, getBuyingAmount(cryptoBuyItem), this.resourceManager.getString(getTokenInfo().getShortName())), this.resourceManager.getString(C3158R.string.common_cancel), this.resourceManager.getString(C3158R.string.wallet_crypto_buy_confirm_dialog_action_txt));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupUiItems(CryptoBuyItem[] cryptoBuyItemArr) {
        List<BaseNode> mutableListOf;
        SpreadBuilder spreadBuilder = new SpreadBuilder(2);
        spreadBuilder.addSpread(cryptoBuyItemArr);
        spreadBuilder.add(new CryptoBuyFooterItem(C3158R.string.wallet_crypto_buy_footer_title, C3158R.string.wallet_crypto_buy_footer_description));
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(spreadBuilder.toArray(new BaseNode[spreadBuilder.size()]));
        ((BuyCryptoProductView) getViewState()).showUiItems(mutableListOf);
    }

    private final String getBuyingAmount(CryptoBuyItem cryptoBuyItem) {
        return cryptoBuyItem.getQuote() != null ? BalanceFormatter.formatBalance(Float.valueOf(cryptoBuyItem.getQuote().getCryptoMoneyAmount()), getTokenInfo().getDecimals()) : this.resourceManager.getString(C3158R.string.common_dash);
    }

    private final CryptoBuyItem[] getDefaultProducts() {
        CryptoProduct[] values = CryptoProduct.values();
        ArrayList arrayList = new ArrayList(values.length);
        for (CryptoProduct cryptoProduct : values) {
            arrayList.add(new CryptoBuyItem(getTokenInfo(), cryptoProduct, null, 4, null));
        }
        Object[] array = arrayList.toArray(new CryptoBuyItem[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (CryptoBuyItem[]) array;
    }

    private final void resetOrderIdToDefault() {
        this.lastUsedOrderId = this.resourceManager.getString(C3158R.string.common_dash);
    }
}
