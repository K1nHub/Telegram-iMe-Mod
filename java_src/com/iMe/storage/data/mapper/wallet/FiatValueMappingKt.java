package com.iMe.storage.data.mapper.wallet;

import com.iMe.storage.data.network.model.response.wallet.FiatValueResponse;
import com.iMe.storage.domain.model.wallet.token.FiatValue;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FiatValueMapping.kt */
/* loaded from: classes3.dex */
public final class FiatValueMappingKt {
    public static final FiatValue mapToDomain(FiatValueResponse fiatValueResponse) {
        Intrinsics.checkNotNullParameter(fiatValueResponse, "<this>");
        return new FiatValue(fiatValueResponse.getValue(), fiatValueResponse.getSymbol(), fiatValueResponse.getTicker());
    }
}
