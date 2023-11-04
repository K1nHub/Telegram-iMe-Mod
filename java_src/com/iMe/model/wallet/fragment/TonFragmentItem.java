package com.iMe.model.wallet.fragment;

import com.iMe.i_staking.response.StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;
import com.iMe.model.common.NoChildNode;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TonFragmentItem.kt */
/* loaded from: classes3.dex */
public abstract class TonFragmentItem extends NoChildNode {
    private final String title;

    public /* synthetic */ TonFragmentItem(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    public String getTitle() {
        return this.title;
    }

    private TonFragmentItem(String str) {
        this.title = str;
    }

    /* compiled from: TonFragmentItem.kt */
    /* renamed from: com.iMe.model.wallet.fragment.TonFragmentItem$Premium */
    /* loaded from: classes3.dex */
    public static final class C1535Premium extends TonFragmentItem {
        private final String discount;
        private final String fiatPrice;
        private final boolean isChecked;
        private final int monthsCount;
        private final double price;
        private final String priceText;

        public final double component1() {
            return this.price;
        }

        public final String component2() {
            return this.priceText;
        }

        public final String component3() {
            return this.fiatPrice;
        }

        public final int component4() {
            return this.monthsCount;
        }

        public final String component5() {
            return this.discount;
        }

        public final boolean component6() {
            return this.isChecked;
        }

        public final C1535Premium copy(double d, String priceText, String fiatPrice, int i, String discount, boolean z) {
            Intrinsics.checkNotNullParameter(priceText, "priceText");
            Intrinsics.checkNotNullParameter(fiatPrice, "fiatPrice");
            Intrinsics.checkNotNullParameter(discount, "discount");
            return new C1535Premium(d, priceText, fiatPrice, i, discount, z);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof C1535Premium) {
                C1535Premium c1535Premium = (C1535Premium) obj;
                return Double.compare(this.price, c1535Premium.price) == 0 && Intrinsics.areEqual(this.priceText, c1535Premium.priceText) && Intrinsics.areEqual(this.fiatPrice, c1535Premium.fiatPrice) && this.monthsCount == c1535Premium.monthsCount && Intrinsics.areEqual(this.discount, c1535Premium.discount) && this.isChecked == c1535Premium.isChecked;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int m1012m = ((((((((StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1012m(this.price) * 31) + this.priceText.hashCode()) * 31) + this.fiatPrice.hashCode()) * 31) + this.monthsCount) * 31) + this.discount.hashCode()) * 31;
            boolean z = this.isChecked;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            return m1012m + i;
        }

        public String toString() {
            return "Premium(price=" + this.price + ", priceText=" + this.priceText + ", fiatPrice=" + this.fiatPrice + ", monthsCount=" + this.monthsCount + ", discount=" + this.discount + ", isChecked=" + this.isChecked + ')';
        }

        public final double getPrice() {
            return this.price;
        }

        public final String getPriceText() {
            return this.priceText;
        }

        public final String getFiatPrice() {
            return this.fiatPrice;
        }

        public final int getMonthsCount() {
            return this.monthsCount;
        }

        public final String getDiscount() {
            return this.discount;
        }

        public final boolean isChecked() {
            return this.isChecked;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C1535Premium(double r3, java.lang.String r5, java.lang.String r6, int r7, java.lang.String r8, boolean r9) {
            /*
                r2 = this;
                java.lang.String r0 = "priceText"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                java.lang.String r0 = "fiatPrice"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
                java.lang.String r0 = "discount"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
                r0 = 0
                java.lang.Object[] r0 = new java.lang.Object[r0]
                java.lang.String r1 = "Months"
                java.lang.String r0 = org.telegram.messenger.LocaleController.formatPluralString(r1, r7, r0)
                java.lang.String r1 = "formatPluralString(\"Months\", monthsCount)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
                r1 = 0
                r2.<init>(r0, r1)
                r2.price = r3
                r2.priceText = r5
                r2.fiatPrice = r6
                r2.monthsCount = r7
                r2.discount = r8
                r2.isChecked = r9
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iMe.model.wallet.fragment.TonFragmentItem.C1535Premium.<init>(double, java.lang.String, java.lang.String, int, java.lang.String, boolean):void");
        }
    }

    /* compiled from: TonFragmentItem.kt */
    /* loaded from: classes3.dex */
    public static final class Product extends TonFragmentItem {
        private final String fiatPrice;
        private final String price;
        private final String priceText;
        private final String subtitle;
        private final String timestamp;
        private final String username;

        public static /* synthetic */ Product copy$default(Product product, String str, String str2, String str3, String str4, String str5, String str6, int i, Object obj) {
            if ((i & 1) != 0) {
                str = product.username;
            }
            if ((i & 2) != 0) {
                str2 = product.price;
            }
            String str7 = str2;
            if ((i & 4) != 0) {
                str3 = product.priceText;
            }
            String str8 = str3;
            if ((i & 8) != 0) {
                str4 = product.fiatPrice;
            }
            String str9 = str4;
            if ((i & 16) != 0) {
                str5 = product.subtitle;
            }
            String str10 = str5;
            if ((i & 32) != 0) {
                str6 = product.timestamp;
            }
            return product.copy(str, str7, str8, str9, str10, str6);
        }

        public final String component1() {
            return this.username;
        }

        public final String component2() {
            return this.price;
        }

        public final String component3() {
            return this.priceText;
        }

        public final String component4() {
            return this.fiatPrice;
        }

        public final String component5() {
            return this.subtitle;
        }

        public final String component6() {
            return this.timestamp;
        }

        public final Product copy(String username, String price, String priceText, String fiatPrice, String subtitle, String timestamp) {
            Intrinsics.checkNotNullParameter(username, "username");
            Intrinsics.checkNotNullParameter(price, "price");
            Intrinsics.checkNotNullParameter(priceText, "priceText");
            Intrinsics.checkNotNullParameter(fiatPrice, "fiatPrice");
            Intrinsics.checkNotNullParameter(subtitle, "subtitle");
            Intrinsics.checkNotNullParameter(timestamp, "timestamp");
            return new Product(username, price, priceText, fiatPrice, subtitle, timestamp);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Product) {
                Product product = (Product) obj;
                return Intrinsics.areEqual(this.username, product.username) && Intrinsics.areEqual(this.price, product.price) && Intrinsics.areEqual(this.priceText, product.priceText) && Intrinsics.areEqual(this.fiatPrice, product.fiatPrice) && Intrinsics.areEqual(this.subtitle, product.subtitle) && Intrinsics.areEqual(this.timestamp, product.timestamp);
            }
            return false;
        }

        public int hashCode() {
            return (((((((((this.username.hashCode() * 31) + this.price.hashCode()) * 31) + this.priceText.hashCode()) * 31) + this.fiatPrice.hashCode()) * 31) + this.subtitle.hashCode()) * 31) + this.timestamp.hashCode();
        }

        public String toString() {
            return "Product(username=" + this.username + ", price=" + this.price + ", priceText=" + this.priceText + ", fiatPrice=" + this.fiatPrice + ", subtitle=" + this.subtitle + ", timestamp=" + this.timestamp + ')';
        }

        public final String getUsername() {
            return this.username;
        }

        public final String getPrice() {
            return this.price;
        }

        public final String getPriceText() {
            return this.priceText;
        }

        public final String getFiatPrice() {
            return this.fiatPrice;
        }

        public final String getSubtitle() {
            return this.subtitle;
        }

        public final String getTimestamp() {
            return this.timestamp;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Product(String username, String price, String priceText, String fiatPrice, String subtitle, String timestamp) {
            super('@' + username, null);
            Intrinsics.checkNotNullParameter(username, "username");
            Intrinsics.checkNotNullParameter(price, "price");
            Intrinsics.checkNotNullParameter(priceText, "priceText");
            Intrinsics.checkNotNullParameter(fiatPrice, "fiatPrice");
            Intrinsics.checkNotNullParameter(subtitle, "subtitle");
            Intrinsics.checkNotNullParameter(timestamp, "timestamp");
            this.username = username;
            this.price = price;
            this.priceText = priceText;
            this.fiatPrice = fiatPrice;
            this.subtitle = subtitle;
            this.timestamp = timestamp;
        }
    }
}
