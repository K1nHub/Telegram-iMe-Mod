package org.ton.lite.api.liteserver;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ByteArraySerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.api.tonnode.TonNodeBlockIdExt;
import org.ton.api.tonnode.TonNodeBlockIdExt$$serializer;
import org.ton.api.tonnode.TonNodeZeroStateIdExt;
import org.ton.api.tonnode.TonNodeZeroStateIdExt$$serializer;
import org.ton.p044tl.TlConstructor;
import org.ton.p044tl.TlReader;
import org.ton.p044tl.TlWriter;
/* compiled from: LiteServerMasterchainInfoExt.kt */
@Serializable
/* loaded from: classes6.dex */
public final class LiteServerMasterchainInfoExt {
    public static final Companion Companion = new Companion(null);
    private final long capabilities;
    private final TonNodeZeroStateIdExt init;
    private final TonNodeBlockIdExt last;
    private final int lastUtime;
    private final int mode;
    private final int now;
    private final byte[] stateRootHash;
    private final int version;

    public String toString() {
        return "LiteServerMasterchainInfoExt(mode=" + this.mode + ", version=" + this.version + ", capabilities=" + this.capabilities + ", last=" + this.last + ", lastUtime=" + this.lastUtime + ", now=" + this.now + ", stateRootHash=" + Arrays.toString(this.stateRootHash) + ", init=" + this.init + ')';
    }

    public /* synthetic */ LiteServerMasterchainInfoExt(int i, int i2, int i3, long j, TonNodeBlockIdExt tonNodeBlockIdExt, int i4, int i5, byte[] bArr, TonNodeZeroStateIdExt tonNodeZeroStateIdExt, SerializationConstructorMarker serializationConstructorMarker) {
        if (255 != (i & 255)) {
            PluginExceptionsKt.throwMissingFieldException(i, 255, LiteServerMasterchainInfoExt$$serializer.INSTANCE.getDescriptor());
        }
        this.mode = i2;
        this.version = i3;
        this.capabilities = j;
        this.last = tonNodeBlockIdExt;
        this.lastUtime = i4;
        this.now = i5;
        this.stateRootHash = bArr;
        this.init = tonNodeZeroStateIdExt;
    }

    public LiteServerMasterchainInfoExt(int i, int i2, long j, TonNodeBlockIdExt last, int i3, int i4, byte[] stateRootHash, TonNodeZeroStateIdExt init) {
        Intrinsics.checkNotNullParameter(last, "last");
        Intrinsics.checkNotNullParameter(stateRootHash, "stateRootHash");
        Intrinsics.checkNotNullParameter(init, "init");
        this.mode = i;
        this.version = i2;
        this.capabilities = j;
        this.last = last;
        this.lastUtime = i3;
        this.now = i4;
        this.stateRootHash = stateRootHash;
        this.init = init;
    }

    public static final /* synthetic */ void write$Self(LiteServerMasterchainInfoExt liteServerMasterchainInfoExt, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeIntElement(serialDescriptor, 0, liteServerMasterchainInfoExt.mode);
        compositeEncoder.encodeIntElement(serialDescriptor, 1, liteServerMasterchainInfoExt.version);
        compositeEncoder.encodeLongElement(serialDescriptor, 2, liteServerMasterchainInfoExt.capabilities);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, TonNodeBlockIdExt$$serializer.INSTANCE, liteServerMasterchainInfoExt.last);
        compositeEncoder.encodeIntElement(serialDescriptor, 4, liteServerMasterchainInfoExt.lastUtime);
        compositeEncoder.encodeIntElement(serialDescriptor, 5, liteServerMasterchainInfoExt.now);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 6, ByteArraySerializer.INSTANCE, liteServerMasterchainInfoExt.stateRootHash);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 7, TonNodeZeroStateIdExt$$serializer.INSTANCE, liteServerMasterchainInfoExt.init);
    }

    public final int getMode() {
        return this.mode;
    }

    public final int getVersion() {
        return this.version;
    }

    public final long getCapabilities() {
        return this.capabilities;
    }

    public final TonNodeBlockIdExt getLast() {
        return this.last;
    }

    public final int getLastUtime() {
        return this.lastUtime;
    }

    public final int getNow() {
        return this.now;
    }

    public final byte[] getStateRootHash() {
        return this.stateRootHash;
    }

    public final TonNodeZeroStateIdExt getInit() {
        return this.init;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LiteServerMasterchainInfoExt) {
            LiteServerMasterchainInfoExt liteServerMasterchainInfoExt = (LiteServerMasterchainInfoExt) obj;
            return this.mode == liteServerMasterchainInfoExt.mode && this.version == liteServerMasterchainInfoExt.version && this.capabilities == liteServerMasterchainInfoExt.capabilities && Intrinsics.areEqual(this.last, liteServerMasterchainInfoExt.last) && this.lastUtime == liteServerMasterchainInfoExt.lastUtime && this.now == liteServerMasterchainInfoExt.now && Arrays.equals(this.stateRootHash, liteServerMasterchainInfoExt.stateRootHash) && Intrinsics.areEqual(this.init, liteServerMasterchainInfoExt.init);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((this.mode * 31) + this.version) * 31) + ProfileData$$ExternalSyntheticBackport0.m1017m(this.capabilities)) * 31) + this.last.hashCode()) * 31) + this.lastUtime) * 31) + this.now) * 31) + Arrays.hashCode(this.stateRootHash)) * 31) + this.init.hashCode();
    }

    /* compiled from: LiteServerMasterchainInfoExt.kt */
    /* loaded from: classes6.dex */
    public static final class Companion extends TlConstructor<LiteServerMasterchainInfoExt> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
            super("liteServer.masterchainInfoExt mode:# version:int capabilities:long last:tonNode.blockIdExt last_utime:int now:int state_root_hash:int256 init:tonNode.zeroStateIdExt = liteServer.MasterchainInfoExt", null, 2, null);
        }

        public final KSerializer<LiteServerMasterchainInfoExt> serializer() {
            return LiteServerMasterchainInfoExt$$serializer.INSTANCE;
        }

        @Override // org.ton.p044tl.TlDecoder
        public LiteServerMasterchainInfoExt decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return new LiteServerMasterchainInfoExt(reader.readInt(), reader.readInt(), reader.readLong(), TonNodeBlockIdExt.Companion.decode(reader), reader.readInt(), reader.readInt(), reader.readRaw(32), TonNodeZeroStateIdExt.Companion.decode(reader));
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encode(TlWriter writer, LiteServerMasterchainInfoExt value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            writer.writeInt(value.getMode());
            writer.writeInt(value.getVersion());
            writer.writeLong(value.getCapabilities());
            TonNodeBlockIdExt.Companion.encode(writer, (TlWriter) value.getLast());
            writer.writeInt(value.getLastUtime());
            writer.writeInt(value.getNow());
            writer.writeRaw(value.getStateRootHash());
            TonNodeZeroStateIdExt.Companion.encode(writer, (TlWriter) value.getInit());
        }
    }
}
