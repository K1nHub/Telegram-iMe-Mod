package com.iMe.storage.data.repository.wallet;

import com.iMe.storage.data.locale.p027db.model.wallet.WalletTokenBalanceDb;
import com.iMe.storage.data.mapper.wallet.WalletBalanceMappingKt;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletRepositoryImpl.kt */
/* loaded from: classes3.dex */
final class WalletRepositoryImpl$getWalletBalance$1 extends Lambda implements Function1<List<? extends WalletTokenBalanceDb>, Result<? extends List<? extends TokenBalance>>> {
    public static final WalletRepositoryImpl$getWalletBalance$1 INSTANCE = new WalletRepositoryImpl$getWalletBalance$1();

    WalletRepositoryImpl$getWalletBalance$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Result<? extends List<? extends TokenBalance>> invoke(List<? extends WalletTokenBalanceDb> list) {
        return invoke2((List<WalletTokenBalanceDb>) list);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Result<List<TokenBalance>> invoke2(List<WalletTokenBalanceDb> balances) {
        int collectionSizeOrDefault;
        List sortedWith;
        Intrinsics.checkNotNullParameter(balances, "balances");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(balances, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (WalletTokenBalanceDb walletTokenBalanceDb : balances) {
            arrayList.add(WalletBalanceMappingKt.mapToDomain(walletTokenBalanceDb));
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((TokenBalance) obj).getCode() != TokenCode.UNKNOWN) {
                arrayList2.add(obj);
            }
        }
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList2, new Comparator() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getWalletBalance$1$invoke$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                TokenInfo.Companion companion = TokenInfo.Companion;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(companion.map(((TokenBalance) t).getCode()).getSortPosition()), Integer.valueOf(companion.map(((TokenBalance) t2).getCode()).getSortPosition()));
                return compareValues;
            }
        });
        return Result.Companion.success(sortedWith);
    }
}
