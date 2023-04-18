package com.iMe.storage.data.repository.crypto.pin;

import com.iMe.storage.data.network.api.own.PinCodeApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.pin.CreatePinCodeRequest;
import com.iMe.storage.data.network.model.request.crypto.pin.ReadPasswordByPinCodeRequest;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.repository.crypto.CryptoLocalWalletRepository;
import com.iMe.storage.domain.repository.crypto.pin.PinCodeRepository;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
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

    public PinCodeRepositoryImpl(PinCodeApi pinCodeApi, SchedulersProvider schedulersProvider, CryptoLocalWalletRepository cryptoLocalWalletRepository, CryptoPreferenceHelper cryptoPreferenceHelper, FirebaseFunctionsErrorHandler firebaseErrorHandler, ApiErrorHandler errorHandler) {
        Intrinsics.checkNotNullParameter(pinCodeApi, "pinCodeApi");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(cryptoLocalWalletRepository, "cryptoLocalWalletRepository");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        this.pinCodeApi = pinCodeApi;
        this.schedulersProvider = schedulersProvider;
        this.cryptoLocalWalletRepository = cryptoLocalWalletRepository;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.errorHandler = errorHandler;
    }

    @Override // com.iMe.storage.domain.repository.crypto.pin.PinCodeRepository
    public Observable<Result<Boolean>> createPinCode(String pinCode, String password, String uuid) {
        Intrinsics.checkNotNullParameter(pinCode, "pinCode");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(uuid, "uuid");
        Observable<R> map = this.pinCodeApi.saveCryptoWalletPinCode(new CreatePinCodeRequest(pinCode, password, uuid)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new PinCodeRepositoryImpl$createPinCode$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new PinCodeRepositoryImpl$createPinCode$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.pin.PinCodeRepository
    public Observable<Result<String>> readPasswordByPinCode(String pinCode, String uuid, boolean z) {
        Intrinsics.checkNotNullParameter(pinCode, "pinCode");
        Intrinsics.checkNotNullParameter(uuid, "uuid");
        Observable<R> flatMap = this.pinCodeApi.getCryptoWalletPassword(new ReadPasswordByPinCodeRequest(pinCode, uuid)).flatMap(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1814x9951f988(this.firebaseErrorHandler, this, z, uuid)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "errorHandler: FirebaseFu…R>().toObservable()\n    }");
        Observable<Result<String>> onErrorReturn = flatMap.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1816xfd7cbd92(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
