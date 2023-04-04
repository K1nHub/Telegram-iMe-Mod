package com.iMe.storage.data.manager.crypto;

import com.iMe.storage.domain.model.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: TRONBlockchainCryptoWalletManagerImpl.kt */
/* loaded from: classes3.dex */
final class TRONBlockchainCryptoWalletManagerImpl$generateMnemonic$2 extends Lambda implements Function1<Throwable, Result<? extends String>> {
    public static final TRONBlockchainCryptoWalletManagerImpl$generateMnemonic$2 INSTANCE = new TRONBlockchainCryptoWalletManagerImpl$generateMnemonic$2();

    TRONBlockchainCryptoWalletManagerImpl$generateMnemonic$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<String> invoke(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.success("");
    }
}
