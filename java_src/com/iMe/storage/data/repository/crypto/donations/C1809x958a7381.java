package com.iMe.storage.data.repository.crypto.donations;

import com.iMe.storage.data.mapper.wallet.WalletBalanceMappingKt;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.wallet.WalletBalancesResponse;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* renamed from: com.iMe.storage.data.repository.crypto.donations.DonationsRepositoryImpl$getDonationWalletBalance$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1809x958a7381 extends Lambda implements Function1<ApiBaseResponse<WalletBalancesResponse>, Result<? extends TokenBalance>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1809x958a7381(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<TokenBalance> invoke(ApiBaseResponse<WalletBalancesResponse> response) {
        List sortedWith;
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        List<TokenBalance> mapToDomain = WalletBalanceMappingKt.mapToDomain(response.getPayload());
        ArrayList arrayList = new ArrayList();
        for (Object obj : mapToDomain) {
            if (((TokenBalance) obj).getCode() != TokenCode.UNKNOWN) {
                arrayList.add(obj);
            }
        }
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.iMe.storage.data.repository.crypto.donations.DonationsRepositoryImpl$getDonationWalletBalance$lambda$6$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                TokenInfo.Companion companion = TokenInfo.Companion;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(companion.map(((TokenBalance) t).getCode()).getSortPosition()), Integer.valueOf(companion.map(((TokenBalance) t2).getCode()).getSortPosition()));
                return compareValues;
            }
        });
        return Result.Companion.success((TokenBalance) CollectionsKt.first((List<? extends Object>) sortedWith));
    }
}
