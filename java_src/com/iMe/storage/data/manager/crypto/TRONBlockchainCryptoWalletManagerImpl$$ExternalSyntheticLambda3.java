package com.iMe.storage.data.manager.crypto;

import com.iMe.storage.domain.model.Result;
import java.util.concurrent.Callable;
/* loaded from: classes3.dex */
public final /* synthetic */ class TRONBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda3 implements Callable {
    public static final /* synthetic */ TRONBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda3 INSTANCE = new TRONBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda3();

    private /* synthetic */ TRONBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda3() {
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Result generateMnemonic$lambda$2;
        generateMnemonic$lambda$2 = TRONBlockchainCryptoWalletManagerImpl.generateMnemonic$lambda$2();
        return generateMnemonic$lambda$2;
    }
}
