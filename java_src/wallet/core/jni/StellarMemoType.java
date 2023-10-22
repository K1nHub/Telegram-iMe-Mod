package wallet.core.jni;
/* loaded from: classes4.dex */
public enum StellarMemoType {
    NONE(0),
    TEXT(1),
    ID(2),
    HASH(3),
    RETURN(4);
    
    private final int value;

    StellarMemoType(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static StellarMemoType createFromValue(int value) {
        if (value != 0) {
            if (value != 1) {
                if (value != 2) {
                    if (value != 3) {
                        if (value != 4) {
                            return null;
                        }
                        return RETURN;
                    }
                    return HASH;
                }
                return ID;
            }
            return TEXT;
        }
        return NONE;
    }
}
