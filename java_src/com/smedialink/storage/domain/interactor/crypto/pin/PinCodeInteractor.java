package com.smedialink.storage.domain.interactor.crypto.pin;

import com.smedialink.storage.data.utils.extentions.CryptoExtKt;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.repository.crypto.pin.PinCodeRepository;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: PinCodeInteractor.kt */
/* loaded from: classes3.dex */
public final class PinCodeInteractor {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final PinCodeRepository pinCodeRepository;
    private final SchedulersProvider schedulersProvider;

    public PinCodeInteractor(PinCodeRepository pinCodeRepository, CryptoPreferenceHelper cryptoPreferenceHelper, CryptoAccessManager cryptoAccessManager, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(pinCodeRepository, "pinCodeRepository");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.pinCodeRepository = pinCodeRepository;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.cryptoAccessManager = cryptoAccessManager;
        this.schedulersProvider = schedulersProvider;
    }

    public final Observable<Result<Boolean>> createPinCode(String pinCode, String password, final String guid) {
        Intrinsics.checkNotNullParameter(pinCode, "pinCode");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(guid, "guid");
        String randomString = CryptoExtKt.randomString();
        final String aesEncrypt = CryptoExtKt.aesEncrypt(password, randomString);
        Observable<Result<Boolean>> doOnNext = this.pinCodeRepository.createPinCode(pinCode, randomString, guid).doOnNext(new Consumer() { // from class: com.smedialink.storage.domain.interactor.crypto.pin.PinCodeInteractor$createPinCode$$inlined$doOnSuccessNext$1
            /* JADX WARN: Incorrect types in method signature: (TT;)V */
            @Override // io.reactivex.functions.Consumer
            public final void accept(Result result) {
                CryptoPreferenceHelper cryptoPreferenceHelper;
                CryptoPreferenceHelper cryptoPreferenceHelper2;
                if (result instanceof Result.Success) {
                    Objects.requireNonNull(result, "null cannot be cast to non-null type com.smedialink.storage.domain.model.Result<kotlin.Boolean>");
                    cryptoPreferenceHelper = PinCodeInteractor.this.cryptoPreferenceHelper;
                    cryptoPreferenceHelper.setLastLoggedInGuid(guid);
                    cryptoPreferenceHelper2 = PinCodeInteractor.this.cryptoPreferenceHelper;
                    cryptoPreferenceHelper2.setWalletPassword(aesEncrypt);
                }
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnNext, "crossinline body: (T) ->…ult as T)\n        }\n    }");
        Observable<Result<Boolean>> subscribeOn = doOnNext.startWith((Observable<Result<Boolean>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "pinCodeRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public static /* synthetic */ Observable readPasswordByPinCode$default(PinCodeInteractor pinCodeInteractor, String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = pinCodeInteractor.cryptoAccessManager.getLastLoggedInGuid();
        }
        if ((i & 4) != 0) {
            z = true;
        }
        return pinCodeInteractor.readPasswordByPinCode(str, str2, z);
    }

    public final Observable<Result<String>> readPasswordByPinCode(String pinCode, String uuid, boolean z) {
        Intrinsics.checkNotNullParameter(pinCode, "pinCode");
        Intrinsics.checkNotNullParameter(uuid, "uuid");
        Observable<Result<String>> subscribeOn = this.pinCodeRepository.readPasswordByPinCode(pinCode, uuid, z).startWith((Observable<Result<String>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "pinCodeRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }
}
