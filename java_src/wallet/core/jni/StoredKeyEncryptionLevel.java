package wallet.core.jni;
/* loaded from: classes4.dex */
public enum StoredKeyEncryptionLevel {
    DEFAULT(0),
    MINIMAL(1),
    WEAK(2),
    STANDARD(3);
    
    private final int value;

    StoredKeyEncryptionLevel(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static StoredKeyEncryptionLevel createFromValue(int value) {
        if (value != 0) {
            if (value != 1) {
                if (value != 2) {
                    if (value != 3) {
                        return null;
                    }
                    return STANDARD;
                }
                return WEAK;
            }
            return MINIMAL;
        }
        return DEFAULT;
    }
}
