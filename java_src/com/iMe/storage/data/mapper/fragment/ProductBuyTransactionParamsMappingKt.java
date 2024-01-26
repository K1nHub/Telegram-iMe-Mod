package com.iMe.storage.data.mapper.fragment;

import com.iMe.storage.data.network.model.response.crypto.fragment.TonFragmentProductBuyPaymentDataResponse;
import com.iMe.storage.data.network.model.response.crypto.fragment.TonFragmentProductBuyTransactionParamsResponse;
import com.iMe.storage.domain.model.crypto.ton.ProductBuyTransactionParams;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ProductBuyTransactionParamsMapping.kt */
/* loaded from: classes3.dex */
public final class ProductBuyTransactionParamsMappingKt {
    public static final ProductBuyTransactionParams mapToDomain(TonFragmentProductBuyTransactionParamsResponse tonFragmentProductBuyTransactionParamsResponse) {
        Intrinsics.checkNotNullParameter(tonFragmentProductBuyTransactionParamsResponse, "<this>");
        TonFragmentProductBuyPaymentDataResponse payment = tonFragmentProductBuyTransactionParamsResponse.getPayment();
        return new ProductBuyTransactionParams(tonFragmentProductBuyTransactionParamsResponse.getValidUntil(), payment.getAddress(), payment.getAmount(), payment.getSeqno());
    }
}
