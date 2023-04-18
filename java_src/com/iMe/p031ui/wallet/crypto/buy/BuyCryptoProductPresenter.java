package com.iMe.p031ui.wallet.crypto.buy;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.common.AppRxEvents;
import com.iMe.manager.common.FeatureAvailableManager$Token;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.buy.CryptoBuyFooterItem;
import com.iMe.model.wallet.crypto.buy.CryptoBuyItem;
import com.iMe.model.wallet.crypto.simplex.PaymentResult;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.interactor.crypto.simplex.SimplexInteractor;
import com.iMe.storage.domain.model.billing.CryptoProduct;
import com.iMe.storage.domain.model.crypto.simplex.BuyingCryptoQuote;
import com.iMe.storage.domain.model.crypto.simplex.Currency;
import com.iMe.storage.domain.model.crypto.simplex.DigitalCurrency;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p033rx.RxExtKt;
import com.iMe.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.formatter.BalanceFormatter;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SpreadBuilder;
import moxy.InjectViewState;
import org.telegram.messenger.C3242R;
/* compiled from: BuyCryptoProductPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductPresenter */
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
        this.lastUsedOrderId = resourceManager.getString(C3242R.string.common_dash);
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
        return new DialogModel(this.resourceManager.getString(C3242R.string.wallet_crypto_buy_information_dialog_title), this.resourceManager.getString(C3242R.string.wallet_crypto_buy_information_dialog_description), null, this.resourceManager.getString(C3242R.string.common_ok), 4, null);
    }

    public final void loadAvailableProducts() {
        Observable observeOn = SimplexInteractor.getAllAvailablePurchasesQuotes$default(this.simplexInteractor, null, DigitalCurrency.Companion.map(getTokenCode()), this.cryptoPreferenceHelper.getNetworkType(), 1, null).observeOn(this.schedulersProvider.mo693ui());
        final BuyCryptoProductPresenter$loadAvailableProducts$1 buyCryptoProductPresenter$loadAvailableProducts$1 = new BuyCryptoProductPresenter$loadAvailableProducts$1(this);
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
        Disposable subscribe = doFinally.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2081xb529d506(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2082xb529d507((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
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

    public final void purchase(float f, Currency currency) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        Observable observeOn = SimplexInteractor.purchase$default(this.simplexInteractor, null, DigitalCurrency.Companion.map(getTokenCode()), f, currency, this.cryptoPreferenceHelper.getNetworkType(), 1, null).observeOn(this.schedulersProvider.mo693ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "simplexInteractor\n      …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2084x875d3708(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2085x875d3709((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void purchase(CryptoBuyItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        BuyingCryptoQuote quote = item.getQuote();
        if (quote != null) {
            Observable observeOn = SimplexInteractor.purchase$default(this.simplexInteractor, null, DigitalCurrency.Companion.map(getTokenCode()), quote.getCryptoMoneyAmount(), (int) quote.getFiatMoneyAmount(), quote.getQuoteId(), this.cryptoPreferenceHelper.getNetworkType(), 1, null).observeOn(this.schedulersProvider.mo693ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "simplexInteractor\n      …(schedulersProvider.ui())");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Disposable subscribe = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2086x4f19875b(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2087x4f19875c((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
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
            if ((cryptoBuyItem != null ? cryptoBuyItem.getQuote() : null) != null) {
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
        return new DialogModel(this.resourceManager.getString(C3242R.string.wallet_crypto_buy_confirm_dialog_title), this.resourceManager.getString(C3242R.string.wallet_crypto_buy_confirm_dialog_description, getBuyingAmount(cryptoBuyItem), this.resourceManager.getString(getTokenInfo().getShortName())), this.resourceManager.getString(C3242R.string.common_cancel), this.resourceManager.getString(C3242R.string.wallet_crypto_buy_confirm_dialog_action_txt));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupUiItems(CryptoBuyItem[] cryptoBuyItemArr) {
        List<BaseNode> mutableListOf;
        SpreadBuilder spreadBuilder = new SpreadBuilder(2);
        spreadBuilder.addSpread(cryptoBuyItemArr);
        spreadBuilder.add(new CryptoBuyFooterItem(C3242R.string.wallet_crypto_buy_footer_title, C3242R.string.wallet_crypto_buy_footer_description));
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(spreadBuilder.toArray(new BaseNode[spreadBuilder.size()]));
        ((BuyCryptoProductView) getViewState()).showUiItems(mutableListOf);
    }

    private final String getBuyingAmount(CryptoBuyItem cryptoBuyItem) {
        return cryptoBuyItem.getQuote() != null ? BalanceFormatter.formatBalance(Float.valueOf(cryptoBuyItem.getQuote().getCryptoMoneyAmount()), getTokenInfo().getDecimals()) : this.resourceManager.getString(C3242R.string.common_dash);
    }

    private final CryptoBuyItem[] getDefaultProducts() {
        CryptoProduct[] values = CryptoProduct.values();
        ArrayList arrayList = new ArrayList(values.length);
        for (CryptoProduct cryptoProduct : values) {
            arrayList.add(new CryptoBuyItem(getTokenInfo(), cryptoProduct, null, 4, null));
        }
        return (CryptoBuyItem[]) arrayList.toArray(new CryptoBuyItem[0]);
    }

    private final void resetOrderIdToDefault() {
        this.lastUsedOrderId = this.resourceManager.getString(C3242R.string.common_dash);
    }
}
