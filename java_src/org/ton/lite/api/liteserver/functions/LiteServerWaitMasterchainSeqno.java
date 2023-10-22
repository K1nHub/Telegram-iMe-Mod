package org.ton.lite.api.liteserver.functions;

import io.ktor.utils.p032io.core.Input;
import io.ktor.utils.p032io.core.Output;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.p044tl.TlCodec;
import org.ton.p044tl.TlReader;
import org.ton.p044tl.TlWriter;
/* compiled from: LiteServerWaitMasterchainSeqno.kt */
@Serializable
/* loaded from: classes6.dex */
public final class LiteServerWaitMasterchainSeqno {
    public static final Companion Companion = new Companion(null);
    private final int seqno;
    private final int timeoutMs;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LiteServerWaitMasterchainSeqno) {
            LiteServerWaitMasterchainSeqno liteServerWaitMasterchainSeqno = (LiteServerWaitMasterchainSeqno) obj;
            return this.seqno == liteServerWaitMasterchainSeqno.seqno && this.timeoutMs == liteServerWaitMasterchainSeqno.timeoutMs;
        }
        return false;
    }

    public int hashCode() {
        return (this.seqno * 31) + this.timeoutMs;
    }

    public String toString() {
        return "LiteServerWaitMasterchainSeqno(seqno=" + this.seqno + ", timeoutMs=" + this.timeoutMs + ')';
    }

    public LiteServerWaitMasterchainSeqno(int i, int i2) {
        this.seqno = i;
        this.timeoutMs = i2;
    }

    public /* synthetic */ LiteServerWaitMasterchainSeqno(int i, int i2, int i3, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, LiteServerWaitMasterchainSeqno$$serializer.INSTANCE.getDescriptor());
        }
        this.seqno = i2;
        this.timeoutMs = i3;
    }

    public static final /* synthetic */ void write$Self(LiteServerWaitMasterchainSeqno liteServerWaitMasterchainSeqno, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeIntElement(serialDescriptor, 0, liteServerWaitMasterchainSeqno.seqno);
        compositeEncoder.encodeIntElement(serialDescriptor, 1, liteServerWaitMasterchainSeqno.timeoutMs);
    }

    public final int getSeqno() {
        return this.seqno;
    }

    public final int getTimeoutMs() {
        return this.timeoutMs;
    }

    /* compiled from: LiteServerWaitMasterchainSeqno.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlCodec<LiteServerWaitMasterchainSeqno> {
        private final /* synthetic */ LiteServerWaitMasterchainSeqnoTlConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.p044tl.TlDecoder
        public LiteServerWaitMasterchainSeqno decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return this.$$delegate_0.decode(reader);
        }

        @Override // org.ton.p044tl.TlDecoder
        public LiteServerWaitMasterchainSeqno decodeBoxed(Input input) {
            Intrinsics.checkNotNullParameter(input, "input");
            return this.$$delegate_0.decodeBoxed(input);
        }

        @Override // org.ton.p044tl.TlDecoder
        public LiteServerWaitMasterchainSeqno decodeBoxed(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return this.$$delegate_0.decodeBoxed(reader);
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encode(Output output, LiteServerWaitMasterchainSeqno value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encode(output, (Output) value);
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encode(TlWriter writer, LiteServerWaitMasterchainSeqno value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encode(writer, value);
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encodeBoxed(Output output, LiteServerWaitMasterchainSeqno value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encodeBoxed(output, (Output) value);
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encodeBoxed(TlWriter writer, LiteServerWaitMasterchainSeqno value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encodeBoxed(writer, (TlWriter) value);
        }

        @Override // org.ton.p044tl.TlEncoder
        public byte[] encodeToByteArray(LiteServerWaitMasterchainSeqno value, boolean z) {
            Intrinsics.checkNotNullParameter(value, "value");
            return this.$$delegate_0.encodeToByteArray(value, z);
        }

        private Companion() {
            this.$$delegate_0 = LiteServerWaitMasterchainSeqnoTlConstructor.INSTANCE;
        }

        public final KSerializer<LiteServerWaitMasterchainSeqno> serializer() {
            return LiteServerWaitMasterchainSeqno$$serializer.INSTANCE;
        }
    }
}
