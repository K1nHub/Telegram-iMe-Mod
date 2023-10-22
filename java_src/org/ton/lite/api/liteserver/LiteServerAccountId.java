package org.ton.lite.api.liteserver;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.p044tl.ByteString;
import org.ton.p044tl.ByteStringSerializer;
import org.ton.p044tl.TlConstructor;
import org.ton.p044tl.TlReader;
import org.ton.p044tl.TlWriter;
/* compiled from: LiteServerAccountId.kt */
@Serializable
/* loaded from: classes6.dex */
public final class LiteServerAccountId {
    public static final Companion Companion = new Companion(null);

    /* renamed from: id */
    private final ByteString f2086id;
    private final int workchain;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LiteServerAccountId) {
            LiteServerAccountId liteServerAccountId = (LiteServerAccountId) obj;
            return this.workchain == liteServerAccountId.workchain && Intrinsics.areEqual(this.f2086id, liteServerAccountId.f2086id);
        }
        return false;
    }

    public int hashCode() {
        return (this.workchain * 31) + this.f2086id.hashCode();
    }

    public String toString() {
        return "LiteServerAccountId(workchain=" + this.workchain + ", id=" + this.f2086id + ')';
    }

    public /* synthetic */ LiteServerAccountId(int i, int i2, ByteString byteString, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, LiteServerAccountId$$serializer.INSTANCE.getDescriptor());
        }
        this.workchain = i2;
        this.f2086id = byteString;
    }

    public LiteServerAccountId(int i, ByteString id) {
        Intrinsics.checkNotNullParameter(id, "id");
        this.workchain = i;
        this.f2086id = id;
    }

    public static final /* synthetic */ void write$Self(LiteServerAccountId liteServerAccountId, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeIntElement(serialDescriptor, 0, liteServerAccountId.workchain);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, ByteStringSerializer.INSTANCE, liteServerAccountId.f2086id);
    }

    public final int workchain() {
        return this.workchain;
    }

    /* renamed from: id */
    public final ByteString m24id() {
        return this.f2086id;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LiteServerAccountId(int i, byte[] id) {
        this(i, ByteString.Companion.of$default(ByteString.Companion, id, 0, 0, 3, null));
        Intrinsics.checkNotNullParameter(id, "id");
    }

    /* compiled from: LiteServerAccountId.kt */
    /* loaded from: classes6.dex */
    public static final class Companion extends TlConstructor<LiteServerAccountId> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
            super("liteServer.accountId workchain:int id:int256 = liteServer.AccountId", null, 2, null);
        }

        public final KSerializer<LiteServerAccountId> serializer() {
            return LiteServerAccountId$$serializer.INSTANCE;
        }

        @Override // org.ton.p044tl.TlDecoder
        public LiteServerAccountId decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return new LiteServerAccountId(reader.readInt(), reader.readRaw(32));
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encode(TlWriter writer, LiteServerAccountId value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            writer.writeInt(value.workchain());
            writer.writeRaw(value.m24id().toByteArray());
        }
    }
}
