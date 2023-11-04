package org.ton.p045tl;

import io.ktor.utils.p032io.core.Input;
import io.ktor.utils.p032io.core.Output;
import kotlin.jvm.internal.Intrinsics;
import org.ton.p045tl.TlDecoder;
import org.ton.p045tl.TlEncoder;
/* compiled from: TlCodec.kt */
/* renamed from: org.ton.tl.TlCodec */
/* loaded from: classes6.dex */
public interface TlCodec<T> extends TlDecoder<T>, TlEncoder<T> {

    /* compiled from: TlCodec.kt */
    /* renamed from: org.ton.tl.TlCodec$DefaultImpls */
    /* loaded from: classes6.dex */
    public static final class DefaultImpls {
        public static <T> T decodeBoxed(TlCodec<T> tlCodec, Input input) {
            Intrinsics.checkNotNullParameter(input, "input");
            return (T) TlDecoder.DefaultImpls.decodeBoxed(tlCodec, input);
        }

        public static <T> T decodeBoxed(TlCodec<T> tlCodec, byte[] byteArray) {
            Intrinsics.checkNotNullParameter(byteArray, "byteArray");
            return (T) TlDecoder.DefaultImpls.decodeBoxed(tlCodec, byteArray);
        }

        public static <T> void encode(TlCodec<T> tlCodec, Output output, T t) {
            Intrinsics.checkNotNullParameter(output, "output");
            TlEncoder.DefaultImpls.encode(tlCodec, output, t);
        }

        public static <T> void encodeBoxed(TlCodec<T> tlCodec, Output output, T t) {
            Intrinsics.checkNotNullParameter(output, "output");
            TlEncoder.DefaultImpls.encodeBoxed(tlCodec, output, t);
        }

        public static <T> byte[] encodeToByteArray(TlCodec<T> tlCodec, T t, boolean z) {
            return TlEncoder.DefaultImpls.encodeToByteArray(tlCodec, t, z);
        }

        public static <T> byte[] hash(TlCodec<T> tlCodec, T t) {
            return TlEncoder.DefaultImpls.hash(tlCodec, t);
        }
    }
}
