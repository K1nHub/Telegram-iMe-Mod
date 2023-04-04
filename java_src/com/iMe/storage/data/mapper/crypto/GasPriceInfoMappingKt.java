package com.iMe.storage.data.mapper.crypto;

import com.iMe.storage.data.network.model.response.crypto.wallet.GasPriceResponse;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.model.crypto.send.GasPriceInfo;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GasPriceInfoMapping.kt */
/* loaded from: classes3.dex */
public final class GasPriceInfoMappingKt {
    public static final GasPriceInfo mapToDomain(GasPriceResponse gasPriceResponse) {
        Intrinsics.checkNotNullParameter(gasPriceResponse, "<this>");
        return new GasPriceInfo(NumberExtKt.orZero(gasPriceResponse.getPrice()), NumberExtKt.orZero(gasPriceResponse.getLimit()), (int) gasPriceResponse.getDuration(), gasPriceResponse.getFee(), gasPriceResponse.getFeeInDollars());
    }
}
