package com.iMe.mapper.crypto;

import com.iMe.model.wallet.crypto.send.fee.GasPriceItem;
import com.iMe.storage.domain.model.crypto.TransactionParams;
import com.iMe.storage.domain.model.crypto.send.GasPriceInfo;
import com.iMe.storage.domain.model.crypto.send.TransactionSpeedLevel;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FeeUiMapping.kt */
/* loaded from: classes4.dex */
public final class FeeUiMappingKt {
    public static final List<GasPriceItem> mapToUiFees(TransactionParams transactionParams, TokenDetailed feeToken) {
        List listOfNotNull;
        List<GasPriceItem> mutableList;
        Intrinsics.checkNotNullParameter(transactionParams, "<this>");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        GasPriceItem[] gasPriceItemArr = new GasPriceItem[3];
        GasPriceInfo low = transactionParams.getLow();
        gasPriceItemArr[0] = low != null ? new GasPriceItem(TransactionSpeedLevel.LOW, feeToken, low) : null;
        gasPriceItemArr[1] = new GasPriceItem(TransactionSpeedLevel.MEDIUM, feeToken, transactionParams.getMedium());
        GasPriceInfo fastest = transactionParams.getFastest();
        gasPriceItemArr[2] = fastest != null ? new GasPriceItem(TransactionSpeedLevel.FASTEST, feeToken, fastest) : null;
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull((Object[]) gasPriceItemArr);
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) listOfNotNull);
        return mutableList;
    }
}
