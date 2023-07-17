package com.iMe.storage.domain.interactor.crypto;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.CryptoWalletsInfo;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.ranges.RangesKt___RangesKt;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$getLinkedCryptoWalletAddresses$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1971x1cad89b0 extends Lambda implements Function1<Result<? extends CryptoWalletsInfo>, ObservableSource<? extends Result<? extends Map<BlockchainType, ? extends String>>>> {
    public C1971x1cad89b0() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends Map<BlockchainType, ? extends String>>> invoke(Result<? extends CryptoWalletsInfo> result) {
        int mapCapacity;
        int coerceAtLeast;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        BlockchainType[] values = BlockchainType.values();
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(values.length);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (BlockchainType blockchainType : values) {
            CryptoWalletsInfo data = result.getData();
            String addressByBlockchain = data != null ? data.getAddressByBlockchain(blockchainType) : null;
            if (addressByBlockchain == null) {
                addressByBlockchain = "";
            }
            linkedHashMap.put(blockchainType, addressByBlockchain);
        }
        Observable just = Observable.just(Result.Companion.success(linkedHashMap));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
