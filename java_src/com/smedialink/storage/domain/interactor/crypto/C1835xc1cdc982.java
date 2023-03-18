package com.smedialink.storage.domain.interactor.crypto;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.CryptoWalletInfo;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor$getLinkedCryptoWalletAddress$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1835xc1cdc982 extends Lambda implements Function1<Result<? extends CryptoWalletInfo>, ObservableSource<? extends Result<? extends String>>> {
    final /* synthetic */ CryptoWalletInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1835xc1cdc982(CryptoWalletInteractor cryptoWalletInteractor) {
        super(1);
        this.this$0 = cryptoWalletInteractor;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends String>> invoke(Result<? extends CryptoWalletInfo> result) {
        CryptoPreferenceHelper cryptoPreferenceHelper;
        Intrinsics.checkNotNullParameter(result, "result");
        String str = null;
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.smedialink.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        CryptoWalletInfo data = result.getData();
        if (data != null) {
            cryptoPreferenceHelper = this.this$0.cryptoPreferenceHelper;
            str = data.getAddressByBlockchain(cryptoPreferenceHelper.getCurrentBlockchainType());
        }
        if (str == null) {
            str = "";
        }
        Observable just = Observable.just(Result.Companion.success(str));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
