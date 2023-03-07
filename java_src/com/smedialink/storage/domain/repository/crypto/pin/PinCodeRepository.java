package com.smedialink.storage.domain.repository.crypto.pin;

import com.smedialink.storage.domain.model.Result;
import io.reactivex.Observable;
/* compiled from: PinCodeRepository.kt */
/* loaded from: classes3.dex */
public interface PinCodeRepository {
    Observable<Result<Boolean>> createPinCode(String str, String str2, String str3);

    Observable<Result<String>> readPasswordByPinCode(String str, String str2, boolean z);
}
