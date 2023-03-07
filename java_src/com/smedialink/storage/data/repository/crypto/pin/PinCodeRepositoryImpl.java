package com.smedialink.storage.data.repository.crypto.pin;

import com.smedialink.storage.data.network.api.own.PinCodeApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.crypto.pin.CreatePinCodeRequest;
import com.smedialink.storage.data.network.model.request.crypto.pin.ReadPasswordByPinCodeRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.pin.PasswordByPinCodeRequest;
import com.smedialink.storage.data.utils.extentions.CryptoExtKt;
import com.smedialink.storage.data.utils.extentions.RxExtKt$handleError$1;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.repository.crypto.CryptoLocalWalletRepository;
import com.smedialink.storage.domain.repository.crypto.pin.PinCodeRepository;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
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

    @Override // com.smedialink.storage.domain.repository.crypto.pin.PinCodeRepository
    public Observable<Result<Boolean>> createPinCode(String pinCode, String password, String uuid) {
        Intrinsics.checkNotNullParameter(pinCode, "pinCode");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(uuid, "uuid");
        Observable<ApiBaseResponse<Object>> saveCryptoWalletPinCode = this.pinCodeApi.saveCryptoWalletPinCode(new CreatePinCodeRequest(pinCode, password, uuid));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = saveCryptoWalletPinCode.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.pin.PinCodeRepositoryImpl$createPinCode$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(Boolean.TRUE);
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.pin.PinCodeRepository
    public Observable<Result<String>> readPasswordByPinCode(String pinCode, final String uuid, final boolean z) {
        Intrinsics.checkNotNullParameter(pinCode, "pinCode");
        Intrinsics.checkNotNullParameter(uuid, "uuid");
        Observable<ApiBaseResponse<PasswordByPinCodeRequest>> cryptoWalletPassword = this.pinCodeApi.getCryptoWalletPassword(new ReadPasswordByPinCodeRequest(pinCode, uuid));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> flatMap = cryptoWalletPassword.flatMap(new Function() { // from class: com.smedialink.storage.data.repository.crypto.pin.PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+Lcom/smedialink/storage/domain/model/Result<TR;>;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(ApiBaseResponse response) {
                CryptoPreferenceHelper cryptoPreferenceHelper;
                Observable<R> just;
                CryptoLocalWalletRepository cryptoLocalWalletRepository;
                SchedulersProvider schedulersProvider;
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    Observable just2 = Observable.just(Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null));
                    Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
                    return just2;
                }
                String password = ((PasswordByPinCodeRequest) response.getPayload()).getPassword();
                cryptoPreferenceHelper = this.cryptoPreferenceHelper;
                final String aesDecrypt = CryptoExtKt.aesDecrypt(cryptoPreferenceHelper.getWalletPassword(), password);
                if (z) {
                    cryptoLocalWalletRepository = this.cryptoLocalWalletRepository;
                    String str = uuid;
                    Observable<R> map = cryptoLocalWalletRepository.unlockAllWallets(str, str, aesDecrypt).map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.pin.PinCodeRepositoryImpl$readPasswordByPinCode$lambda-2$$inlined$mapSuccess$1
                        /* JADX WARN: Incorrect types in method signature: (TT;)TR; */
                        @Override // io.reactivex.functions.Function
                        public final Object apply(Result result) {
                            Intrinsics.checkNotNullParameter(result, "result");
                            if (!(result instanceof Result.Success)) {
                                if (result instanceof Result.Error) {
                                    return Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                                }
                                if (result instanceof Object) {
                                    return result;
                                }
                                return null;
                            }
                            return aesDecrypt;
                        }
                    });
                    Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
                    schedulersProvider = this.schedulersProvider;
                    just = map.subscribeOn(schedulersProvider.mo708io());
                    Intrinsics.checkNotNullExpressionValue(just, "{\n                      …                        }");
                } else {
                    just = Observable.just(aesDecrypt);
                    Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                }
                return just.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.pin.PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1.1
                    @Override // io.reactivex.functions.Function
                    public final Result<R> apply(R it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        return Result.Companion.success(it);
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // io.reactivex.functions.Function
                    public /* bridge */ /* synthetic */ Object apply(Object obj) {
                        return apply((C17171<T, R>) obj);
                    }
                });
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "errorHandler: FirebaseFu…R>().toObservable()\n    }");
        Observable<Result<String>> onErrorReturn = flatMap.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
