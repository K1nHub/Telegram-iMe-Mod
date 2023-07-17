package com.iMe.storage.data.repository.crypto.pin;

import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.pin.PasswordByPinCodeResponse;
import com.iMe.storage.data.utils.extentions.CryptoExtKt;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* renamed from: com.iMe.storage.data.repository.crypto.pin.PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1904x9951f988 extends Lambda implements Function1<ApiBaseResponse<PasswordByPinCodeResponse>, ObservableSource<? extends Result<? extends String>>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;
    final /* synthetic */ String $pinCode$inlined;
    final /* synthetic */ PinCodeRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1904x9951f988(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler, PinCodeRepositoryImpl pinCodeRepositoryImpl, String str) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
        this.this$0 = pinCodeRepositoryImpl;
        this.$pinCode$inlined = str;
    }

    /* compiled from: FirebaseExt.kt */
    /* renamed from: com.iMe.storage.data.repository.crypto.pin.PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1$1 */
    /* loaded from: classes3.dex */
    public static final class C19051 extends Lambda implements Function1<String, Result<? extends String>> {
        public static final C19051 INSTANCE = new C19051();

        public C19051() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Result<? extends String> invoke(String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Result.Companion.success(it);
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<String>> invoke(ApiBaseResponse<PasswordByPinCodeResponse> response) {
        CryptoPreferenceHelper cryptoPreferenceHelper;
        CryptoPreferenceHelper cryptoPreferenceHelper2;
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.isSuccess()) {
            cryptoPreferenceHelper = this.this$0.cryptoPreferenceHelper;
            String aesDecrypt = CryptoExtKt.aesDecrypt(cryptoPreferenceHelper.getWalletPassword(), response.getPayload().getPassword());
            cryptoPreferenceHelper2 = this.this$0.cryptoPreferenceHelper;
            cryptoPreferenceHelper2.setWalletPassword(CryptoExtKt.aesEncrypt(aesDecrypt, this.$pinCode$inlined));
            cryptoPreferenceHelper2.setLocalEncryptionCompleted(true);
            Observable just = Observable.just(aesDecrypt);
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(C19051.INSTANCE));
        }
        Observable just2 = Observable.just(Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null));
        Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
        return just2;
    }
}
