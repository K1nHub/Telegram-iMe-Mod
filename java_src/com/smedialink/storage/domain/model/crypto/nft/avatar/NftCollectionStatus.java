package com.smedialink.storage.domain.model.crypto.nft.avatar;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NftCollectionStatus.kt */
/* loaded from: classes3.dex */
public enum NftCollectionStatus {
    NONE,
    PENDING,
    CONFIRMED,
    FAILED;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: NftCollectionStatus.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final NftCollectionStatus map(String value) {
            NftCollectionStatus nftCollectionStatus;
            Intrinsics.checkNotNullParameter(value, "value");
            NftCollectionStatus[] values = NftCollectionStatus.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    nftCollectionStatus = null;
                    break;
                }
                nftCollectionStatus = values[i];
                if (Intrinsics.areEqual(nftCollectionStatus.name(), value)) {
                    break;
                }
                i++;
            }
            return nftCollectionStatus == null ? NftCollectionStatus.NONE : nftCollectionStatus;
        }
    }
}
