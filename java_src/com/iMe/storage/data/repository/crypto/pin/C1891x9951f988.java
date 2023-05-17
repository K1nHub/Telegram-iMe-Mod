package com.iMe.storage.data.repository.crypto.pin;

import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.pin.PasswordByPinCodeRequest;
import com.iMe.storage.data.utils.extentions.CryptoExtKt;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.repository.crypto.CryptoLocalWalletRepository;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* renamed from: com.iMe.storage.data.repository.crypto.pin.PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1891x9951f988 extends Lambda implements Function1<ApiBaseResponse<PasswordByPinCodeRequest>, ObservableSource<? extends Result<? extends String>>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;
    final /* synthetic */ boolean $shouldUnlockWallet$inlined;
    final /* synthetic */ String $uuid$inlined;
    final /* synthetic */ PinCodeRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1891x9951f988(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler, PinCodeRepositoryImpl pinCodeRepositoryImpl, boolean z, String str) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
        this.this$0 = pinCodeRepositoryImpl;
        this.$shouldUnlockWallet$inlined = z;
        this.$uuid$inlined = str;
    }

    /* compiled from: FirebaseExt.kt */
    /* renamed from: com.iMe.storage.data.repository.crypto.pin.PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1$1 */
    /* loaded from: classes3.dex */
    public static final class C18921 extends Lambda implements Function1<String, Result<? extends String>> {
        public static final C18921 INSTANCE = new C18921();

        public C18921() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Result<? extends String> invoke(String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Result.Companion.success(it);
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<String>> invoke(ApiBaseResponse<PasswordByPinCodeRequest> response) {
        CryptoPreferenceHelper cryptoPreferenceHelper;
        Observable just;
        CryptoLocalWalletRepository cryptoLocalWalletRepository;
        SchedulersProvider schedulersProvider;
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            Observable just2 = Observable.just(Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null));
            Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
            return just2;
        }
        String password = response.getPayload().getPassword();
        cryptoPreferenceHelper = this.this$0.cryptoPreferenceHelper;
        String aesDecrypt = CryptoExtKt.aesDecrypt(cryptoPreferenceHelper.getWalletPassword(), password);
        if (this.$shouldUnlockWallet$inlined) {
            cryptoLocalWalletRepository = this.this$0.cryptoLocalWalletRepository;
            String str = this.$uuid$inlined;
            Observable<R> map = cryptoLocalWalletRepository.unlockAllWallets(str, str, aesDecrypt).map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1894x713d6224(aesDecrypt)));
            Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
            schedulersProvider = this.this$0.schedulersProvider;
            just = map.subscribeOn(schedulersProvider.mo699io());
            Intrinsics.checkNotNullExpressionValue(just, "{\n                      …                        }");
        } else {
            just = Observable.just(aesDecrypt);
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        }
        return just.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(C18921.INSTANCE));
    }
}
