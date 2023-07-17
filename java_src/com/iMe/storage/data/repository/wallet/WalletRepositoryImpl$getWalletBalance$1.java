package com.iMe.storage.data.repository.wallet;

import com.iMe.storage.data.locale.p027db.model.wallet.WalletTokenBalanceDb;
import com.iMe.storage.data.mapper.wallet.WalletBalanceMappingKt;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletRepositoryImpl.kt */
/* loaded from: classes3.dex */
final class WalletRepositoryImpl$getWalletBalance$1 extends Lambda implements Function1<List<? extends WalletTokenBalanceDb>, ObservableSource<? extends Result<? extends List<? extends TokenBalance>>>> {
    public static final WalletRepositoryImpl$getWalletBalance$1 INSTANCE = new WalletRepositoryImpl$getWalletBalance$1();

    WalletRepositoryImpl$getWalletBalance$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ ObservableSource<? extends Result<? extends List<? extends TokenBalance>>> invoke(List<? extends WalletTokenBalanceDb> list) {
        return invoke2((List<WalletTokenBalanceDb>) list);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final ObservableSource<? extends Result<List<TokenBalance>>> invoke2(List<WalletTokenBalanceDb> balances) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(balances, "balances");
        if (balances.isEmpty()) {
            return Observable.empty();
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(balances, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (WalletTokenBalanceDb walletTokenBalanceDb : balances) {
            arrayList.add(WalletBalanceMappingKt.mapToDomain(walletTokenBalanceDb));
        }
        Observable just = Observable.just(Result.Companion.success(arrayList));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
