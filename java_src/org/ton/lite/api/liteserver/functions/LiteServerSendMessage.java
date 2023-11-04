package org.ton.lite.api.liteserver.functions;

import io.ktor.utils.p032io.core.Input;
import io.ktor.utils.p032io.core.Output;
import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.p045tl.TlCodec;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* compiled from: LiteServerSendMessage.kt */
@Serializable
/* loaded from: classes6.dex */
public final class LiteServerSendMessage {
    public static final Companion Companion = new Companion(null);
    private final byte[] body;

    public String toString() {
        return "LiteServerSendMessage(body=" + Arrays.toString(this.body) + ')';
    }

    public /* synthetic */ LiteServerSendMessage(int i, byte[] bArr, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, LiteServerSendMessage$$serializer.INSTANCE.getDescriptor());
        }
        this.body = bArr;
    }

    public LiteServerSendMessage(byte[] body) {
        Intrinsics.checkNotNullParameter(body, "body");
        this.body = body;
    }

    public final byte[] getBody() {
        return this.body;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LiteServerSendMessage) && Arrays.equals(this.body, ((LiteServerSendMessage) obj).body);
    }

    public int hashCode() {
        return Arrays.hashCode(this.body);
    }

    /* compiled from: LiteServerSendMessage.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlCodec<LiteServerSendMessage> {
        private final /* synthetic */ LiteServerSendMessageTlConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.p045tl.TlDecoder
        public LiteServerSendMessage decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return this.$$delegate_0.decode(reader);
        }

        @Override // org.ton.p045tl.TlDecoder
        public LiteServerSendMessage decodeBoxed(Input input) {
            Intrinsics.checkNotNullParameter(input, "input");
            return this.$$delegate_0.decodeBoxed(input);
        }

        @Override // org.ton.p045tl.TlDecoder
        public LiteServerSendMessage decodeBoxed(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return this.$$delegate_0.decodeBoxed(reader);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(Output output, LiteServerSendMessage value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encode(output, (Output) value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(TlWriter writer, LiteServerSendMessage value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encode(writer, value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encodeBoxed(Output output, LiteServerSendMessage value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encodeBoxed(output, (Output) value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encodeBoxed(TlWriter writer, LiteServerSendMessage value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encodeBoxed(writer, (TlWriter) value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public byte[] encodeToByteArray(LiteServerSendMessage value, boolean z) {
            Intrinsics.checkNotNullParameter(value, "value");
            return this.$$delegate_0.encodeToByteArray(value, z);
        }

        private Companion() {
            this.$$delegate_0 = LiteServerSendMessageTlConstructor.INSTANCE;
        }

        public final KSerializer<LiteServerSendMessage> serializer() {
            return LiteServerSendMessage$$serializer.INSTANCE;
        }
    }
}
