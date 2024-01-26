package wallet.core.jni;
/* loaded from: classes5.dex */
public enum AESPaddingMode {
    ZERO(0),
    PKCS7(1);
    
    private final int value;

    AESPaddingMode(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static AESPaddingMode createFromValue(int value) {
        if (value != 0) {
            if (value != 1) {
                return null;
            }
            return PKCS7;
        }
        return ZERO;
    }
}
