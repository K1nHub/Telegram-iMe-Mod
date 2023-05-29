package com.iMe.storage.data.manager.crypto.blockchains;

import com.iMe.storage.domain.model.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: BTCBlockchainCryptoWalletManagerImpl.kt */
/* loaded from: classes3.dex */
final class BTCBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$2 extends Lambda implements Function1<Throwable, Result<? extends String>> {
    public static final BTCBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$2 INSTANCE = new BTCBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$2();

    BTCBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<String> invoke(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.success("");
    }
}
