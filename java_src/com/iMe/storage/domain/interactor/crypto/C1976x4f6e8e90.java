package com.iMe.storage.domain.interactor.crypto;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.repository.crypto.CryptoWalletRepository;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.ranges.RangesKt___RangesKt;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$linkWalletsWithCheck$lambda$31$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1976x4f6e8e90 extends Lambda implements Function1<Result<? extends Boolean>, ObservableSource<? extends Result<? extends Boolean>>> {
    final /* synthetic */ List $changedWallets$inlined;
    final /* synthetic */ CryptoWalletInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1976x4f6e8e90(CryptoWalletInteractor cryptoWalletInteractor, List list) {
        super(1);
        this.this$0 = cryptoWalletInteractor;
        this.$changedWallets$inlined = list;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends Boolean> result) {
        CryptoWalletRepository cryptoWalletRepository;
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        SchedulersProvider schedulersProvider;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        cryptoWalletRepository = this.this$0.cryptoWalletRepository;
        List<Wallet> list = this.$changedWallets$inlined;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (Wallet wallet2 : list) {
            Pair m85to = TuplesKt.m85to(wallet2.getBlockchainType(), wallet2.getPublicKey());
            linkedHashMap.put(m85to.getFirst(), m85to.getSecond());
        }
        Observable<R> flatMap = cryptoWalletRepository.linkWallets(linkedHashMap).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1977xa9c0c453(this.$changedWallets$inlined, this.this$0)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T, Er…e.empty()\n        }\n    }");
        schedulersProvider = this.this$0.schedulersProvider;
        Observable subscribeOn = flatMap.subscribeOn(schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoWalletRepository\n …(schedulersProvider.io())");
        return subscribeOn;
    }
}
