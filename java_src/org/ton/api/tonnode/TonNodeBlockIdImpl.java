package org.ton.api.tonnode;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.UStringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.api.tonnode.TonNodeBlockId;
/* compiled from: TonNodeBlockId.kt */
@Serializable
/* loaded from: classes6.dex */
final class TonNodeBlockIdImpl implements TonNodeBlockId {
    public static final Companion Companion = new Companion(null);
    private final int seqno;
    private final long shard;
    private final int workchain;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TonNodeBlockIdImpl) {
            TonNodeBlockIdImpl tonNodeBlockIdImpl = (TonNodeBlockIdImpl) obj;
            return this.workchain == tonNodeBlockIdImpl.workchain && this.shard == tonNodeBlockIdImpl.shard && this.seqno == tonNodeBlockIdImpl.seqno;
        }
        return false;
    }

    public int hashCode() {
        return (((this.workchain * 31) + ProfileData$$ExternalSyntheticBackport0.m1018m(this.shard)) * 31) + this.seqno;
    }

    /* compiled from: TonNodeBlockId.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<TonNodeBlockIdImpl> serializer() {
            return TonNodeBlockIdImpl$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ TonNodeBlockIdImpl(int i, int i2, long j, int i3, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, TonNodeBlockIdImpl$$serializer.INSTANCE.getDescriptor());
        }
        this.workchain = i2;
        this.shard = j;
        this.seqno = i3;
    }

    public TonNodeBlockIdImpl(int i, long j, int i2) {
        this.workchain = i;
        this.shard = j;
        this.seqno = i2;
    }

    public static final /* synthetic */ void write$Self(TonNodeBlockIdImpl tonNodeBlockIdImpl, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeIntElement(serialDescriptor, 0, tonNodeBlockIdImpl.getWorkchain());
        compositeEncoder.encodeLongElement(serialDescriptor, 1, tonNodeBlockIdImpl.getShard());
        compositeEncoder.encodeIntElement(serialDescriptor, 2, tonNodeBlockIdImpl.getSeqno());
    }

    @Override // org.ton.api.tonnode.TonNodeBlockId
    public boolean isMasterchain() {
        return TonNodeBlockId.DefaultImpls.isMasterchain(this);
    }

    @Override // org.ton.api.tonnode.TonNodeBlockId
    public boolean isValid() {
        return TonNodeBlockId.DefaultImpls.isValid(this);
    }

    @Override // org.ton.api.tonnode.TonNodeBlockId
    public int getWorkchain() {
        return this.workchain;
    }

    @Override // org.ton.api.tonnode.TonNodeBlockId
    public long getShard() {
        return this.shard;
    }

    @Override // org.ton.api.tonnode.TonNodeBlockId
    public int getSeqno() {
        return this.seqno;
    }

    public String toString() {
        String padStart;
        StringBuilder sb = new StringBuilder();
        sb.append('(');
        sb.append(getWorkchain());
        sb.append(':');
        padStart = StringsKt__StringsKt.padStart(UStringsKt.m2057toStringJSWoG40(ULong.m1994constructorimpl(Shard.m5072constructorimpl(getShard())), 16), 16, '0');
        sb.append(padStart);
        sb.append(':');
        sb.append(getSeqno());
        sb.append(')');
        return sb.toString();
    }
}
