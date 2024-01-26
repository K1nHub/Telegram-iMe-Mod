package wallet.core.jni;
/* loaded from: classes5.dex */
public final class Cardano {
    private byte[] bytes;

    public static native String getStakingAddress(String baseAddress);

    public static native long minAdaAmount(byte[] tokenBundle);

    private Cardano() {
    }

    static Cardano createFromNative(byte[] bytes) {
        Cardano cardano = new Cardano();
        cardano.bytes = bytes;
        return cardano;
    }
}
