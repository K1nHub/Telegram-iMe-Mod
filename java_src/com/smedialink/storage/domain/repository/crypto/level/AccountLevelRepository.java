package com.smedialink.storage.domain.repository.crypto.level;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.level.AccountLevel;
import io.reactivex.Observable;
/* compiled from: AccountLevelRepository.kt */
/* loaded from: classes3.dex */
public interface AccountLevelRepository {
    Observable<Result<Boolean>> changeLevelVisibility(boolean z);

    Observable<Result<AccountLevel>> getAccountLevel(long j);

    Observable<Result<AccountLevel>> getAccountLevelRemote(long j);

    Observable<Result<Boolean>> getLevelVisibility();
}
