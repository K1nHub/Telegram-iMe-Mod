package com.iMe.utils.helper.wallet;

import com.iMe.storage.domain.interactor.wallet.WalletSessionInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.SessionTokens;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: AuthHelper.kt */
/* loaded from: classes4.dex */
final class AuthHelper$subscribeToAuthSubject$1$1 extends Lambda implements Function1<String, ObservableSource<? extends Result<? extends SessionTokens>>> {
    public static final AuthHelper$subscribeToAuthSubject$1$1 INSTANCE = new AuthHelper$subscribeToAuthSubject$1$1();

    AuthHelper$subscribeToAuthSubject$1$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<SessionTokens>> invoke(String authUrl) {
        WalletSessionInteractor walletSessionInteractor;
        Intrinsics.checkNotNullParameter(authUrl, "authUrl");
        walletSessionInteractor = AuthHelper.INSTANCE.getWalletSessionInteractor();
        return walletSessionInteractor.login(authUrl);
    }
}
