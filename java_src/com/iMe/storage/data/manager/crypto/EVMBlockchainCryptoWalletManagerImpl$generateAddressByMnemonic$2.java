package com.iMe.storage.data.manager.crypto;

import com.iMe.storage.domain.model.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: EVMBlockchainCryptoWalletManagerImpl.kt */
/* loaded from: classes3.dex */
final class EVMBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$2 extends Lambda implements Function1<Throwable, Result<? extends String>> {
    public static final EVMBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$2 INSTANCE = new EVMBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$2();

    EVMBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<String> invoke(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.success("");
    }
}