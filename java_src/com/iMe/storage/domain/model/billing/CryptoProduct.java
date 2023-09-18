package com.iMe.storage.domain.model.billing;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: CryptoProduct.kt */
/* loaded from: classes4.dex */
public enum CryptoProduct {
    PRODUCT_100(100.0f),
    PRODUCT_250(250.0f),
    PRODUCT_500(500.0f),
    PRODUCT_1000(1000.0f),
    PRODUCT_1500(1500.0f),
    PRODUCT_CUSTOM(-1.0f);
    
    public static final Companion Companion = new Companion(null);
    private final float priceInDollars;

    CryptoProduct(float f) {
        this.priceInDollars = f;
    }

    public final float getPriceInDollars() {
        return this.priceInDollars;
    }

    public final boolean isCustom() {
        return this == PRODUCT_CUSTOM;
    }

    /* compiled from: CryptoProduct.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<CryptoProduct> getAllAvailableProducts() {
            List<CryptoProduct> mutableList;
            CryptoProduct[] values = CryptoProduct.values();
            ArrayList arrayList = new ArrayList();
            for (CryptoProduct cryptoProduct : values) {
                if (!cryptoProduct.isCustom()) {
                    arrayList.add(cryptoProduct);
                }
            }
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
            return mutableList;
        }

        public final CryptoProduct getProductByPrice(float f) {
            CryptoProduct cryptoProduct;
            CryptoProduct[] values = CryptoProduct.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    cryptoProduct = null;
                    break;
                }
                cryptoProduct = values[i];
                if (cryptoProduct.getPriceInDollars() == f) {
                    break;
                }
                i++;
            }
            return cryptoProduct == null ? CryptoProduct.PRODUCT_CUSTOM : cryptoProduct;
        }
    }
}
