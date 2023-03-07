package com.smedialink.p031ui.shop;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import com.smedialink.bots.domain.model.ShopProduct;
import com.smedialink.bots.usecase.AiBotsManager;
import com.smedialink.p031ui.shop.configuration.BillingProvider;
import io.reactivex.Single;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import kotlin.collections.CollectionsKt___CollectionsKt;
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
            Objects.requireNonNull(application, "null cannot be cast to non-null type com.smedialink.ui.shop.configuration.BillingProvider");
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
        this.disposable.add(this.aigramBotsManager.getAvailableSkus().subscribeOn(Schedulers.m694io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.smedialink.ui.shop.PurchaseHelper$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                PurchaseHelper.m1501preloadPurchasesInfo$lambda1(PurchaseHelper.this, (List) obj);
            }
        }, PurchaseHelper$$ExternalSyntheticLambda5.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: preloadPurchasesInfo$lambda-1  reason: not valid java name */
    public static final void m1501preloadPurchasesInfo$lambda1(PurchaseHelper this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (list == null) {
            return;
        }
        loadSkuDetails$default(this$0, list, null, 2, null);
    }

    public final void onActivityResult(int i, int i2, Intent data) {
        Intrinsics.checkNotNullParameter(data, "data");
        UiCheckout uiCheckout = this.uiCheckout;
        if (uiCheckout == null) {
            return;
        }
        uiCheckout.onActivityResult(i, i2, data);
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
        Single<Purchase> doFinally = callback.getSingle().doOnSuccess(new Consumer() { // from class: com.smedialink.ui.shop.PurchaseHelper$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                PurchaseHelper.m1503purchase$lambda6(PurchaseHelper.this, (Purchase) obj);
            }
        }).doOnSubscribe(new Consumer() { // from class: com.smedialink.ui.shop.PurchaseHelper$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                PurchaseHelper.m1504purchase$lambda7(PurchaseHelper.this, (Disposable) obj);
            }
        }).doFinally(new Action() { // from class: com.smedialink.ui.shop.PurchaseHelper$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                PurchaseHelper.m1505purchase$lambda8(PurchaseHelper.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "callback.single.doOnSucc…chaseFlowActive = false }");
        return doFinally;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: purchase$lambda-6  reason: not valid java name */
    public static final void m1503purchase$lambda6(PurchaseHelper this$0, Purchase purchase) {
        Object obj;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Iterator<T> it = this$0.cachedPurchases.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (Intrinsics.areEqual(((ShopProduct) obj).getSku(), purchase.sku)) {
                break;
            }
        }
        ShopProduct shopProduct = (ShopProduct) obj;
        if (shopProduct == null) {
            throw new IllegalStateException("Cannot find product");
        }
        this$0.cachedPurchases.remove(shopProduct);
        List<ShopProduct> list = this$0.cachedPurchases;
        String price = shopProduct.getPrice();
        String price2 = shopProduct.getPrice();
        String str = purchase.orderId;
        Intrinsics.checkNotNullExpressionValue(str, "purchase.orderId");
        String str2 = purchase.packageName;
        Intrinsics.checkNotNullExpressionValue(str2, "purchase.packageName");
        String str3 = purchase.sku;
        Intrinsics.checkNotNullExpressionValue(str3, "purchase.sku");
        long j = purchase.time;
        int i = purchase.state.f1417id;
        String str4 = purchase.token;
        Intrinsics.checkNotNullExpressionValue(str4, "purchase.token");
        list.add(new ShopProduct(price, price2, true, new ShopProduct.Receipt(str, str2, str3, j, i, str4)));
        this$0.storeProductsInfo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: purchase$lambda-7  reason: not valid java name */
    public static final void m1504purchase$lambda7(PurchaseHelper this$0, Disposable disposable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.isPurchaseFlowActive = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: purchase$lambda-8  reason: not valid java name */
    public static final void m1505purchase$lambda8(PurchaseHelper this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.isPurchaseFlowActive = false;
    }

    static /* synthetic */ void loadSkuDetails$default(PurchaseHelper purchaseHelper, List list, String str, int i, Object obj) {
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
            if (uiCheckout == null) {
                return;
            }
            uiCheckout.loadInventory(create, new Inventory.Callback() { // from class: com.smedialink.ui.shop.PurchaseHelper$$ExternalSyntheticLambda7
                @Override // org.solovyev.android.checkout.Inventory.Callback
                public final void onLoaded(Inventory.Products products) {
                    PurchaseHelper.m1500loadSkuDetails$lambda10(str, this, products);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadSkuDetails$lambda-10  reason: not valid java name */
    public static final void m1500loadSkuDetails$lambda10(String productType, PurchaseHelper this$0, Inventory.Products products) {
        Intrinsics.checkNotNullParameter(productType, "$productType");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(products, "products");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Inventory.Product product = products.get(productType);
        Intrinsics.checkNotNullExpressionValue(product, "products[productType]");
        List<Sku> skus = product.getSkus();
        Intrinsics.checkNotNullExpressionValue(skus, "inAppProduct.skus");
        for (Sku sku : skus) {
            String str = sku.f1418id.code;
            Intrinsics.checkNotNullExpressionValue(str, "it.id.code");
            String str2 = sku.price;
            Intrinsics.checkNotNullExpressionValue(str2, "it.price");
            boolean isPurchased = product.isPurchased(sku);
            String str3 = sku.f1418id.code;
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

    private final void storeProductsInfo() {
        this.disposable.add(this.aigramBotsManager.storeActualPurchases(getProducts()).subscribeOn(Schedulers.m694io()).observeOn(AndroidSchedulers.mainThread()).subscribe(PurchaseHelper$$ExternalSyntheticLambda1.INSTANCE, PurchaseHelper$$ExternalSyntheticLambda6.INSTANCE));
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
        if (purchase == null) {
            return null;
        }
        String str2 = purchase.orderId;
        Intrinsics.checkNotNullExpressionValue(str2, "it.orderId");
        String str3 = purchase.packageName;
        Intrinsics.checkNotNullExpressionValue(str3, "it.packageName");
        String str4 = purchase.sku;
        Intrinsics.checkNotNullExpressionValue(str4, "it.sku");
        long j = purchase.time;
        int i = purchase.state.f1417id;
        String str5 = purchase.token;
        Intrinsics.checkNotNullExpressionValue(str5, "it.token");
        return new ShopProduct.Receipt(str2, str3, str4, j, i, str5);
    }
}
