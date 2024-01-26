package wallet.core.jni;
/* loaded from: classes5.dex */
public enum BitcoinSigHashType {
    ALL(1),
    NONE(2),
    SINGLE(3),
    FORK(64),
    FORKBTG(20288);
    
    private final int value;

    public native boolean isNone();

    public native boolean isSingle();

    BitcoinSigHashType(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static BitcoinSigHashType createFromValue(int value) {
        if (value != 1) {
            if (value != 2) {
                if (value != 3) {
                    if (value != 64) {
                        if (value != 20288) {
                            return null;
                        }
                        return FORKBTG;
                    }
                    return FORK;
                }
                return SINGLE;
            }
            return NONE;
        }
        return ALL;
    }
}
