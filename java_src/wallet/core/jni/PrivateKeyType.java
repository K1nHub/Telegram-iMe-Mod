package wallet.core.jni;
/* loaded from: classes6.dex */
public enum PrivateKeyType {
    DEFAULT(0),
    CARDANO(1);
    
    private final int value;

    PrivateKeyType(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static PrivateKeyType createFromValue(int value) {
        if (value != 0) {
            if (value != 1) {
                return null;
            }
            return CARDANO;
        }
        return DEFAULT;
    }
}
