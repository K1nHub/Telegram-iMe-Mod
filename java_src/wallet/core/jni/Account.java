package wallet.core.jni;

import java.security.InvalidParameterException;
/* loaded from: classes6.dex */
public final class Account {
    private long nativeHandle;

    static native long nativeCreate(String address, CoinType coin, Derivation derivation, String derivationPath, String publicKey, String extendedPublicKey);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void nativeDelete(long handle);

    public native String address();

    public native CoinType coin();

    public native Derivation derivation();

    public native String derivationPath();

    public native String extendedPublicKey();

    public native String publicKey();

    private Account() {
        this.nativeHandle = 0L;
    }

    static Account createFromNative(long nativeHandle) {
        Account account = new Account();
        account.nativeHandle = nativeHandle;
        AccountPhantomReference.register(account, nativeHandle);
        return account;
    }

    public Account(String address, CoinType coin, Derivation derivation, String derivationPath, String publicKey, String extendedPublicKey) {
        long nativeCreate = nativeCreate(address, coin, derivation, derivationPath, publicKey, extendedPublicKey);
        this.nativeHandle = nativeCreate;
        if (nativeCreate == 0) {
            throw new InvalidParameterException();
        }
        AccountPhantomReference.register(this, nativeCreate);
    }
}
