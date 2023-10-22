package wallet.core.java;

import com.google.protobuf.MessageLite;
import com.google.protobuf.Parser;
import wallet.core.jni.CoinType;
/* loaded from: classes6.dex */
public class AnySigner {
    public static native byte[] nativePlan(byte[] data, int coin);

    public static native byte[] nativeSign(byte[] data, int coin);

    public static native String signJSON(String json, byte[] key, int coin);

    public static native boolean supportsJSON(int coin);

    public static <T extends MessageLite> T sign(MessageLite input, CoinType coin, Parser<T> parser) throws Exception {
        return parser.parseFrom(nativeSign(input.toByteArray(), coin.value()));
    }

    public static <T extends MessageLite> T plan(MessageLite input, CoinType coin, Parser<T> parser) throws Exception {
        return parser.parseFrom(nativePlan(input.toByteArray(), coin.value()));
    }
}
