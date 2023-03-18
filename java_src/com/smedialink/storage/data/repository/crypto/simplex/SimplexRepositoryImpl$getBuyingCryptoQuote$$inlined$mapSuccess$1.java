package com.smedialink.storage.data.repository.crypto.simplex;

import com.smedialink.storage.data.mapper.crypto.SimplexMappingKt;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.simplex.GetBuyingCryptoQuoteResponse;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.simplex.BuyingCryptoQuote;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class SimplexRepositoryImpl$getBuyingCryptoQuote$$inlined$mapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<GetBuyingCryptoQuoteResponse>, Result<? extends List<? extends BuyingCryptoQuote>>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimplexRepositoryImpl$getBuyingCryptoQuote$$inlined$mapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<List<? extends BuyingCryptoQuote>> invoke(ApiBaseResponse<GetBuyingCryptoQuoteResponse> response) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.isSuccess()) {
            List<GetBuyingCryptoQuoteResponse.CryptoQuote> quotes = response.getPayload().getQuotes();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(quotes, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (GetBuyingCryptoQuoteResponse.CryptoQuote cryptoQuote : quotes) {
                arrayList.add(SimplexMappingKt.mapToDomain(cryptoQuote));
            }
            return Result.Companion.success(arrayList);
        }
        return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
    }
}
