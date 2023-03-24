package com.smedialink.storage.data.repository.crypto.donations;

import com.smedialink.storage.data.mapper.wallet.WalletTransactionMappingKt;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.wallet.WalletTransactionsResponse;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.wallet.transaction.Transaction;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* renamed from: com.smedialink.storage.data.repository.crypto.donations.DonationsRepositoryImpl$getDonationTransactionHistory$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1749xde86f9b2 extends Lambda implements Function1<ApiBaseResponse<WalletTransactionsResponse>, Result<? extends List<? extends Transaction>>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1749xde86f9b2(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<List<? extends Transaction>> invoke(ApiBaseResponse<WalletTransactionsResponse> response) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        List<WalletTransactionsResponse.WalletTransactionResponse> transactionsData = response.getPayload().getTransactionsData();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(transactionsData, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (WalletTransactionsResponse.WalletTransactionResponse walletTransactionResponse : transactionsData) {
            arrayList.add(WalletTransactionMappingKt.mapToDomain(walletTransactionResponse));
        }
        return Result.Companion.success(arrayList);
    }
}
