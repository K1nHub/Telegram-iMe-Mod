package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.UIntSerializer;
import kotlinx.serialization.internal.ULongSerializer;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: ShardStateUnsplit.kt */
@Serializable
/* loaded from: classes6.dex */
public final class ShardStateUnsplit implements ShardState {
    private final CellRef<ShardAccounts> accounts;
    private final boolean beforeSplit;
    private final Maybe<CellRef<McStateExtra>> custom;
    private final long genLt;
    private final int genUtime;
    private final int globalId;
    private final int minRefMcSeqno;
    private final CellRef<OutMsgQueueInfo> outMsgQueueInfo;

    /* renamed from: r1 */
    private final CellRef<ShardStateUnsplitAux> f2038r1;
    private final int seqNo;
    private final ShardIdent shardId;
    private final int vertSeqNo;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, null, null, null, new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), null, new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), new SealedClassSerializer("org.ton.block.Maybe", Reflection.getOrCreateKotlinClass(Maybe.class), new KClass[]{Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)}, new KSerializer[]{Just.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), Nothing.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new C7523x50c509b1("@type")})};

    public /* synthetic */ ShardStateUnsplit(int i, int i2, ShardIdent shardIdent, UInt uInt, int i3, UInt uInt2, ULong uLong, UInt uInt3, CellRef cellRef, boolean z, CellRef cellRef2, CellRef cellRef3, Maybe maybe, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, shardIdent, uInt, i3, uInt2, uLong, uInt3, cellRef, z, cellRef2, cellRef3, maybe, serializationConstructorMarker);
    }

    public /* synthetic */ ShardStateUnsplit(int i, ShardIdent shardIdent, int i2, int i3, int i4, long j, int i5, CellRef cellRef, boolean z, CellRef cellRef2, CellRef cellRef3, Maybe maybe, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, shardIdent, i2, i3, i4, j, i5, cellRef, z, cellRef2, cellRef3, maybe);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ShardStateUnsplit) {
            ShardStateUnsplit shardStateUnsplit = (ShardStateUnsplit) obj;
            return this.globalId == shardStateUnsplit.globalId && Intrinsics.areEqual(this.shardId, shardStateUnsplit.shardId) && this.seqNo == shardStateUnsplit.seqNo && this.vertSeqNo == shardStateUnsplit.vertSeqNo && this.genUtime == shardStateUnsplit.genUtime && this.genLt == shardStateUnsplit.genLt && this.minRefMcSeqno == shardStateUnsplit.minRefMcSeqno && Intrinsics.areEqual(this.outMsgQueueInfo, shardStateUnsplit.outMsgQueueInfo) && this.beforeSplit == shardStateUnsplit.beforeSplit && Intrinsics.areEqual(this.accounts, shardStateUnsplit.accounts) && Intrinsics.areEqual(this.f2038r1, shardStateUnsplit.f2038r1) && Intrinsics.areEqual(this.custom, shardStateUnsplit.custom);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((((((((((this.globalId * 31) + this.shardId.hashCode()) * 31) + UInt.m1969hashCodeimpl(this.seqNo)) * 31) + this.vertSeqNo) * 31) + UInt.m1969hashCodeimpl(this.genUtime)) * 31) + ULong.m1991hashCodeimpl(this.genLt)) * 31) + UInt.m1969hashCodeimpl(this.minRefMcSeqno)) * 31) + this.outMsgQueueInfo.hashCode()) * 31;
        boolean z = this.beforeSplit;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((((((hashCode + i) * 31) + this.accounts.hashCode()) * 31) + this.f2038r1.hashCode()) * 31) + this.custom.hashCode();
    }

    private ShardStateUnsplit(int i, int i2, ShardIdent shardIdent, UInt uInt, int i3, UInt uInt2, ULong uLong, UInt uInt3, CellRef<OutMsgQueueInfo> cellRef, boolean z, CellRef<ShardAccounts> cellRef2, CellRef<ShardStateUnsplitAux> cellRef3, Maybe<CellRef<McStateExtra>> maybe, SerializationConstructorMarker serializationConstructorMarker) {
        if (4095 != (i & 4095)) {
            PluginExceptionsKt.throwMissingFieldException(i, 4095, ShardStateUnsplit$$serializer.INSTANCE.getDescriptor());
        }
        this.globalId = i2;
        this.shardId = shardIdent;
        this.seqNo = uInt.m1971unboximpl();
        this.vertSeqNo = i3;
        this.genUtime = uInt2.m1971unboximpl();
        this.genLt = uLong.m1993unboximpl();
        this.minRefMcSeqno = uInt3.m1971unboximpl();
        this.outMsgQueueInfo = cellRef;
        this.beforeSplit = z;
        this.accounts = cellRef2;
        this.f2038r1 = cellRef3;
        this.custom = maybe;
    }

    private ShardStateUnsplit(int i, ShardIdent shardId, int i2, int i3, int i4, long j, int i5, CellRef<OutMsgQueueInfo> outMsgQueueInfo, boolean z, CellRef<ShardAccounts> accounts, CellRef<ShardStateUnsplitAux> r1, Maybe<CellRef<McStateExtra>> custom) {
        Intrinsics.checkNotNullParameter(shardId, "shardId");
        Intrinsics.checkNotNullParameter(outMsgQueueInfo, "outMsgQueueInfo");
        Intrinsics.checkNotNullParameter(accounts, "accounts");
        Intrinsics.checkNotNullParameter(r1, "r1");
        Intrinsics.checkNotNullParameter(custom, "custom");
        this.globalId = i;
        this.shardId = shardId;
        this.seqNo = i2;
        this.vertSeqNo = i3;
        this.genUtime = i4;
        this.genLt = j;
        this.minRefMcSeqno = i5;
        this.outMsgQueueInfo = outMsgQueueInfo;
        this.beforeSplit = z;
        this.accounts = accounts;
        this.f2038r1 = r1;
        this.custom = custom;
    }

    public static final /* synthetic */ void write$Self(ShardStateUnsplit shardStateUnsplit, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeIntElement(serialDescriptor, 0, shardStateUnsplit.globalId);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, ShardIdent$$serializer.INSTANCE, shardStateUnsplit.shardId);
        UIntSerializer uIntSerializer = UIntSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, uIntSerializer, UInt.m1966boximpl(shardStateUnsplit.seqNo));
        compositeEncoder.encodeIntElement(serialDescriptor, 3, shardStateUnsplit.vertSeqNo);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 4, uIntSerializer, UInt.m1966boximpl(shardStateUnsplit.genUtime));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 5, ULongSerializer.INSTANCE, ULong.m1988boximpl(shardStateUnsplit.genLt));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 6, uIntSerializer, UInt.m1966boximpl(shardStateUnsplit.minRefMcSeqno));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 7, kSerializerArr[7], shardStateUnsplit.outMsgQueueInfo);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 8, shardStateUnsplit.beforeSplit);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 9, kSerializerArr[9], shardStateUnsplit.accounts);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 10, kSerializerArr[10], shardStateUnsplit.f2038r1);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 11, kSerializerArr[11], shardStateUnsplit.custom);
    }

    public final int getGlobalId() {
        return this.globalId;
    }

    public final ShardIdent getShardId() {
        return this.shardId;
    }

    /* renamed from: getSeqNo-pVg5ArA  reason: not valid java name */
    public final int m5046getSeqNopVg5ArA() {
        return this.seqNo;
    }

    public final int getVertSeqNo() {
        return this.vertSeqNo;
    }

    /* renamed from: getGenUtime-pVg5ArA  reason: not valid java name */
    public final int m5044getGenUtimepVg5ArA() {
        return this.genUtime;
    }

    /* renamed from: getGenLt-s-VKNKU  reason: not valid java name */
    public final long m5043getGenLtsVKNKU() {
        return this.genLt;
    }

    /* renamed from: getMinRefMcSeqno-pVg5ArA  reason: not valid java name */
    public final int m5045getMinRefMcSeqnopVg5ArA() {
        return this.minRefMcSeqno;
    }

    public final CellRef<OutMsgQueueInfo> getOutMsgQueueInfo() {
        return this.outMsgQueueInfo;
    }

    public final boolean getBeforeSplit() {
        return this.beforeSplit;
    }

    public final CellRef<ShardAccounts> getAccounts() {
        return this.accounts;
    }

    public final CellRef<ShardStateUnsplitAux> getR1() {
        return this.f2038r1;
    }

    public final Maybe<CellRef<McStateExtra>> getCustom() {
        return this.custom;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: ShardStateUnsplit.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<ShardStateUnsplit> {
        private final /* synthetic */ ShardStateUnsplitTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public ShardStateUnsplit loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public ShardStateUnsplit loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, ShardStateUnsplit value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<ShardStateUnsplit> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = ShardStateUnsplitTlbConstructor.INSTANCE;
        }

        public final KSerializer<ShardStateUnsplit> serializer() {
            return ShardStateUnsplit$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("shard_state");
        open.field("global_id", Integer.valueOf(this.globalId));
        open.field("shard_id", this.shardId);
        open.field("seq_no", UInt.m1966boximpl(this.seqNo));
        open.field("vert_seq_no", Integer.valueOf(this.vertSeqNo));
        open.field("gen_utime", UInt.m1966boximpl(this.genUtime));
        open.field("gen_lt", ULong.m1988boximpl(this.genLt));
        open.field("min_ref_mc_seqno", UInt.m1966boximpl(this.minRefMcSeqno));
        open.field("out_msg_queue_info", this.outMsgQueueInfo);
        open.field("before_split", Boolean.valueOf(this.beforeSplit));
        open.field("accounts", this.accounts);
        open.field(this.f2038r1);
        open.field("custom", this.custom);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
