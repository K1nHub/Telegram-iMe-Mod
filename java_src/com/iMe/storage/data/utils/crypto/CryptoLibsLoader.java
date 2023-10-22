package com.iMe.storage.data.utils.crypto;
/* compiled from: CryptoLibsLoader.kt */
/* loaded from: classes3.dex */
public final class CryptoLibsLoader {
    static {
        new CryptoLibsLoader();
    }

    private CryptoLibsLoader() {
    }

    public static final void initTrustWalletCoreLibrary() {
        System.loadLibrary("TrustWalletCore");
    }
}
