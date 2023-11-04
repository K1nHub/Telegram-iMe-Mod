package org.ton.lite.api.liteserver.functions;

import io.ktor.utils.p032io.core.Input;
import io.ktor.utils.p032io.core.Output;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.p045tl.TlCodec;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* compiled from: LiteServerGetMasterchainInfoExt.kt */
@Serializable
/* loaded from: classes6.dex */
public final class LiteServerGetMasterchainInfoExt {
    public static final Companion Companion = new Companion(null);
    private final int mode;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LiteServerGetMasterchainInfoExt) && this.mode == ((LiteServerGetMasterchainInfoExt) obj).mode;
    }

    public int hashCode() {
        return this.mode;
    }

    public String toString() {
        return "LiteServerGetMasterchainInfoExt(mode=" + this.mode + ')';
    }

    public LiteServerGetMasterchainInfoExt(int i) {
        this.mode = i;
    }

    public /* synthetic */ LiteServerGetMasterchainInfoExt(int i, int i2, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, LiteServerGetMasterchainInfoExt$$serializer.INSTANCE.getDescriptor());
        }
        this.mode = i2;
    }

    public final int getMode() {
        return this.mode;
    }

    /* compiled from: LiteServerGetMasterchainInfoExt.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlCodec<LiteServerGetMasterchainInfoExt> {
        private final /* synthetic */ LiteServerGetMasterchainInfoExtTlConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.p045tl.TlDecoder
        public LiteServerGetMasterchainInfoExt decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return this.$$delegate_0.decode(reader);
        }

        @Override // org.ton.p045tl.TlDecoder
        public LiteServerGetMasterchainInfoExt decodeBoxed(Input input) {
            Intrinsics.checkNotNullParameter(input, "input");
            return this.$$delegate_0.decodeBoxed(input);
        }

        @Override // org.ton.p045tl.TlDecoder
        public LiteServerGetMasterchainInfoExt decodeBoxed(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return this.$$delegate_0.decodeBoxed(reader);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(Output output, LiteServerGetMasterchainInfoExt value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encode(output, (Output) value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(TlWriter writer, LiteServerGetMasterchainInfoExt value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encode(writer, value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encodeBoxed(Output output, LiteServerGetMasterchainInfoExt value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encodeBoxed(output, (Output) value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encodeBoxed(TlWriter writer, LiteServerGetMasterchainInfoExt value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encodeBoxed(writer, (TlWriter) value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public byte[] encodeToByteArray(LiteServerGetMasterchainInfoExt value, boolean z) {
            Intrinsics.checkNotNullParameter(value, "value");
            return this.$$delegate_0.encodeToByteArray(value, z);
        }

        private Companion() {
            this.$$delegate_0 = LiteServerGetMasterchainInfoExtTlConstructor.INSTANCE;
        }

        public final KSerializer<LiteServerGetMasterchainInfoExt> serializer() {
            return LiteServerGetMasterchainInfoExt$$serializer.INSTANCE;
        }
    }
}
