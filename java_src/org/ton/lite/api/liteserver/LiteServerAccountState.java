package org.ton.lite.api.liteserver;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.api.tonnode.TonNodeBlockIdExt;
import org.ton.api.tonnode.TonNodeBlockIdExt$$serializer;
import org.ton.crypto.Base64ByteArraySerializer;
import org.ton.p045tl.TlConstructor;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* compiled from: LiteServerAccountState.kt */
@Serializable
/* loaded from: classes6.dex */
public final class LiteServerAccountState {
    public static final Companion Companion = new Companion(null);

    /* renamed from: id */
    private final TonNodeBlockIdExt f2118id;
    private final byte[] proof;
    private final TonNodeBlockIdExt shardBlock;
    private final byte[] shardProof;
    private final byte[] state;

    public String toString() {
        return "LiteServerAccountState(id=" + this.f2118id + ", shardBlock=" + this.shardBlock + ", shardProof=" + Arrays.toString(this.shardProof) + ", proof=" + Arrays.toString(this.proof) + ", state=" + Arrays.toString(this.state) + ')';
    }

    public /* synthetic */ LiteServerAccountState(int i, TonNodeBlockIdExt tonNodeBlockIdExt, TonNodeBlockIdExt tonNodeBlockIdExt2, byte[] bArr, byte[] bArr2, byte[] bArr3, SerializationConstructorMarker serializationConstructorMarker) {
        if (31 != (i & 31)) {
            PluginExceptionsKt.throwMissingFieldException(i, 31, LiteServerAccountState$$serializer.INSTANCE.getDescriptor());
        }
        this.f2118id = tonNodeBlockIdExt;
        this.shardBlock = tonNodeBlockIdExt2;
        this.shardProof = bArr;
        this.proof = bArr2;
        this.state = bArr3;
    }

    public LiteServerAccountState(TonNodeBlockIdExt id, TonNodeBlockIdExt shardBlock, byte[] shardProof, byte[] proof, byte[] state) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(shardBlock, "shardBlock");
        Intrinsics.checkNotNullParameter(shardProof, "shardProof");
        Intrinsics.checkNotNullParameter(proof, "proof");
        Intrinsics.checkNotNullParameter(state, "state");
        this.f2118id = id;
        this.shardBlock = shardBlock;
        this.shardProof = shardProof;
        this.proof = proof;
        this.state = state;
    }

    public static final /* synthetic */ void write$Self(LiteServerAccountState liteServerAccountState, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        TonNodeBlockIdExt$$serializer tonNodeBlockIdExt$$serializer = TonNodeBlockIdExt$$serializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, tonNodeBlockIdExt$$serializer, liteServerAccountState.f2118id);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, tonNodeBlockIdExt$$serializer, liteServerAccountState.shardBlock);
        Base64ByteArraySerializer base64ByteArraySerializer = Base64ByteArraySerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, base64ByteArraySerializer, liteServerAccountState.shardProof);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, base64ByteArraySerializer, liteServerAccountState.proof);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 4, base64ByteArraySerializer, liteServerAccountState.state);
    }

    public final TonNodeBlockIdExt getId() {
        return this.f2118id;
    }

    public final TonNodeBlockIdExt getShardBlock() {
        return this.shardBlock;
    }

    public final byte[] getShardProof() {
        return this.shardProof;
    }

    public final byte[] getProof() {
        return this.proof;
    }

    public final byte[] getState() {
        return this.state;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LiteServerAccountState) {
            LiteServerAccountState liteServerAccountState = (LiteServerAccountState) obj;
            return Intrinsics.areEqual(this.f2118id, liteServerAccountState.f2118id) && Intrinsics.areEqual(this.shardBlock, liteServerAccountState.shardBlock) && Arrays.equals(this.shardProof, liteServerAccountState.shardProof) && Arrays.equals(this.proof, liteServerAccountState.proof) && Arrays.equals(this.state, liteServerAccountState.state);
        }
        return false;
    }

    public int hashCode() {
        return (((((((this.f2118id.hashCode() * 31) + this.shardBlock.hashCode()) * 31) + Arrays.hashCode(this.shardProof)) * 31) + Arrays.hashCode(this.proof)) * 31) + Arrays.hashCode(this.state);
    }

    /* compiled from: LiteServerAccountState.kt */
    /* loaded from: classes6.dex */
    public static final class Companion extends TlConstructor<LiteServerAccountState> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
            super("liteServer.accountState id:tonNode.blockIdExt shardblk:tonNode.blockIdExt shard_proof:bytes proof:bytes state:bytes = liteServer.AccountState", null, 2, null);
        }

        public final KSerializer<LiteServerAccountState> serializer() {
            return LiteServerAccountState$$serializer.INSTANCE;
        }

        @Override // org.ton.p045tl.TlDecoder
        public LiteServerAccountState decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            TonNodeBlockIdExt.Companion companion = TonNodeBlockIdExt.Companion;
            return new LiteServerAccountState(companion.decode(reader), companion.decode(reader), reader.readBytes(), reader.readBytes(), reader.readBytes());
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(TlWriter writer, LiteServerAccountState value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            TonNodeBlockIdExt.Companion companion = TonNodeBlockIdExt.Companion;
            companion.encode(writer, (TlWriter) value.getId());
            companion.encode(writer, (TlWriter) value.getShardBlock());
            TlWriter.writeBytes$default(writer, value.getShardProof(), 0, 0, 6, (Object) null);
            TlWriter.writeBytes$default(writer, value.getProof(), 0, 0, 6, (Object) null);
            TlWriter.writeBytes$default(writer, value.getState(), 0, 0, 6, (Object) null);
        }
    }
}
