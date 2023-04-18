package com.iMe.storage.domain.interactor.crypto;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.CryptoWalletInfo;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$getLinkedCryptoWalletAddress$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1890xc1cdc982 extends Lambda implements Function1<Result<? extends CryptoWalletInfo>, ObservableSource<? extends Result<? extends String>>> {
    final /* synthetic */ BlockchainType $blockchainType$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1890xc1cdc982(BlockchainType blockchainType) {
        super(1);
        this.$blockchainType$inlined = blockchainType;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends String>> invoke(Result<? extends CryptoWalletInfo> result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        CryptoWalletInfo data = result.getData();
        String addressByBlockchain = data != null ? data.getAddressByBlockchain(this.$blockchainType$inlined) : null;
        if (addressByBlockchain == null) {
            addressByBlockchain = "";
        }
        Observable just = Observable.just(Result.Companion.success(addressByBlockchain));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
