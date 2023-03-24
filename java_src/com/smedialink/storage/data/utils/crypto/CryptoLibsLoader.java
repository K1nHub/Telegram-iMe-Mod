package com.smedialink.storage.data.utils.crypto;
/* compiled from: CryptoLibsLoader.kt */
/* loaded from: classes3.dex */
public final class CryptoLibsLoader {
    public static final CryptoLibsLoader INSTANCE = new CryptoLibsLoader();
    private static boolean isTrustWalletCoreInitialized;

    private CryptoLibsLoader() {
    }

    public final void initTrustWalletCoreLibrary() {
        if (isTrustWalletCoreInitialized) {
            return;
        }
        System.loadLibrary("TrustWalletCore");
        isTrustWalletCoreInitialized = true;
    }
}
