package com.iMe.storage.data.repository.crypto.pin;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.repository.crypto.CryptoLocalWalletRepository;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.storage.data.repository.crypto.pin.PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$2 */
/* loaded from: classes3.dex */
public final class C1906x9951f989 extends Lambda implements Function1<Result<? extends String>, ObservableSource<? extends Result<? extends String>>> {
    final /* synthetic */ boolean $shouldUnlockWallet$inlined;
    final /* synthetic */ String $uuid$inlined;
    final /* synthetic */ PinCodeRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1906x9951f989(boolean z, PinCodeRepositoryImpl pinCodeRepositoryImpl, String str) {
        super(1);
        this.$shouldUnlockWallet$inlined = z;
        this.this$0 = pinCodeRepositoryImpl;
        this.$uuid$inlined = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends String>> invoke(Result<? extends String> result) {
        CryptoLocalWalletRepository cryptoLocalWalletRepository;
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
        String data = result.getData();
        if (data == null) {
            data = "";
        }
        if (!this.$shouldUnlockWallet$inlined) {
            Observable just = Observable.just(Result.Companion.success(data));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        cryptoLocalWalletRepository = this.this$0.cryptoLocalWalletRepository;
        String str = this.$uuid$inlined;
        Observable<R> map = cryptoLocalWalletRepository.unlockAllWallets(str, str, data).map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1908x5a094a6(data)));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        schedulersProvider = this.this$0.schedulersProvider;
        Observable subscribeOn = map.subscribeOn(schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "{\n                      …())\n                    }");
        return subscribeOn;
    }
}
