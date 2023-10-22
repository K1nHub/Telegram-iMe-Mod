package com.iMe.storage.domain.model.crypto.cryptobox;

import com.iMe.storage.R$string;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxOrderType.kt */
/* loaded from: classes3.dex */
public enum CryptoBoxOrderType {
    BIGGEST(R$string.cryptoboxes_order_biggest),
    NEWEST(R$string.cryptoboxes_order_newest);
    
    public static final Companion Companion = new Companion(null);
    private final int textResId;

    CryptoBoxOrderType(int i) {
        this.textResId = i;
    }

    public final int getTextResId() {
        return this.textResId;
    }

    /* compiled from: CryptoBoxOrderType.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CryptoBoxOrderType map(String str) {
            CryptoBoxOrderType cryptoBoxOrderType;
            CryptoBoxOrderType[] values = CryptoBoxOrderType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    cryptoBoxOrderType = null;
                    break;
                }
                cryptoBoxOrderType = values[i];
                if (Intrinsics.areEqual(cryptoBoxOrderType.name(), str)) {
                    break;
                }
                i++;
            }
            return cryptoBoxOrderType == null ? CryptoBoxOrderType.NEWEST : cryptoBoxOrderType;
        }

        public final CryptoBoxOrderType mapByOrdinal(int i) {
            CryptoBoxOrderType cryptoBoxOrderType;
            CryptoBoxOrderType[] values = CryptoBoxOrderType.values();
            int length = values.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    cryptoBoxOrderType = null;
                    break;
                }
                cryptoBoxOrderType = values[i2];
                if (cryptoBoxOrderType.ordinal() == i) {
                    break;
                }
                i2++;
            }
            return cryptoBoxOrderType == null ? CryptoBoxOrderType.NEWEST : cryptoBoxOrderType;
        }
    }
}
