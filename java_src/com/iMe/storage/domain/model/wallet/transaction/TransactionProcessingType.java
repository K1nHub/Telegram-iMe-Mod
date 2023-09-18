package com.iMe.storage.domain.model.wallet.transaction;

import com.iMe.storage.R$string;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TransactionProcessingType.kt */
/* loaded from: classes4.dex */
public enum TransactionProcessingType {
    SIMPLEX(R$string.processing_type_simplex),
    ETHEREUM(R$string.processing_type_eth),
    UNISWAP_V2(R$string.processing_type_uniswap_v2),
    UNISWAP_V3(R$string.processing_type_uniswap_v3),
    ONEINCH(R$string.processing_type_1inch),
    ONEINCH_FUSION(R$string.processing_type_1inch_fusion),
    SYMBIOSIS(R$string.processing_type_symbiosis),
    PANCAKESWAP_V2(R$string.processing_type_pancakeswap_v2),
    BINANCE_SMART_CHAIN(R$string.processing_type_bsc),
    POLYGON(R$string.processing_type_polygon),
    THE_OPEN_NETWORK(R$string.processing_type_ton),
    FANTOM(R$string.wallet_network_type_fantom),
    TRON(R$string.wallet_network_type_tron),
    BITCOIN(R$string.wallet_network_type_bitcoin),
    UNKNOWN(R$string.processing_type_unknown);
    
    public static final Companion Companion = new Companion(null);
    private final int title;

    TransactionProcessingType(int i) {
        this.title = i;
    }

    public final int getTitle() {
        return this.title;
    }

    /* compiled from: TransactionProcessingType.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TransactionProcessingType map(String value) {
            TransactionProcessingType transactionProcessingType;
            Intrinsics.checkNotNullParameter(value, "value");
            TransactionProcessingType[] values = TransactionProcessingType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    transactionProcessingType = null;
                    break;
                }
                transactionProcessingType = values[i];
                if (Intrinsics.areEqual(transactionProcessingType.name(), value)) {
                    break;
                }
                i++;
            }
            return transactionProcessingType == null ? TransactionProcessingType.UNKNOWN : transactionProcessingType;
        }
    }
}
