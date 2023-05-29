package com.iMe.storage.domain.interactor.crypto.pin;

import com.iMe.storage.data.utils.extentions.CryptoExtKt;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.repository.crypto.pin.PinCodeRepository;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
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

    public final Observable<Result<Boolean>> createPinCode(String pinCode, String password, String guid) {
        Intrinsics.checkNotNullParameter(pinCode, "pinCode");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(guid, "guid");
        String randomString = CryptoExtKt.randomString();
        Observable<Result<Boolean>> doOnNext = this.pinCodeRepository.createPinCode(pinCode, randomString, guid).doOnNext(new ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0(new PinCodeInteractor$createPinCode$$inlined$doOnSuccessNext$1(this, guid, CryptoExtKt.aesEncrypt(password, randomString))));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "crossinline body: (T) ->…ult as T)\n        }\n    }");
        Observable<Result<Boolean>> subscribeOn = doOnNext.startWith((Observable<Result<Boolean>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo699io());
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
        Observable<Result<String>> subscribeOn = this.pinCodeRepository.readPasswordByPinCode(pinCode, uuid, z).startWith((Observable<Result<String>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "pinCodeRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }
}
