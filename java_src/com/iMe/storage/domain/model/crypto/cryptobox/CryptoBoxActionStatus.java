package com.iMe.storage.domain.model.crypto.cryptobox;

import com.iMe.storage.R$string;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxActionStatus.kt */
/* loaded from: classes4.dex */
public enum CryptoBoxActionStatus {
    PENDING(R$string.status_pending),
    CONFIRMED(R$string.status_ok),
    FAILED(R$string.status_error);
    
    public static final Companion Companion = new Companion(null);
    private final int titleResId;

    public static final CryptoBoxActionStatus map(String str) {
        return Companion.map(str);
    }

    CryptoBoxActionStatus(int i) {
        this.titleResId = i;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }

    /* compiled from: CryptoBoxActionStatus.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CryptoBoxActionStatus map(String type) {
            CryptoBoxActionStatus cryptoBoxActionStatus;
            Intrinsics.checkNotNullParameter(type, "type");
            CryptoBoxActionStatus[] values = CryptoBoxActionStatus.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    cryptoBoxActionStatus = null;
                    break;
                }
                cryptoBoxActionStatus = values[i];
                if (Intrinsics.areEqual(cryptoBoxActionStatus.name(), type)) {
                    break;
                }
                i++;
            }
            return cryptoBoxActionStatus == null ? CryptoBoxActionStatus.PENDING : cryptoBoxActionStatus;
        }
    }
}
