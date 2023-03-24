package com.smedialink.p031ui.shop;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import com.smedialink.bots.domain.model.ShopProduct;
import com.smedialink.bots.usecase.AiBotsManager;
import com.smedialink.p031ui.shop.configuration.BillingProvider;
import io.reactivex.Completable;
import io.reactivex.Single;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.solovyev.android.checkout.Checkout;
import org.solovyev.android.checkout.Inventory;
import org.solovyev.android.checkout.Purchase;
import org.solovyev.android.checkout.RequestListener;
import org.solovyev.android.checkout.Sku;
import org.solovyev.android.checkout.UiCheckout;
/* compiled from: PurchaseHelper.kt */
/* renamed from: com.smedialink.ui.shop.PurchaseHelper */
/* loaded from: classes3.dex */
public final class PurchaseHelper {
    public static final Companion Companion = new Companion(null);
    private static PurchaseHelper INSTANCE;
    private final AiBotsManager aigramBotsManager;
    private final List<ShopProduct> cachedPurchases;
    private final CompositeDisposable disposable;
    private boolean isPurchaseFlowActive;
    private boolean isPurchaseHelperActive;
    private UiCheckout uiCheckout;

    public /* synthetic */ PurchaseHelper(AiBotsManager aiBotsManager, DefaultConstructorMarker defaultConstructorMarker) {
        this(aiBotsManager);
    }

    private PurchaseHelper(AiBotsManager aiBotsManager) {
        this.aigramBotsManager = aiBotsManager;
        this.cachedPurchases = new ArrayList();
        this.disposable = new CompositeDisposable();
    }

    public final List<ShopProduct> getProducts() {
        return this.cachedPurchases;
    }

    /* compiled from: PurchaseHelper.kt */
    /* renamed from: com.smedialink.ui.shop.PurchaseHelper$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final PurchaseHelper getInstance(AiBotsManager aigramBotsManager) {
            Intrinsics.checkNotNullParameter(aigramBotsManager, "aigramBotsManager");
            if (PurchaseHelper.INSTANCE == null) {
                PurchaseHelper.INSTANCE = new PurchaseHelper(aigramBotsManager, null);
            }
            PurchaseHelper purchaseHelper = PurchaseHelper.INSTANCE;
            Intrinsics.checkNotNull(purchaseHelper);
            return purchaseHelper;
        }
    }

    public final void initWith(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (this.uiCheckout == null) {
            Application application = activity.getApplication();
            Intrinsics.checkNotNull(application, "null cannot be cast to non-null type com.smedialink.ui.shop.configuration.BillingProvider");
            this.uiCheckout = Checkout.forActivity(activity, ((BillingProvider) application).provideBilling());
        }
    }

    public final void start() {
        if (this.isPurchaseHelperActive) {
            return;
        }
        UiCheckout uiCheckout = this.uiCheckout;
        if (uiCheckout != null) {
            uiCheckout.start();
        }
        this.isPurchaseHelperActive = true;
    }

    public final void preloadPurchasesInfo() {
        Single<List<String>> observeOn = this.aigramBotsManager.getAvailableSkus().subscribeOn(Schedulers.m693io()).observeOn(AndroidSchedulers.mainThread());
        final PurchaseHelper$preloadPurchasesInfo$1 purchaseHelper$preloadPurchasesInfo$1 = new PurchaseHelper$preloadPurchasesInfo$1(this);
        Consumer<? super List<String>> consumer = new Consumer() { // from class: com.smedialink.ui.shop.PurchaseHelper$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                PurchaseHelper.preloadPurchasesInfo$lambda$0(Function1.this, obj);
            }
        };
        final PurchaseHelper$preloadPurchasesInfo$2 purchaseHelper$preloadPurchasesInfo$2 = PurchaseHelper$preloadPurchasesInfo$2.INSTANCE;
        this.disposable.add(observeOn.subscribe(consumer, new Consumer() { // from class: com.smedialink.ui.shop.PurchaseHelper$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                PurchaseHelper.preloadPurchasesInfo$lambda$1(Function1.this, obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void preloadPurchasesInfo$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void preloadPurchasesInfo$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public final void onActivityResult(int i, int i2, Intent data) {
        Intrinsics.checkNotNullParameter(data, "data");
        UiCheckout uiCheckout = this.uiCheckout;
        if (uiCheckout != null) {
            uiCheckout.onActivityResult(i, i2, data);
        }
    }

    public final Single<Purchase> purchase(String skuId) {
        UiCheckout uiCheckout;
        Intrinsics.checkNotNullParameter(skuId, "skuId");
        if (this.isPurchaseFlowActive && (uiCheckout = this.uiCheckout) != null) {
            uiCheckout.destroyPurchaseFlow();
        }
        if (skuId.length() == 0) {
            Single<Purchase> error = Single.error(new Exception("sku can't be empty"));
            Intrinsics.checkNotNullExpressionValue(error, "error(Exception(\"sku can't be empty\"))");
            return error;
        }
        Callback callback = new Callback();
        UiCheckout uiCheckout2 = this.uiCheckout;
        if (uiCheckout2 != null) {
            uiCheckout2.startPurchaseFlow("inapp", skuId, null, callback);
        }
        Single<Purchase> single = callback.getSingle();
        final PurchaseHelper$purchase$2 purchaseHelper$purchase$2 = new PurchaseHelper$purchase$2(this);
        Single<Purchase> doOnSuccess = single.doOnSuccess(new Consumer() { // from class: com.smedialink.ui.shop.PurchaseHelper$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                PurchaseHelper.purchase$lambda$4(Function1.this, obj);
            }
        });
        final PurchaseHelper$purchase$3 purchaseHelper$purchase$3 = new PurchaseHelper$purchase$3(this);
        Single<Purchase> doFinally = doOnSuccess.doOnSubscribe(new Consumer() { // from class: com.smedialink.ui.shop.PurchaseHelper$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                PurchaseHelper.purchase$lambda$5(Function1.this, obj);
            }
        }).doFinally(new Action() { // from class: com.smedialink.ui.shop.PurchaseHelper$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                PurchaseHelper.purchase$lambda$6(PurchaseHelper.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "fun purchase(skuId: Stri…lowActive = false }\n    }");
        return doFinally;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void purchase$lambda$4(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void purchase$lambda$5(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void purchase$lambda$6(PurchaseHelper this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.isPurchaseFlowActive = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void loadSkuDetails$default(PurchaseHelper purchaseHelper, List list, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "inapp";
        }
        purchaseHelper.loadSkuDetails(list, str);
    }

    private final void loadSkuDetails(List<String> list, final String str) {
        List<String> distinct;
        if (this.isPurchaseHelperActive) {
            Inventory.Request create = Inventory.Request.create();
            Intrinsics.checkNotNullExpressionValue(create, "create()");
            create.loadAllPurchases();
            distinct = CollectionsKt___CollectionsKt.distinct(list);
            create.loadSkus(str, distinct);
            UiCheckout uiCheckout = this.uiCheckout;
            if (uiCheckout != null) {
                uiCheckout.loadInventory(create, new Inventory.Callback() { // from class: com.smedialink.ui.shop.PurchaseHelper$$ExternalSyntheticLambda7
                    @Override // org.solovyev.android.checkout.Inventory.Callback
                    public final void onLoaded(Inventory.Products products) {
                        PurchaseHelper.loadSkuDetails$lambda$8(str, this, products);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadSkuDetails$lambda$8(String productType, PurchaseHelper this$0, Inventory.Products products) {
        Intrinsics.checkNotNullParameter(productType, "$productType");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(products, "products");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Inventory.Product product = products.get(productType);
        Intrinsics.checkNotNullExpressionValue(product, "products[productType]");
        List<Sku> skus = product.getSkus();
        Intrinsics.checkNotNullExpressionValue(skus, "inAppProduct.skus");
        for (Sku sku : skus) {
            String str = sku.f1424id.code;
            Intrinsics.checkNotNullExpressionValue(str, "it.id.code");
            String str2 = sku.price;
            Intrinsics.checkNotNullExpressionValue(str2, "it.price");
            boolean isPurchased = product.isPurchased(sku);
            String str3 = sku.f1424id.code;
            Intrinsics.checkNotNullExpressionValue(str3, "it.id.code");
            List<Purchase> purchases = product.getPurchases();
            Intrinsics.checkNotNullExpressionValue(purchases, "inAppProduct.purchases");
            linkedHashSet.add(new ShopProduct(str, str2, isPurchased, this$0.getReceipt(str3, purchases)));
        }
        this$0.cachedPurchases.clear();
        this$0.cachedPurchases.addAll(linkedHashSet);
        this$0.storeProductsInfo();
    }

    public final void stop() {
        UiCheckout uiCheckout = this.uiCheckout;
        if (uiCheckout != null) {
            uiCheckout.stop();
        }
        this.disposable.clear();
        this.isPurchaseHelperActive = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void storeProductsInfo() {
        Completable observeOn = this.aigramBotsManager.storeActualPurchases(getProducts()).subscribeOn(Schedulers.m693io()).observeOn(AndroidSchedulers.mainThread());
        PurchaseHelper$$ExternalSyntheticLambda1 purchaseHelper$$ExternalSyntheticLambda1 = PurchaseHelper$$ExternalSyntheticLambda1.INSTANCE;
        final PurchaseHelper$storeProductsInfo$2 purchaseHelper$storeProductsInfo$2 = PurchaseHelper$storeProductsInfo$2.INSTANCE;
        this.disposable.add(observeOn.subscribe(purchaseHelper$$ExternalSyntheticLambda1, new Consumer() { // from class: com.smedialink.ui.shop.PurchaseHelper$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                PurchaseHelper.storeProductsInfo$lambda$16(Function1.this, obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void storeProductsInfo$lambda$16(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* compiled from: PurchaseHelper.kt */
    /* renamed from: com.smedialink.ui.shop.PurchaseHelper$Callback */
    /* loaded from: classes3.dex */
    private static final class Callback implements RequestListener<Purchase> {
        private final Single<Purchase> single;
        private final PublishSubject<Purchase> subject;

        public Callback() {
            PublishSubject<Purchase> create = PublishSubject.create();
            Intrinsics.checkNotNullExpressionValue(create, "create()");
            this.subject = create;
            Single<Purchase> firstOrError = create.firstOrError();
            Intrinsics.checkNotNullExpressionValue(firstOrError, "subject.firstOrError()");
            this.single = firstOrError;
        }

        public final Single<Purchase> getSingle() {
            return this.single;
        }

        @Override // org.solovyev.android.checkout.RequestListener
        public void onSuccess(Purchase result) {
            Intrinsics.checkNotNullParameter(result, "result");
            this.subject.onNext(result);
        }

        @Override // org.solovyev.android.checkout.RequestListener
        public void onError(int i, Exception e) {
            Intrinsics.checkNotNullParameter(e, "e");
            this.subject.onError(e);
        }
    }

    private final ShopProduct.Receipt getReceipt(String str, List<Purchase> list) {
        Object obj;
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (Intrinsics.areEqual(((Purchase) obj).sku, str)) {
                break;
            }
        }
        Purchase purchase = (Purchase) obj;
        if (purchase != null) {
            String str2 = purchase.orderId;
            Intrinsics.checkNotNullExpressionValue(str2, "it.orderId");
            String str3 = purchase.packageName;
            Intrinsics.checkNotNullExpressionValue(str3, "it.packageName");
            String str4 = purchase.sku;
            Intrinsics.checkNotNullExpressionValue(str4, "it.sku");
            long j = purchase.time;
            int i = purchase.state.f1423id;
            String str5 = purchase.token;
            Intrinsics.checkNotNullExpressionValue(str5, "it.token");
            return new ShopProduct.Receipt(str2, str3, str4, j, i, str5);
        }
        return null;
    }
}
