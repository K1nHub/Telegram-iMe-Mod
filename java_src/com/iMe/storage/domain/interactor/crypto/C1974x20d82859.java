package com.iMe.storage.domain.interactor.crypto;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$linkWalletsWithCheck$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1974x20d82859 extends Lambda implements Function1<Result<? extends Map<BlockchainType, ? extends String>>, ObservableSource<? extends Result<? extends Boolean>>> {
    final /* synthetic */ List $wallets$inlined;
    final /* synthetic */ CryptoWalletInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1974x20d82859(List list, CryptoWalletInteractor cryptoWalletInteractor) {
        super(1);
        this.$wallets$inlined = list;
        this.this$0 = cryptoWalletInteractor;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends Map<BlockchainType, ? extends String>> result) {
        int collectionSizeOrDefault;
        Observable unlinkWalletsIfNeeded;
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
        Map<BlockchainType, ? extends String> data = result.getData();
        if (data == null) {
            data = MapsKt__MapsKt.emptyMap();
        }
        List list = this.$wallets$inlined;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            Wallet wallet2 = (Wallet) obj;
            if (true ^ Intrinsics.areEqual(wallet2.getAddress(), data.get(wallet2.getBlockchainType()))) {
                arrayList.add(obj);
            }
        }
        if (!(!arrayList.isEmpty())) {
            Observable just = Observable.just(Result.Companion.success(Boolean.TRUE));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        ArrayList<Wallet> arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            String str = data.get(((Wallet) obj2).getBlockchainType());
            if (!(str == null || str.length() == 0)) {
                arrayList2.add(obj2);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
        for (Wallet wallet3 : arrayList2) {
            arrayList3.add(wallet3.getBlockchainType());
        }
        unlinkWalletsIfNeeded = this.this$0.unlinkWalletsIfNeeded(arrayList3);
        Observable flatMap = unlinkWalletsIfNeeded.flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1976x4f6e8e90(this.this$0, arrayList)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        schedulersProvider = this.this$0.schedulersProvider;
        Observable subscribeOn = flatMap.subscribeOn(schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "{\n                      …                        }");
        return subscribeOn;
    }
}
