package com.iMe.bots.domain.model;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ShopProduct.kt */
/* loaded from: classes3.dex */
public final class ShopProduct {
    private final boolean isPurchased;
    private final String price;
    private final Receipt receipt;
    private final String sku;

    public static /* synthetic */ ShopProduct copy$default(ShopProduct shopProduct, String str, String str2, boolean z, Receipt receipt, int i, Object obj) {
        if ((i & 1) != 0) {
            str = shopProduct.sku;
        }
        if ((i & 2) != 0) {
            str2 = shopProduct.price;
        }
        if ((i & 4) != 0) {
            z = shopProduct.isPurchased;
        }
        if ((i & 8) != 0) {
            receipt = shopProduct.receipt;
        }
        return shopProduct.copy(str, str2, z, receipt);
    }

    public final String component1() {
        return this.sku;
    }

    public final String component2() {
        return this.price;
    }

    public final boolean component3() {
        return this.isPurchased;
    }

    public final Receipt component4() {
        return this.receipt;
    }

    public final ShopProduct copy(String sku, String price, boolean z, Receipt receipt) {
        Intrinsics.checkNotNullParameter(sku, "sku");
        Intrinsics.checkNotNullParameter(price, "price");
        return new ShopProduct(sku, price, z, receipt);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ShopProduct) {
            ShopProduct shopProduct = (ShopProduct) obj;
            return Intrinsics.areEqual(this.sku, shopProduct.sku) && Intrinsics.areEqual(this.price, shopProduct.price) && this.isPurchased == shopProduct.isPurchased && Intrinsics.areEqual(this.receipt, shopProduct.receipt);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.sku.hashCode() * 31) + this.price.hashCode()) * 31;
        boolean z = this.isPurchased;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        Receipt receipt = this.receipt;
        return i2 + (receipt == null ? 0 : receipt.hashCode());
    }

    public String toString() {
        return "ShopProduct(sku=" + this.sku + ", price=" + this.price + ", isPurchased=" + this.isPurchased + ", receipt=" + this.receipt + ')';
    }

    public ShopProduct(String sku, String price, boolean z, Receipt receipt) {
        Intrinsics.checkNotNullParameter(sku, "sku");
        Intrinsics.checkNotNullParameter(price, "price");
        this.sku = sku;
        this.price = price;
        this.isPurchased = z;
        this.receipt = receipt;
    }

    public final String getSku() {
        return this.sku;
    }

    public final String getPrice() {
        return this.price;
    }

    public final boolean isPurchased() {
        return this.isPurchased;
    }

    public final Receipt getReceipt() {
        return this.receipt;
    }

    /* compiled from: ShopProduct.kt */
    /* loaded from: classes3.dex */
    public static final class Receipt {
        private final String orderId;
        private final String packageName;
        private final String productId;
        private final int purchaseState;
        private final long purchaseTime;
        private final String purchaseToken;

        public static /* synthetic */ Receipt copy$default(Receipt receipt, String str, String str2, String str3, long j, int i, String str4, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = receipt.orderId;
            }
            if ((i2 & 2) != 0) {
                str2 = receipt.packageName;
            }
            String str5 = str2;
            if ((i2 & 4) != 0) {
                str3 = receipt.productId;
            }
            String str6 = str3;
            if ((i2 & 8) != 0) {
                j = receipt.purchaseTime;
            }
            long j2 = j;
            if ((i2 & 16) != 0) {
                i = receipt.purchaseState;
            }
            int i3 = i;
            if ((i2 & 32) != 0) {
                str4 = receipt.purchaseToken;
            }
            return receipt.copy(str, str5, str6, j2, i3, str4);
        }

        public final String component1() {
            return this.orderId;
        }

        public final String component2() {
            return this.packageName;
        }

        public final String component3() {
            return this.productId;
        }

        public final long component4() {
            return this.purchaseTime;
        }

        public final int component5() {
            return this.purchaseState;
        }

        public final String component6() {
            return this.purchaseToken;
        }

        public final Receipt copy(String orderId, String packageName, String productId, long j, int i, String purchaseToken) {
            Intrinsics.checkNotNullParameter(orderId, "orderId");
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            Intrinsics.checkNotNullParameter(productId, "productId");
            Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
            return new Receipt(orderId, packageName, productId, j, i, purchaseToken);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Receipt) {
                Receipt receipt = (Receipt) obj;
                return Intrinsics.areEqual(this.orderId, receipt.orderId) && Intrinsics.areEqual(this.packageName, receipt.packageName) && Intrinsics.areEqual(this.productId, receipt.productId) && this.purchaseTime == receipt.purchaseTime && this.purchaseState == receipt.purchaseState && Intrinsics.areEqual(this.purchaseToken, receipt.purchaseToken);
            }
            return false;
        }

        public int hashCode() {
            return (((((((((this.orderId.hashCode() * 31) + this.packageName.hashCode()) * 31) + this.productId.hashCode()) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m702m(this.purchaseTime)) * 31) + this.purchaseState) * 31) + this.purchaseToken.hashCode();
        }

        public String toString() {
            return "Receipt(orderId=" + this.orderId + ", packageName=" + this.packageName + ", productId=" + this.productId + ", purchaseTime=" + this.purchaseTime + ", purchaseState=" + this.purchaseState + ", purchaseToken=" + this.purchaseToken + ')';
        }

        public Receipt(String orderId, String packageName, String productId, long j, int i, String purchaseToken) {
            Intrinsics.checkNotNullParameter(orderId, "orderId");
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            Intrinsics.checkNotNullParameter(productId, "productId");
            Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
            this.orderId = orderId;
            this.packageName = packageName;
            this.productId = productId;
            this.purchaseTime = j;
            this.purchaseState = i;
            this.purchaseToken = purchaseToken;
        }

        public final String getOrderId() {
            return this.orderId;
        }

        public final String getPackageName() {
            return this.packageName;
        }

        public final String getProductId() {
            return this.productId;
        }

        public final long getPurchaseTime() {
            return this.purchaseTime;
        }

        public final int getPurchaseState() {
            return this.purchaseState;
        }

        public final String getPurchaseToken() {
            return this.purchaseToken;
        }
    }
}
