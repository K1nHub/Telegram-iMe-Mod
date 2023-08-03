package com.iMe.storage.data.repository.crypto.pin;

import com.iMe.storage.data.network.api.own.PinCodeApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.domain.repository.crypto.CryptoLocalWalletRepository;
import com.iMe.storage.domain.repository.crypto.pin.PinCodeRepository;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: PinCodeRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class PinCodeRepositoryImpl implements PinCodeRepository {
    private final CryptoLocalWalletRepository cryptoLocalWalletRepository;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final PinCodeApi pinCodeApi;
    private final SchedulersProvider schedulersProvider;

    public PinCodeRepositoryImpl(CryptoLocalWalletRepository cryptoLocalWalletRepository, CryptoPreferenceHelper cryptoPreferenceHelper, ApiErrorHandler errorHandler, FirebaseFunctionsErrorHandler firebaseErrorHandler, PinCodeApi pinCodeApi, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(cryptoLocalWalletRepository, "cryptoLocalWalletRepository");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(pinCodeApi, "pinCodeApi");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.cryptoLocalWalletRepository = cryptoLocalWalletRepository;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.errorHandler = errorHandler;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.pinCodeApi = pinCodeApi;
        this.schedulersProvider = schedulersProvider;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
        if ((r0.getWalletPassword().length() > 0) != false) goto L7;
     */
    @Override // com.iMe.storage.domain.repository.crypto.pin.PinCodeRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public io.reactivex.Observable<com.iMe.storage.domain.model.Result<java.lang.String>> readPasswordByPinCode(final java.lang.String r5, final java.lang.String r6, final boolean r7) {
        /*
            r4 = this;
            java.lang.String r0 = "pinCode"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "uuid"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            com.iMe.storage.domain.storage.CryptoPreferenceHelper r0 = r4.cryptoPreferenceHelper
            boolean r1 = r0.isLocalEncryptionCompleted()
            r2 = 1
            r3 = 0
            if (r1 != 0) goto L24
            java.lang.String r0 = r0.getWalletPassword()
            int r0 = r0.length()
            if (r0 <= 0) goto L20
            r0 = r2
            goto L21
        L20:
            r0 = r3
        L21:
            if (r0 == 0) goto L24
            goto L25
        L24:
            r2 = r3
        L25:
            if (r2 == 0) goto L5d
            com.iMe.storage.data.network.api.own.PinCodeApi r0 = r4.pinCodeApi
            com.iMe.storage.data.network.model.request.crypto.pin.PasswordByPinCodeRequest r1 = new com.iMe.storage.data.network.model.request.crypto.pin.PasswordByPinCodeRequest
            r1.<init>(r5, r6)
            io.reactivex.Observable r0 = r0.getCryptoWalletPassword(r1)
            com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler r1 = r4.firebaseErrorHandler
            com.iMe.storage.data.repository.crypto.pin.PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1 r2 = new com.iMe.storage.data.repository.crypto.pin.PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1
            r2.<init>()
            com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0 r5 = new com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0
            r5.<init>(r2)
            io.reactivex.Observable r5 = r0.flatMap(r5)
            java.lang.String r0 = "errorHandler: FirebaseFu…R>().toObservable()\n    }"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r0)
            com.iMe.storage.data.network.handlers.impl.ApiErrorHandler r0 = r4.errorHandler
            com.iMe.storage.data.repository.crypto.pin.PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$handleError$1 r1 = new com.iMe.storage.data.repository.crypto.pin.PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$handleError$1
            r1.<init>()
            com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0 r0 = new com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0
            r0.<init>(r1)
            io.reactivex.Observable r5 = r5.onErrorReturn(r0)
            java.lang.String r0 = "errorHandler: ErrorHandl…ndleError(it).toError() }"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r0)
            goto L7d
        L5d:
            com.iMe.storage.domain.repository.crypto.CryptoLocalWalletRepository r0 = r4.cryptoLocalWalletRepository
            com.iMe.storage.domain.model.crypto.BlockchainType$Companion r1 = com.iMe.storage.domain.model.crypto.BlockchainType.Companion
            com.iMe.storage.domain.storage.CryptoPreferenceHelper r2 = r4.cryptoPreferenceHelper
            com.iMe.storage.domain.model.PreferenceBlockchainMappedData r2 = r2.getWalletSeeds()
            java.util.Map r2 = r2.getData()
            java.util.Set r2 = r2.keySet()
            java.lang.Object r2 = kotlin.collections.CollectionsKt.first(r2)
            java.lang.String r2 = (java.lang.String) r2
            com.iMe.storage.domain.model.crypto.BlockchainType r1 = r1.map(r2)
            io.reactivex.Observable r5 = r0.getPasswordByPinCodeWithValidation(r5, r1)
        L7d:
            com.iMe.storage.data.repository.crypto.pin.PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$2 r0 = new com.iMe.storage.data.repository.crypto.pin.PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$2
            r0.<init>()
            com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0 r6 = new com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0
            r6.<init>(r0)
            io.reactivex.Observable r5 = r5.flatMap(r6)
            java.lang.String r6 = "crossinline body: (T) ->…e.empty()\n        }\n    }"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.data.repository.crypto.pin.PinCodeRepositoryImpl.readPasswordByPinCode(java.lang.String, java.lang.String, boolean):io.reactivex.Observable");
    }
}
