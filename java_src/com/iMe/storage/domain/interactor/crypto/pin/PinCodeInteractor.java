package com.iMe.storage.domain.interactor.crypto.pin;

import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.repository.crypto.pin.PinCodeRepository;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: PinCodeInteractor.kt */
/* loaded from: classes3.dex */
public final class PinCodeInteractor {
    private final CryptoAccessManager cryptoAccessManager;
    private final PinCodeRepository pinCodeRepository;
    private final SchedulersProvider schedulersProvider;

    public PinCodeInteractor(CryptoAccessManager cryptoAccessManager, PinCodeRepository pinCodeRepository, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(pinCodeRepository, "pinCodeRepository");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.cryptoAccessManager = cryptoAccessManager;
        this.pinCodeRepository = pinCodeRepository;
        this.schedulersProvider = schedulersProvider;
    }

    public final Observable<Result<String>> readPasswordByPinCode(String pinCode, boolean z) {
        Intrinsics.checkNotNullParameter(pinCode, "pinCode");
        Observable<Result<String>> subscribeOn = this.pinCodeRepository.readPasswordByPinCode(pinCode, this.cryptoAccessManager.getLastLoggedInGuid(), z).startWith((Observable<Result<String>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "pinCodeRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }
}
