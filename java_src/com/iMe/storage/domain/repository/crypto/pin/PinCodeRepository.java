package com.iMe.storage.domain.repository.crypto.pin;

import com.iMe.storage.domain.model.Result;
import io.reactivex.Observable;
/* compiled from: PinCodeRepository.kt */
/* loaded from: classes3.dex */
public interface PinCodeRepository {
    Observable<Result<String>> readPasswordByPinCode(String str, String str2, boolean z);
}
