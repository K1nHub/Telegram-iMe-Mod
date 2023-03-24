package com.smedialink.p031ui.shop;

import com.smedialink.bots.domain.model.ShopProduct;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.solovyev.android.checkout.Purchase;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PurchaseHelper.kt */
/* renamed from: com.smedialink.ui.shop.PurchaseHelper$purchase$2 */
/* loaded from: classes3.dex */
public final class PurchaseHelper$purchase$2 extends Lambda implements Function1<Purchase, Unit> {
    final /* synthetic */ PurchaseHelper this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseHelper$purchase$2(PurchaseHelper purchaseHelper) {
        super(1);
        this.this$0 = purchaseHelper;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Purchase purchase) {
        invoke2(purchase);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Purchase purchase) {
        List list;
        Object obj;
        List list2;
        List list3;
        list = this.this$0.cachedPurchases;
        Iterator it = list.iterator();
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
        if (shopProduct != null) {
            list2 = this.this$0.cachedPurchases;
            list2.remove(shopProduct);
            list3 = this.this$0.cachedPurchases;
            String price = shopProduct.getPrice();
            String price2 = shopProduct.getPrice();
            String str = purchase.orderId;
            Intrinsics.checkNotNullExpressionValue(str, "purchase.orderId");
            String str2 = purchase.packageName;
            Intrinsics.checkNotNullExpressionValue(str2, "purchase.packageName");
            String str3 = purchase.sku;
            Intrinsics.checkNotNullExpressionValue(str3, "purchase.sku");
            long j = purchase.time;
            int i = purchase.state.f1423id;
            String str4 = purchase.token;
            Intrinsics.checkNotNullExpressionValue(str4, "purchase.token");
            list3.add(new ShopProduct(price, price2, true, new ShopProduct.Receipt(str, str2, str3, j, i, str4)));
            this.this$0.storeProductsInfo();
            return;
        }
        throw new IllegalStateException("Cannot find product");
    }
}
