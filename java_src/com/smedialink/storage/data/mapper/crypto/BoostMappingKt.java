package com.smedialink.storage.data.mapper.crypto;

import com.smedialink.storage.domain.model.crypto.EthereumMethods;
/* compiled from: BoostMapping.kt */
/* loaded from: classes3.dex */
public final class BoostMappingKt {

    /* compiled from: BoostMapping.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EthereumMethods.values().length];
            try {
                iArr[EthereumMethods.TRANSFER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EthereumMethods.SWAP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EthereumMethods.APPROVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[EthereumMethods.UNKNOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x01d9, code lost:
        r3 = kotlin.text.StringsKt__StringNumberConversionsJVMKt.toBigIntegerOrNull(r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.smedialink.storage.domain.model.crypto.send.TransactionArgs mapToDomain(com.smedialink.storage.data.network.model.response.crypto.boost.GetBoostTransactionDataResponse r40, com.smedialink.storage.domain.manager.crypto.CryptoAccessManager r41) {
        /*
            Method dump skipped, instructions count: 626
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smedialink.storage.data.mapper.crypto.BoostMappingKt.mapToDomain(com.smedialink.storage.data.network.model.response.crypto.boost.GetBoostTransactionDataResponse, com.smedialink.storage.domain.manager.crypto.CryptoAccessManager):com.smedialink.storage.domain.model.crypto.send.TransactionArgs");
    }
}
