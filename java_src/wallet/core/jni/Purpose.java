package wallet.core.jni;
/* loaded from: classes4.dex */
public enum Purpose {
    BIP44(44),
    BIP49(49),
    BIP84(84),
    BIP1852(1852);
    
    private final int value;

    Purpose(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static Purpose createFromValue(int value) {
        if (value != 44) {
            if (value != 49) {
                if (value != 84) {
                    if (value != 1852) {
                        return null;
                    }
                    return BIP1852;
                }
                return BIP84;
            }
            return BIP49;
        }
        return BIP44;
    }
}
