package com.iMe.storage.data.mapper.crypto;

import com.iMe.storage.data.network.model.response.crypto.wallet.BitcoinUnspentOutputResponse;
import com.iMe.storage.domain.model.crypto.send.BitcoinUnspentOutput;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BitcoinUnspentOutputMapper.kt */
/* loaded from: classes3.dex */
public final class BitcoinUnspentOutputMapperKt {
    public static final BitcoinUnspentOutput mapToDomain(BitcoinUnspentOutputResponse bitcoinUnspentOutputResponse) {
        Intrinsics.checkNotNullParameter(bitcoinUnspentOutputResponse, "<this>");
        return new BitcoinUnspentOutput(bitcoinUnspentOutputResponse.getTxId(), bitcoinUnspentOutputResponse.getIndex(), bitcoinUnspentOutputResponse.getAmount());
    }
}
