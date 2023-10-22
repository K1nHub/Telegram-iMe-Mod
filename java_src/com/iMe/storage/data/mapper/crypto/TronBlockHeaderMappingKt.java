package com.iMe.storage.data.mapper.crypto;

import com.iMe.storage.data.network.model.response.crypto.wallet.TronBlockHeaderResponse;
import com.iMe.storage.domain.model.crypto.TronBlockHeader;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TronBlockHeaderMapping.kt */
/* loaded from: classes3.dex */
public final class TronBlockHeaderMappingKt {
    public static final TronBlockHeader mapToDomain(TronBlockHeaderResponse tronBlockHeaderResponse) {
        Intrinsics.checkNotNullParameter(tronBlockHeaderResponse, "<this>");
        return new TronBlockHeader(tronBlockHeaderResponse.getNumber(), tronBlockHeaderResponse.getTxTrieRoot(), tronBlockHeaderResponse.getWitnessAddress(), tronBlockHeaderResponse.getParentHash(), tronBlockHeaderResponse.getVersion(), tronBlockHeaderResponse.getTimestamp());
    }
}
