package wallet.core.jni;
/* loaded from: classes4.dex */
public final class Mnemonic {
    private byte[] bytes;

    public static native boolean isValid(String mnemonic);

    public static native boolean isValidWord(String word);

    public static native String suggest(String prefix);

    private Mnemonic() {
    }

    static Mnemonic createFromNative(byte[] bytes) {
        Mnemonic mnemonic = new Mnemonic();
        mnemonic.bytes = bytes;
        return mnemonic;
    }
}
