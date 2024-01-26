package wallet.core.jni;
/* loaded from: classes5.dex */
public enum StoredKeyEncryption {
    AES128CTR(0),
    AES128CBC(1),
    AES192CTR(2),
    AES256CTR(3);
    
    private final int value;

    StoredKeyEncryption(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static StoredKeyEncryption createFromValue(int value) {
        if (value != 0) {
            if (value != 1) {
                if (value != 2) {
                    if (value != 3) {
                        return null;
                    }
                    return AES256CTR;
                }
                return AES192CTR;
            }
            return AES128CBC;
        }
        return AES128CTR;
    }
}
