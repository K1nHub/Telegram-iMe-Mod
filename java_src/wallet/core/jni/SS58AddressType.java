package wallet.core.jni;
/* loaded from: classes5.dex */
public enum SS58AddressType {
    POLKADOT((byte) 0),
    KUSAMA((byte) 2);
    
    private final byte value;

    SS58AddressType(byte value) {
        this.value = value;
    }

    public byte value() {
        return this.value;
    }

    public static SS58AddressType createFromValue(byte value) {
        if (value != 0) {
            if (value != 2) {
                return null;
            }
            return KUSAMA;
        }
        return POLKADOT;
    }
}
