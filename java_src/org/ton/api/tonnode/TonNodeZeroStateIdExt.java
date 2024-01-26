package org.ton.api.tonnode;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.p045tl.ByteString;
import org.ton.p045tl.ByteStringSerializer;
import org.ton.p045tl.TlConstructor;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* compiled from: TonNodeZeroStateIdExt.kt */
@Serializable
/* loaded from: classes6.dex */
public final class TonNodeZeroStateIdExt {
    public static final Companion Companion = new Companion(null);
    private final ByteString fileHash;
    private final ByteString rootHash;
    private final int workchain;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TonNodeZeroStateIdExt) {
            TonNodeZeroStateIdExt tonNodeZeroStateIdExt = (TonNodeZeroStateIdExt) obj;
            return this.workchain == tonNodeZeroStateIdExt.workchain && Intrinsics.areEqual(this.rootHash, tonNodeZeroStateIdExt.rootHash) && Intrinsics.areEqual(this.fileHash, tonNodeZeroStateIdExt.fileHash);
        }
        return false;
    }

    public int hashCode() {
        return (((this.workchain * 31) + this.rootHash.hashCode()) * 31) + this.fileHash.hashCode();
    }

    public /* synthetic */ TonNodeZeroStateIdExt(int i, int i2, ByteString byteString, ByteString byteString2, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, TonNodeZeroStateIdExt$$serializer.INSTANCE.getDescriptor());
        }
        this.workchain = i2;
        this.rootHash = byteString;
        this.fileHash = byteString2;
    }

    public TonNodeZeroStateIdExt(int i, ByteString rootHash, ByteString fileHash) {
        Intrinsics.checkNotNullParameter(rootHash, "rootHash");
        Intrinsics.checkNotNullParameter(fileHash, "fileHash");
        this.workchain = i;
        this.rootHash = rootHash;
        this.fileHash = fileHash;
    }

    public static final /* synthetic */ void write$Self(TonNodeZeroStateIdExt tonNodeZeroStateIdExt, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeIntElement(serialDescriptor, 0, tonNodeZeroStateIdExt.workchain);
        ByteStringSerializer byteStringSerializer = ByteStringSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, byteStringSerializer, tonNodeZeroStateIdExt.rootHash);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, byteStringSerializer, tonNodeZeroStateIdExt.fileHash);
    }

    public final int getWorkchain() {
        return this.workchain;
    }

    public final ByteString getRootHash() {
        return this.rootHash;
    }

    public final ByteString getFileHash() {
        return this.fileHash;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TonNodeZeroStateIdExt(TonNodeBlockIdExt tonNodeBlockIdExt) {
        this(tonNodeBlockIdExt.getWorkchain(), tonNodeBlockIdExt.rootHash(), tonNodeBlockIdExt.fileHash());
        Intrinsics.checkNotNullParameter(tonNodeBlockIdExt, "tonNodeBlockIdExt");
    }

    public final boolean isValid() {
        return this.workchain != Integer.MIN_VALUE;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('(');
        sb.append(this.workchain);
        sb.append(':');
        sb.append(this.rootHash);
        sb.append(':');
        sb.append(this.fileHash);
        sb.append(')');
        return sb.toString();
    }

    /* compiled from: TonNodeZeroStateIdExt.kt */
    /* loaded from: classes6.dex */
    public static final class Companion extends TlConstructor<TonNodeZeroStateIdExt> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
            super("tonNode.zeroStateIdExt workchain:int root_hash:int256 file_hash:int256 = tonNode.ZeroStateIdExt", null, 2, null);
        }

        public final KSerializer<TonNodeZeroStateIdExt> serializer() {
            return TonNodeZeroStateIdExt$$serializer.INSTANCE;
        }

        @Override // org.ton.p045tl.TlDecoder
        public TonNodeZeroStateIdExt decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return new TonNodeZeroStateIdExt(reader.readInt(), reader.readByteString(32), reader.readByteString(32));
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(TlWriter writer, TonNodeZeroStateIdExt value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            writer.writeInt(value.getWorkchain());
            writer.writeRaw(value.getRootHash());
            writer.writeRaw(value.getFileHash());
        }
    }
}
