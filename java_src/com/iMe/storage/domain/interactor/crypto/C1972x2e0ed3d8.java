package com.iMe.storage.domain.interactor.crypto;

import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$importBib39BasedWallets$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1972x2e0ed3d8 extends Lambda implements Function1<Result<? extends List<? extends Wallet>>, ObservableSource<? extends Result<? extends List<? extends Wallet>>>> {
    final /* synthetic */ String $password$inlined;
    final /* synthetic */ CryptoWalletInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1972x2e0ed3d8(CryptoWalletInteractor cryptoWalletInteractor, String str) {
        super(1);
        this.this$0 = cryptoWalletInteractor;
        this.$password$inlined = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends List<? extends Wallet>>> invoke(Result<? extends List<? extends Wallet>> result) {
        Observable linkWalletsWithCheck;
        SchedulersProvider schedulersProvider;
        CryptoAccessManager cryptoAccessManager;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        List<? extends Wallet> data = result.getData();
        if (data == null) {
            data = CollectionsKt__CollectionsKt.emptyList();
        }
        for (Wallet wallet2 : data) {
            cryptoAccessManager = this.this$0.cryptoAccessManager;
            cryptoAccessManager.setWallet(wallet2, this.$password$inlined);
        }
        linkWalletsWithCheck = this.this$0.linkWalletsWithCheck(data);
        schedulersProvider = this.this$0.schedulersProvider;
        Observable subscribeOn = linkWalletsWithCheck.subscribeOn(schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "linkWalletsWithCheck(wal…(schedulersProvider.io())");
        return subscribeOn;
    }
}
