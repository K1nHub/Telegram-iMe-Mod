package org.ton.lite.api.liteserver;

import io.ktor.utils.p032io.core.Input;
import io.ktor.utils.p032io.core.Output;
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
import org.ton.api.tonnode.TonNodeZeroStateIdExt;
import org.ton.api.tonnode.TonNodeZeroStateIdExt$$serializer;
import org.ton.crypto.HexByteArraySerializer;
import org.ton.p045tl.TlCodec;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* compiled from: LiteServerMasterchainInfo.kt */
@Serializable
/* loaded from: classes6.dex */
public final class LiteServerMasterchainInfo {
    public static final Companion Companion = new Companion(null);
    private final TonNodeZeroStateIdExt init;
    private final TonNodeBlockIdExt last;
    private final byte[] stateRootHash;

    public String toString() {
        return "LiteServerMasterchainInfo(last=" + this.last + ", stateRootHash=" + Arrays.toString(this.stateRootHash) + ", init=" + this.init + ')';
    }

    public /* synthetic */ LiteServerMasterchainInfo(int i, TonNodeBlockIdExt tonNodeBlockIdExt, byte[] bArr, TonNodeZeroStateIdExt tonNodeZeroStateIdExt, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, LiteServerMasterchainInfo$$serializer.INSTANCE.getDescriptor());
        }
        this.last = tonNodeBlockIdExt;
        this.stateRootHash = bArr;
        this.init = tonNodeZeroStateIdExt;
        if (bArr.length == 32) {
            return;
        }
        throw new IllegalArgumentException(("Invalid stateRootHash size: " + bArr.length + ", expected: 32").toString());
    }

    public LiteServerMasterchainInfo(TonNodeBlockIdExt last, byte[] stateRootHash, TonNodeZeroStateIdExt init) {
        Intrinsics.checkNotNullParameter(last, "last");
        Intrinsics.checkNotNullParameter(stateRootHash, "stateRootHash");
        Intrinsics.checkNotNullParameter(init, "init");
        this.last = last;
        this.stateRootHash = stateRootHash;
        this.init = init;
        if (stateRootHash.length == 32) {
            return;
        }
        throw new IllegalArgumentException(("Invalid stateRootHash size: " + stateRootHash.length + ", expected: 32").toString());
    }

    public static final /* synthetic */ void write$Self(LiteServerMasterchainInfo liteServerMasterchainInfo, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, TonNodeBlockIdExt$$serializer.INSTANCE, liteServerMasterchainInfo.last);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, HexByteArraySerializer.INSTANCE, liteServerMasterchainInfo.stateRootHash);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, TonNodeZeroStateIdExt$$serializer.INSTANCE, liteServerMasterchainInfo.init);
    }

    public final TonNodeBlockIdExt getLast() {
        return this.last;
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
        if (obj instanceof LiteServerMasterchainInfo) {
            LiteServerMasterchainInfo liteServerMasterchainInfo = (LiteServerMasterchainInfo) obj;
            return Intrinsics.areEqual(this.last, liteServerMasterchainInfo.last) && Arrays.equals(this.stateRootHash, liteServerMasterchainInfo.stateRootHash) && Intrinsics.areEqual(this.init, liteServerMasterchainInfo.init);
        }
        return false;
    }

    public int hashCode() {
        return (((this.last.hashCode() * 31) + Arrays.hashCode(this.stateRootHash)) * 31) + this.init.hashCode();
    }

    /* compiled from: LiteServerMasterchainInfo.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlCodec<LiteServerMasterchainInfo> {
        private final /* synthetic */ LiteServerMasterchainInfoTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.p045tl.TlDecoder
        public LiteServerMasterchainInfo decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return this.$$delegate_0.decode(reader);
        }

        @Override // org.ton.p045tl.TlDecoder
        public LiteServerMasterchainInfo decodeBoxed(Input input) {
            Intrinsics.checkNotNullParameter(input, "input");
            return this.$$delegate_0.decodeBoxed(input);
        }

        @Override // org.ton.p045tl.TlDecoder
        public LiteServerMasterchainInfo decodeBoxed(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return this.$$delegate_0.decodeBoxed(reader);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(Output output, LiteServerMasterchainInfo value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encode(output, (Output) value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(TlWriter writer, LiteServerMasterchainInfo value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encode(writer, value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encodeBoxed(Output output, LiteServerMasterchainInfo value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encodeBoxed(output, (Output) value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encodeBoxed(TlWriter writer, LiteServerMasterchainInfo value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encodeBoxed(writer, (TlWriter) value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public byte[] encodeToByteArray(LiteServerMasterchainInfo value, boolean z) {
            Intrinsics.checkNotNullParameter(value, "value");
            return this.$$delegate_0.encodeToByteArray(value, z);
        }

        private Companion() {
            this.$$delegate_0 = LiteServerMasterchainInfoTlbConstructor.INSTANCE;
        }

        public final KSerializer<LiteServerMasterchainInfo> serializer() {
            return LiteServerMasterchainInfo$$serializer.INSTANCE;
        }
    }
}
