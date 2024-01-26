package org.ton.lite.api.liteserver;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.p045tl.TlConstructor;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* compiled from: LiteServerSendMsgStatus.kt */
@Serializable
/* loaded from: classes6.dex */
public final class LiteServerSendMsgStatus {
    public static final Companion Companion = new Companion(null);
    private final int status;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LiteServerSendMsgStatus) && this.status == ((LiteServerSendMsgStatus) obj).status;
    }

    public int hashCode() {
        return this.status;
    }

    public String toString() {
        return "LiteServerSendMsgStatus(status=" + this.status + ')';
    }

    public LiteServerSendMsgStatus(int i) {
        this.status = i;
    }

    public /* synthetic */ LiteServerSendMsgStatus(int i, int i2, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, LiteServerSendMsgStatus$$serializer.INSTANCE.getDescriptor());
        }
        this.status = i2;
    }

    public final int getStatus() {
        return this.status;
    }

    /* compiled from: LiteServerSendMsgStatus.kt */
    /* loaded from: classes6.dex */
    public static final class Companion extends TlConstructor<LiteServerSendMsgStatus> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
            super("liteServer.sendMsgStatus status:int = liteServer.SendMsgStatus", null, 2, null);
        }

        public final KSerializer<LiteServerSendMsgStatus> serializer() {
            return LiteServerSendMsgStatus$$serializer.INSTANCE;
        }

        @Override // org.ton.p045tl.TlDecoder
        public LiteServerSendMsgStatus decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return new LiteServerSendMsgStatus(reader.readInt());
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(TlWriter writer, LiteServerSendMsgStatus value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            writer.writeInt(value.getStatus());
        }
    }
}
