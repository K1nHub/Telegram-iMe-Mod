package com.iMe.utils.extentions.model.wallet;

import com.iMe.storage.domain.model.billing.CryptoProduct;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3316R;
/* compiled from: CryptoProductExt.kt */
/* loaded from: classes4.dex */
public final class CryptoProductExtKt {

    /* compiled from: CryptoProductExt.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CryptoProduct.values().length];
            try {
                iArr[CryptoProduct.PRODUCT_100.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CryptoProduct.PRODUCT_250.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CryptoProduct.PRODUCT_500.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CryptoProduct.PRODUCT_1000.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[CryptoProduct.PRODUCT_1500.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[CryptoProduct.PRODUCT_CUSTOM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final int getBackgroundColor(CryptoProduct cryptoProduct) {
        Intrinsics.checkNotNullParameter(cryptoProduct, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[cryptoProduct.ordinal()]) {
            case 1:
                return C3316R.C3317color.crypto_product_100;
            case 2:
                return C3316R.C3317color.crypto_product_250;
            case 3:
                return C3316R.C3317color.crypto_product_500;
            case 4:
                return C3316R.C3317color.crypto_product_1000;
            case 5:
                return C3316R.C3317color.crypto_product_1500;
            case 6:
                return C3316R.C3317color.crypto_product_custom;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
