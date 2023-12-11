package org.ton.api.tonnode;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import io.ktor.utils.p032io.core.Input;
import io.ktor.utils.p032io.core.Output;
import java.util.Locale;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.UStringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.api.tonnode.TonNodeBlockId;
import org.ton.p045tl.ByteString;
import org.ton.p045tl.ByteStringSerializer;
import org.ton.p045tl.TlCodec;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* compiled from: TonNodeBlockIdExt.kt */
@Serializable
/* loaded from: classes6.dex */
public final class TonNodeBlockIdExt implements TonNodeBlockId {
    public static final Companion Companion = new Companion(null);
    private final ByteString fileHash;
    private final ByteString rootHash;
    private final int seqno;
    private final long shard;
    private final int workchain;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TonNodeBlockIdExt) {
            TonNodeBlockIdExt tonNodeBlockIdExt = (TonNodeBlockIdExt) obj;
            return this.workchain == tonNodeBlockIdExt.workchain && this.shard == tonNodeBlockIdExt.shard && this.seqno == tonNodeBlockIdExt.seqno && Intrinsics.areEqual(this.rootHash, tonNodeBlockIdExt.rootHash) && Intrinsics.areEqual(this.fileHash, tonNodeBlockIdExt.fileHash);
        }
        return false;
    }

    public int hashCode() {
        return (((((((this.workchain * 31) + ProfileData$$ExternalSyntheticBackport0.m1018m(this.shard)) * 31) + this.seqno) * 31) + this.rootHash.hashCode()) * 31) + this.fileHash.hashCode();
    }

    public /* synthetic */ TonNodeBlockIdExt(int i, int i2, long j, int i3, ByteString byteString, ByteString byteString2, SerializationConstructorMarker serializationConstructorMarker) {
        if (31 != (i & 31)) {
            PluginExceptionsKt.throwMissingFieldException(i, 31, TonNodeBlockIdExt$$serializer.INSTANCE.getDescriptor());
        }
        this.workchain = i2;
        this.shard = j;
        this.seqno = i3;
        this.rootHash = byteString;
        this.fileHash = byteString2;
    }

    public TonNodeBlockIdExt(int i, long j, int i2, ByteString rootHash, ByteString fileHash) {
        Intrinsics.checkNotNullParameter(rootHash, "rootHash");
        Intrinsics.checkNotNullParameter(fileHash, "fileHash");
        this.workchain = i;
        this.shard = j;
        this.seqno = i2;
        this.rootHash = rootHash;
        this.fileHash = fileHash;
    }

    public static final /* synthetic */ void write$Self(TonNodeBlockIdExt tonNodeBlockIdExt, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeIntElement(serialDescriptor, 0, tonNodeBlockIdExt.getWorkchain());
        compositeEncoder.encodeLongElement(serialDescriptor, 1, tonNodeBlockIdExt.getShard());
        compositeEncoder.encodeIntElement(serialDescriptor, 2, tonNodeBlockIdExt.getSeqno());
        ByteStringSerializer byteStringSerializer = ByteStringSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, byteStringSerializer, tonNodeBlockIdExt.rootHash);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 4, byteStringSerializer, tonNodeBlockIdExt.fileHash);
    }

    @Override // org.ton.api.tonnode.TonNodeBlockId
    public boolean isMasterchain() {
        return TonNodeBlockId.DefaultImpls.isMasterchain(this);
    }

    @Override // org.ton.api.tonnode.TonNodeBlockId
    public boolean isValid() {
        return TonNodeBlockId.DefaultImpls.isValid(this);
    }

    public boolean isValidFull() {
        return TonNodeBlockId.DefaultImpls.isValidFull(this);
    }

    public /* synthetic */ TonNodeBlockIdExt(TonNodeBlockId tonNodeBlockId, ByteString byteString, ByteString byteString2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? TonNodeBlockId.Companion.m47of(Integer.MIN_VALUE, 0L, 0) : tonNodeBlockId, (i & 2) != 0 ? ByteString.Companion.m23of(new byte[32]) : byteString, (i & 4) != 0 ? ByteString.Companion.m23of(new byte[32]) : byteString2);
    }

    @Override // org.ton.api.tonnode.TonNodeBlockId
    /* renamed from: workchain */
    public int getWorkchain() {
        return this.workchain;
    }

    @Override // org.ton.api.tonnode.TonNodeBlockId
    /* renamed from: shard */
    public long getShard() {
        return this.shard;
    }

    @Override // org.ton.api.tonnode.TonNodeBlockId
    /* renamed from: seqno */
    public int getSeqno() {
        return this.seqno;
    }

    public final ByteString rootHash() {
        return this.rootHash;
    }

    public final ByteString fileHash() {
        return this.fileHash;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TonNodeBlockIdExt(int r15, long r16, int r18, byte[] r19, byte[] r20) {
        /*
            r14 = this;
            java.lang.String r0 = "rootHash"
            r2 = r19
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.lang.String r0 = "fileHash"
            r7 = r20
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            org.ton.tl.ByteString$Companion r0 = org.ton.p045tl.ByteString.Companion
            r3 = 0
            r4 = 0
            r5 = 3
            r6 = 0
            r1 = r0
            org.ton.tl.ByteString r12 = org.ton.p045tl.ByteString.Companion.of$default(r1, r2, r3, r4, r5, r6)
            r2 = r20
            org.ton.tl.ByteString r13 = org.ton.p045tl.ByteString.Companion.of$default(r1, r2, r3, r4, r5, r6)
            r7 = r14
            r8 = r15
            r9 = r16
            r11 = r18
            r7.<init>(r8, r9, r11, r12, r13)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.ton.api.tonnode.TonNodeBlockIdExt.<init>(int, long, int, byte[], byte[]):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TonNodeBlockIdExt(TonNodeBlockId tonNodeBlockId, ByteString rootHash, ByteString fileHash) {
        this(tonNodeBlockId.getWorkchain(), tonNodeBlockId.getShard(), tonNodeBlockId.getSeqno(), rootHash, fileHash);
        Intrinsics.checkNotNullParameter(tonNodeBlockId, "tonNodeBlockId");
        Intrinsics.checkNotNullParameter(rootHash, "rootHash");
        Intrinsics.checkNotNullParameter(fileHash, "fileHash");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(getWorkchain());
        sb.append(":");
        String upperCase = UStringsKt.m2059toStringJSWoG40(ULong.m1996constructorimpl(getShard()), 16).toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        sb.append(upperCase);
        sb.append(":");
        sb.append(getSeqno());
        sb.append(")");
        sb.append(":");
        sb.append(this.rootHash.encodeHex());
        sb.append(":");
        sb.append(this.fileHash.encodeHex());
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    /* compiled from: TonNodeBlockIdExt.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlCodec<TonNodeBlockIdExt> {
        private final /* synthetic */ TonNodeBlockIdExtTlConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.p045tl.TlDecoder
        public TonNodeBlockIdExt decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return this.$$delegate_0.decode(reader);
        }

        @Override // org.ton.p045tl.TlDecoder
        public TonNodeBlockIdExt decodeBoxed(Input input) {
            Intrinsics.checkNotNullParameter(input, "input");
            return this.$$delegate_0.decodeBoxed(input);
        }

        @Override // org.ton.p045tl.TlDecoder
        public TonNodeBlockIdExt decodeBoxed(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return this.$$delegate_0.decodeBoxed(reader);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(Output output, TonNodeBlockIdExt value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encode(output, (Output) value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(TlWriter writer, TonNodeBlockIdExt value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encode(writer, value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encodeBoxed(Output output, TonNodeBlockIdExt value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encodeBoxed(output, (Output) value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encodeBoxed(TlWriter writer, TonNodeBlockIdExt value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encodeBoxed(writer, (TlWriter) value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public byte[] encodeToByteArray(TonNodeBlockIdExt value, boolean z) {
            Intrinsics.checkNotNullParameter(value, "value");
            return this.$$delegate_0.encodeToByteArray(value, z);
        }

        private Companion() {
            this.$$delegate_0 = TonNodeBlockIdExtTlConstructor.INSTANCE;
        }

        public final KSerializer<TonNodeBlockIdExt> serializer() {
            return TonNodeBlockIdExt$$serializer.INSTANCE;
        }
    }
}
