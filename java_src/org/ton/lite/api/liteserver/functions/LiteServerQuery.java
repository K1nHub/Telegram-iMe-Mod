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
import org.ton.p044tl.TlCodec;
import org.ton.p044tl.TlReader;
import org.ton.p044tl.TlWriter;
/* compiled from: LiteServerQuery.kt */
@Serializable
/* loaded from: classes6.dex */
public final class LiteServerQuery {
    public static final Companion Companion = new Companion(null);
    private final byte[] data;

    public String toString() {
        return "LiteServerQuery(data=" + Arrays.toString(this.data) + ')';
    }

    public /* synthetic */ LiteServerQuery(int i, byte[] bArr, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, LiteServerQuery$$serializer.INSTANCE.getDescriptor());
        }
        this.data = bArr;
    }

    public LiteServerQuery(byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.data = data;
    }

    public final byte[] getData() {
        return this.data;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LiteServerQuery) && Arrays.equals(this.data, ((LiteServerQuery) obj).data);
    }

    public int hashCode() {
        return Arrays.hashCode(this.data);
    }

    /* compiled from: LiteServerQuery.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlCodec<LiteServerQuery> {
        private final /* synthetic */ LiteServerQueryTlConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.p044tl.TlDecoder
        public LiteServerQuery decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return this.$$delegate_0.decode(reader);
        }

        @Override // org.ton.p044tl.TlDecoder
        public LiteServerQuery decodeBoxed(Input input) {
            Intrinsics.checkNotNullParameter(input, "input");
            return this.$$delegate_0.decodeBoxed(input);
        }

        @Override // org.ton.p044tl.TlDecoder
        public LiteServerQuery decodeBoxed(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return this.$$delegate_0.decodeBoxed(reader);
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encode(Output output, LiteServerQuery value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encode(output, (Output) value);
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encode(TlWriter writer, LiteServerQuery value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encode(writer, value);
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encodeBoxed(Output output, LiteServerQuery value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encodeBoxed(output, (Output) value);
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encodeBoxed(TlWriter writer, LiteServerQuery value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encodeBoxed(writer, (TlWriter) value);
        }

        @Override // org.ton.p044tl.TlEncoder
        public byte[] encodeToByteArray(LiteServerQuery value, boolean z) {
            Intrinsics.checkNotNullParameter(value, "value");
            return this.$$delegate_0.encodeToByteArray(value, z);
        }

        private Companion() {
            this.$$delegate_0 = LiteServerQueryTlConstructor.INSTANCE;
        }

        public final KSerializer<LiteServerQuery> serializer() {
            return LiteServerQuery$$serializer.INSTANCE;
        }
    }
}
