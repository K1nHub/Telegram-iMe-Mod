package org.ton.lite.api.liteserver;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.p045tl.TlConstructor;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* compiled from: LiteServerError.kt */
@Serializable
/* loaded from: classes6.dex */
public final class LiteServerError {
    public static final Companion Companion = new Companion(null);
    private final int code;
    private final String message;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LiteServerError) {
            LiteServerError liteServerError = (LiteServerError) obj;
            return this.code == liteServerError.code && Intrinsics.areEqual(this.message, liteServerError.message);
        }
        return false;
    }

    public int hashCode() {
        return (this.code * 31) + this.message.hashCode();
    }

    public String toString() {
        return "LiteServerError(code=" + this.code + ", message=" + this.message + ')';
    }

    public /* synthetic */ LiteServerError(int i, int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, LiteServerError$$serializer.INSTANCE.getDescriptor());
        }
        this.code = i2;
        this.message = str;
    }

    public LiteServerError(int i, String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.code = i;
        this.message = message;
    }

    public static final /* synthetic */ void write$Self(LiteServerError liteServerError, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeIntElement(serialDescriptor, 0, liteServerError.code);
        compositeEncoder.encodeStringElement(serialDescriptor, 1, liteServerError.message);
    }

    public final int getCode() {
        return this.code;
    }

    public final String getMessage() {
        return this.message;
    }

    /* compiled from: LiteServerError.kt */
    /* loaded from: classes6.dex */
    public static final class Companion extends TlConstructor<LiteServerError> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
            super("liteServer.error code:int message:string = liteServer.Error", null, 2, null);
        }

        public final KSerializer<LiteServerError> serializer() {
            return LiteServerError$$serializer.INSTANCE;
        }

        @Override // org.ton.p045tl.TlDecoder
        public LiteServerError decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return new LiteServerError(reader.readInt(), reader.readString());
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(TlWriter writer, LiteServerError value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            writer.writeInt(value.getCode());
            writer.writeString(value.getMessage());
        }
    }
}
