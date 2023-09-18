package com.iMe.storage.data.mapper.crypto;

import com.iMe.storage.data.mapper.wallet.FiatValueMappingKt;
import com.iMe.storage.data.network.model.response.crypto.wallet.BitcoinGasPriceResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.GasPriceResponse;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.model.crypto.send.GasPriceInfo;
import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GasPriceInfoMapping.kt */
/* loaded from: classes4.dex */
public final class GasPriceInfoMappingKt {
    public static final GasPriceInfo mapToDomain(GasPriceResponse gasPriceResponse) {
        Intrinsics.checkNotNullParameter(gasPriceResponse, "<this>");
        return new GasPriceInfo(NumberExtKt.orZero(gasPriceResponse.getPrice()), NumberExtKt.orZero(gasPriceResponse.getLimit()), (int) gasPriceResponse.getDuration(), gasPriceResponse.getFee(), FiatValueMappingKt.mapToDomain(gasPriceResponse.getFeeInFiat()));
    }

    public static final GasPriceInfo mapToDomain(BitcoinGasPriceResponse bitcoinGasPriceResponse) {
        Intrinsics.checkNotNullParameter(bitcoinGasPriceResponse, "<this>");
        BigInteger byteFee = bitcoinGasPriceResponse.getByteFee();
        BigInteger ZERO = BigInteger.ZERO;
        Intrinsics.checkNotNullExpressionValue(ZERO, "ZERO");
        return new GasPriceInfo(byteFee, ZERO, (int) bitcoinGasPriceResponse.getDuration(), bitcoinGasPriceResponse.getFee(), FiatValueMappingKt.mapToDomain(bitcoinGasPriceResponse.getFeeInFiat()));
    }
}
