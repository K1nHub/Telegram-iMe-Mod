package com.iMe.storage.domain.repository.wallet;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.SessionTokens;
import com.iMe.storage.domain.model.wallet.User;
import io.reactivex.Completable;
import io.reactivex.Observable;
/* compiled from: WalletSessionRepository.kt */
/* loaded from: classes3.dex */
public interface WalletSessionRepository {
    User getCurrentAccount();

    Observable<String> getCurrentAccountToken(boolean z);

    Observable<Result<SessionTokens>> login(String str);

    Completable logout();

    Observable<Result<SessionTokens>> refreshToken(String str);
}
