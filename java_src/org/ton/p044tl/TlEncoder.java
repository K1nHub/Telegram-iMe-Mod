package org.ton.p044tl;

import io.ktor.utils.p032io.core.BytePacketBuilder;
import io.ktor.utils.p032io.core.Output;
import io.ktor.utils.p032io.core.StringsKt;
import kotlin.jvm.internal.Intrinsics;
import org.ton.crypto.digest.DigestJvmKt;
/* compiled from: TlEncoder.kt */
/* renamed from: org.ton.tl.TlEncoder */
/* loaded from: classes6.dex */
public interface TlEncoder<T> {
    void encode(Output output, T t);

    void encode(TlWriter tlWriter, T t);

    void encodeBoxed(Output output, T t);

    void encodeBoxed(TlWriter tlWriter, T t);

    byte[] encodeToByteArray(T t, boolean z);

    /* compiled from: TlEncoder.kt */
    /* renamed from: org.ton.tl.TlEncoder$DefaultImpls */
    /* loaded from: classes6.dex */
    public static final class DefaultImpls {
        /* JADX WARN: Multi-variable type inference failed */
        public static <T> void encode(TlEncoder<? super T> tlEncoder, Output output, T t) {
            Intrinsics.checkNotNullParameter(output, "output");
            tlEncoder.encode(new TlWriter(output), (TlWriter) t);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static <T> void encodeBoxed(TlEncoder<? super T> tlEncoder, Output output, T t) {
            Intrinsics.checkNotNullParameter(output, "output");
            tlEncoder.encodeBoxed(new TlWriter(output), (TlWriter) t);
        }

        public static /* synthetic */ byte[] encodeToByteArray$default(TlEncoder tlEncoder, Object obj, boolean z, int i, Object obj2) {
            if (obj2 == null) {
                if ((i & 2) != 0) {
                    z = true;
                }
                return tlEncoder.encodeToByteArray(obj, z);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: encodeToByteArray");
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static <T> byte[] encodeToByteArray(TlEncoder<? super T> tlEncoder, T t, boolean z) {
            BytePacketBuilder bytePacketBuilder = new BytePacketBuilder(null, 1, null);
            if (z) {
                tlEncoder.encodeBoxed((Output) bytePacketBuilder, (BytePacketBuilder) t);
            } else {
                tlEncoder.encode((Output) bytePacketBuilder, (BytePacketBuilder) t);
            }
            return StringsKt.readBytes$default(bytePacketBuilder.build(), 0, 1, null);
        }

        public static <T> byte[] hash(TlEncoder<? super T> tlEncoder, T t) {
            return DigestJvmKt.sha256(encodeToByteArray$default(tlEncoder, t, false, 2, null));
        }
    }
}
