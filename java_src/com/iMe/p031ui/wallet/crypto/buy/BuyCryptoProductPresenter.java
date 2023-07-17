package com.iMe.p031ui.wallet.crypto.buy;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.wallet.crypto.buy.CryptoBuyFooterItem;
import com.iMe.model.wallet.crypto.buy.CryptoBuyItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.interactor.crypto.simplex.SimplexInteractor;
import com.iMe.storage.domain.model.billing.CryptoProduct;
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
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SpreadBuilder;
import moxy.InjectViewState;
import org.telegram.messenger.C3417R;
/* compiled from: BuyCryptoProductPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductPresenter */
/* loaded from: classes3.dex */
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
        resourceManager.getString(C3417R.string.common_dash);
    }

    public final void loadAvailableProducts() {
        TokenDetailed tokenDetailed = this.initToken;
        if (tokenDetailed == null) {
            return;
        }
        Observable observeOn = SimplexInteractor.getAllAvailablePurchasesQuotes$default(this.simplexInteractor, null, DigitalCurrency.Companion.map(tokenDetailed.getTicker()), this.cryptoPreferenceHelper.getNetworkId(), 1, null).observeOn(this.schedulersProvider.mo698ui());
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
        Disposable subscribe = doFinally.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2126xb529d506(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2127xb529d507((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
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
        spreadBuilder.add(new CryptoBuyFooterItem(C3417R.string.wallet_crypto_buy_footer_title, C3417R.string.wallet_crypto_buy_footer_description));
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
