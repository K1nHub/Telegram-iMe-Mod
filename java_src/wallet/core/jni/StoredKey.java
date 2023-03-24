package wallet.core.jni;

import java.security.InvalidParameterException;
/* loaded from: classes6.dex */
public final class StoredKey {
    private long nativeHandle;

    public static native StoredKey importHDWallet(String mnemonic, String name, byte[] password, CoinType coin);

    public static native StoredKey importHDWalletWithEncryption(String mnemonic, String name, byte[] password, CoinType coin, StoredKeyEncryption encryption);

    public static native StoredKey importJSON(byte[] json);

    public static native StoredKey importPrivateKey(byte[] privateKey, String name, byte[] password, CoinType coin);

    public static native StoredKey importPrivateKeyWithEncryption(byte[] privateKey, String name, byte[] password, CoinType coin, StoredKeyEncryption encryption);

    public static native StoredKey load(String path);

    static native long nativeCreate(String name, byte[] password);

    static native long nativeCreateEncryption(String name, byte[] password, StoredKeyEncryption encryption);

    static native long nativeCreateLevel(String name, byte[] password, StoredKeyEncryptionLevel encryptionLevel);

    static native long nativeCreateLevelAndEncryption(String name, byte[] password, StoredKeyEncryptionLevel encryptionLevel, StoredKeyEncryption encryption);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void nativeDelete(long handle);

    public native Account account(int index);

    public native int accountCount();

    public native Account accountForCoin(CoinType coin, HDWallet wallet2);

    public native Account accountForCoinDerivation(CoinType coin, Derivation derivation, HDWallet wallet2);

    public native void addAccount(String address, CoinType coin, String derivationPath, String publicKey, String extendedPublicKey);

    public native void addAccountDerivation(String address, CoinType coin, Derivation derivation, String derivationPath, String publicKey, String extendedPublicKey);

    public native String decryptMnemonic(byte[] password);

    public native byte[] decryptPrivateKey(byte[] password);

    public native String encryptionParameters();

    public native byte[] exportJSON();

    public native boolean fixAddresses(byte[] password);

    public native String identifier();

    public native boolean isMnemonic();

    public native String name();

    public native PrivateKey privateKey(CoinType coin, byte[] password);

    public native void removeAccountForCoin(CoinType coin);

    public native void removeAccountForCoinDerivation(CoinType coin, Derivation derivation);

    public native void removeAccountForCoinDerivationPath(CoinType coin, String derivationPath);

    public native boolean store(String path);

    public native HDWallet wallet(byte[] password);

    private StoredKey() {
        this.nativeHandle = 0L;
    }

    static StoredKey createFromNative(long nativeHandle) {
        StoredKey storedKey = new StoredKey();
        storedKey.nativeHandle = nativeHandle;
        StoredKeyPhantomReference.register(storedKey, nativeHandle);
        return storedKey;
    }

    public StoredKey(String name, byte[] password, StoredKeyEncryptionLevel encryptionLevel) {
        long nativeCreateLevel = nativeCreateLevel(name, password, encryptionLevel);
        this.nativeHandle = nativeCreateLevel;
        if (nativeCreateLevel == 0) {
            throw new InvalidParameterException();
        }
        StoredKeyPhantomReference.register(this, nativeCreateLevel);
    }

    public StoredKey(String name, byte[] password, StoredKeyEncryptionLevel encryptionLevel, StoredKeyEncryption encryption) {
        long nativeCreateLevelAndEncryption = nativeCreateLevelAndEncryption(name, password, encryptionLevel, encryption);
        this.nativeHandle = nativeCreateLevelAndEncryption;
        if (nativeCreateLevelAndEncryption == 0) {
            throw new InvalidParameterException();
        }
        StoredKeyPhantomReference.register(this, nativeCreateLevelAndEncryption);
    }

    public StoredKey(String name, byte[] password) {
        long nativeCreate = nativeCreate(name, password);
        this.nativeHandle = nativeCreate;
        if (nativeCreate == 0) {
            throw new InvalidParameterException();
        }
        StoredKeyPhantomReference.register(this, nativeCreate);
    }

    public StoredKey(String name, byte[] password, StoredKeyEncryption encryption) {
        long nativeCreateEncryption = nativeCreateEncryption(name, password, encryption);
        this.nativeHandle = nativeCreateEncryption;
        if (nativeCreateEncryption == 0) {
            throw new InvalidParameterException();
        }
        StoredKeyPhantomReference.register(this, nativeCreateEncryption);
    }
}
