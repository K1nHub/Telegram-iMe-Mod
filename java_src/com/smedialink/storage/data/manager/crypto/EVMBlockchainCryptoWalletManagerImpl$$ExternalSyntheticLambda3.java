package com.smedialink.storage.data.manager.crypto;

import com.smedialink.storage.domain.model.Result;
import java.util.concurrent.Callable;
/* loaded from: classes3.dex */
public final /* synthetic */ class EVMBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda3 implements Callable {
    public static final /* synthetic */ EVMBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda3 INSTANCE = new EVMBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda3();

    private /* synthetic */ EVMBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda3() {
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Result generateMnemonic$lambda$3;
        generateMnemonic$lambda$3 = EVMBlockchainCryptoWalletManagerImpl.generateMnemonic$lambda$3();
        return generateMnemonic$lambda$3;
    }
}
