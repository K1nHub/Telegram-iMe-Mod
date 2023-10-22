package com.iMe.storage.data.mapper.fragment;

import com.iMe.storage.data.network.model.response.crypto.fragment.TonFragmentPremiumBuyPaymentDataResponse;
import com.iMe.storage.data.network.model.response.crypto.fragment.TonFragmentPremiumBuyTransactionParamsResponse;
import com.iMe.storage.domain.model.crypto.ton.PremiumBuyTransactionParams;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: PremiumBuyTransactionParamsMapping.kt */
/* loaded from: classes3.dex */
public final class PremiumBuyTransactionParamsMappingKt {
    public static final PremiumBuyTransactionParams mapToDomain(TonFragmentPremiumBuyTransactionParamsResponse tonFragmentPremiumBuyTransactionParamsResponse) {
        Intrinsics.checkNotNullParameter(tonFragmentPremiumBuyTransactionParamsResponse, "<this>");
        TonFragmentPremiumBuyPaymentDataResponse payment = tonFragmentPremiumBuyTransactionParamsResponse.getPayment();
        return new PremiumBuyTransactionParams(tonFragmentPremiumBuyTransactionParamsResponse.getValidUntil(), payment.getAddress(), payment.getPayload(), payment.getAmount(), payment.getSeqno());
    }
}
