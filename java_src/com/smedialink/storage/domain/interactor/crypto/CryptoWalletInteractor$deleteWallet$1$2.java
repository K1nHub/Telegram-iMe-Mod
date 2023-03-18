package com.smedialink.storage.domain.interactor.crypto;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.repository.crypto.CryptoWalletRepository;
import io.reactivex.ObservableSource;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CryptoWalletInteractor.kt */
/* loaded from: classes3.dex */
public final class CryptoWalletInteractor$deleteWallet$1$2 extends Lambda implements Function1<Unit, ObservableSource<? extends Result<? extends Boolean>>> {
    final /* synthetic */ CryptoWalletInteractor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoWalletInteractor$deleteWallet$1$2(CryptoWalletInteractor cryptoWalletInteractor) {
        super(1);
        this.this$0 = cryptoWalletInteractor;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<Boolean>> invoke(Unit it) {
        CryptoWalletRepository cryptoWalletRepository;
        Intrinsics.checkNotNullParameter(it, "it");
        cryptoWalletRepository = this.this$0.cryptoWalletRepository;
        return cryptoWalletRepository.clearTokensData();
    }
}
