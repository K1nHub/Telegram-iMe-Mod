package wallet.core.jni;

import java.security.InvalidParameterException;
/* loaded from: classes6.dex */
public final class HDWallet {
    private long nativeHandle;

    public static native PublicKey getPublicKeyFromExtended(String extended, CoinType coin, String derivationPath);

    static native long nativeCreate(int strength, String passphrase);

    static native long nativeCreateWithEntropy(byte[] entropy, String passphrase);

    static native long nativeCreateWithMnemonic(String mnemonic, String passphrase);

    static native long nativeCreateWithMnemonicCheck(String mnemonic, String passphrase, boolean check);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void nativeDelete(long handle);

    public native byte[] entropy();

    public native String getAddressDerivation(CoinType coin, Derivation derivation);

    public native String getAddressForCoin(CoinType coin);

    public native PrivateKey getDerivedKey(CoinType coin, int account, int change, int address);

    public native String getExtendedPrivateKey(Purpose purpose, CoinType coin, HDVersion version);

    public native String getExtendedPrivateKeyAccount(Purpose purpose, CoinType coin, Derivation derivation, HDVersion version, int account);

    public native String getExtendedPrivateKeyDerivation(Purpose purpose, CoinType coin, Derivation derivation, HDVersion version);

    public native String getExtendedPublicKey(Purpose purpose, CoinType coin, HDVersion version);

    public native String getExtendedPublicKeyAccount(Purpose purpose, CoinType coin, Derivation derivation, HDVersion version, int account);

    public native String getExtendedPublicKeyDerivation(Purpose purpose, CoinType coin, Derivation derivation, HDVersion version);

    public native PrivateKey getKey(CoinType coin, String derivationPath);

    public native PrivateKey getKeyByCurve(Curve curve, String derivationPath);

    public native PrivateKey getKeyDerivation(CoinType coin, Derivation derivation);

    public native PrivateKey getKeyForCoin(CoinType coin);

    public native PrivateKey getMasterKey(Curve curve);

    public native String mnemonic();

    public native byte[] seed();

    private HDWallet() {
        this.nativeHandle = 0L;
    }

    static HDWallet createFromNative(long nativeHandle) {
        HDWallet hDWallet = new HDWallet();
        hDWallet.nativeHandle = nativeHandle;
        HDWalletPhantomReference.register(hDWallet, nativeHandle);
        return hDWallet;
    }

    public HDWallet(int strength, String passphrase) {
        long nativeCreate = nativeCreate(strength, passphrase);
        this.nativeHandle = nativeCreate;
        if (nativeCreate == 0) {
            throw new InvalidParameterException();
        }
        HDWalletPhantomReference.register(this, nativeCreate);
    }

    public HDWallet(String mnemonic, String passphrase) {
        long nativeCreateWithMnemonic = nativeCreateWithMnemonic(mnemonic, passphrase);
        this.nativeHandle = nativeCreateWithMnemonic;
        if (nativeCreateWithMnemonic == 0) {
            throw new InvalidParameterException();
        }
        HDWalletPhantomReference.register(this, nativeCreateWithMnemonic);
    }

    public HDWallet(String mnemonic, String passphrase, boolean check) {
        long nativeCreateWithMnemonicCheck = nativeCreateWithMnemonicCheck(mnemonic, passphrase, check);
        this.nativeHandle = nativeCreateWithMnemonicCheck;
        if (nativeCreateWithMnemonicCheck == 0) {
            throw new InvalidParameterException();
        }
        HDWalletPhantomReference.register(this, nativeCreateWithMnemonicCheck);
    }

    public HDWallet(byte[] entropy, String passphrase) {
        long nativeCreateWithEntropy = nativeCreateWithEntropy(entropy, passphrase);
        this.nativeHandle = nativeCreateWithEntropy;
        if (nativeCreateWithEntropy == 0) {
            throw new InvalidParameterException();
        }
        HDWalletPhantomReference.register(this, nativeCreateWithEntropy);
    }
}
