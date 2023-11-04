package com.iMe.manager.wallet.create;

import com.iMe.model.wallet.crypto.create.WalletCreationType;
import com.iMe.storage.domain.model.crypto.BlockchainType;
/* compiled from: WalletCreateManagerDelegate.kt */
/* loaded from: classes3.dex */
public interface WalletCreateManagerDelegate {
    void startWalletCreationFlow(WalletCreationType walletCreationType, BlockchainType blockchainType);

    /* compiled from: WalletCreateManagerDelegate.kt */
    /* renamed from: com.iMe.manager.wallet.create.WalletCreateManagerDelegate$-CC  reason: invalid class name */
    /* loaded from: classes3.dex */
    public final /* synthetic */ class CC {
        public static /* synthetic */ void startWalletCreationFlow$default(WalletCreateManagerDelegate walletCreateManagerDelegate, WalletCreationType walletCreationType, BlockchainType blockchainType, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: startWalletCreationFlow");
            }
            if ((i & 2) != 0) {
                blockchainType = null;
            }
            walletCreateManagerDelegate.startWalletCreationFlow(walletCreationType, blockchainType);
        }
    }
}
