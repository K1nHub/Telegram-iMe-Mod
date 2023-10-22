package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
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
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbCombinator;
import org.ton.tlb.TlbConstructorKt;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: BlockInfo.kt */
@Serializable
/* loaded from: classes6.dex */
public final class BlockInfo implements TlbObject {
    private final boolean afterMerge;
    private final boolean afterSplit;
    private final boolean beforeSplit;
    private final long endLt;
    private final int flags;
    private final int genCatchainSeqno;
    private final GlobalVersion genSoftware;
    private final int genUtime;
    private final int genValidatorListHashShort;
    private final boolean keyBlock;
    private final CellRef<BlkMasterInfo> masterRef;
    private final int minRefMcSeqno;
    private final boolean notMaster;
    private final int prevKeyBlockSeqno;
    private final CellRef<BlkPrevInfo> prevRef;
    private final CellRef<BlkPrevInfo> prevVertRef;
    private final int seqNo;
    private final ShardIdent shard;
    private final long startLt;
    private final int version;
    private final int vertSeqNo;
    private final boolean vertSeqnoIncr;
    private final boolean wantMerge;
    private final boolean wantSplit;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0])};

    public /* synthetic */ BlockInfo(int i, UInt uInt, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, int i2, int i3, int i4, ShardIdent shardIdent, UInt uInt2, ULong uLong, ULong uLong2, UInt uInt3, UInt uInt4, UInt uInt5, UInt uInt6, GlobalVersion globalVersion, CellRef cellRef, CellRef cellRef2, CellRef cellRef3, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, uInt, z, z2, z3, z4, z5, z6, z7, z8, i2, i3, i4, shardIdent, uInt2, uLong, uLong2, uInt3, uInt4, uInt5, uInt6, globalVersion, cellRef, cellRef2, cellRef3, serializationConstructorMarker);
    }

    public /* synthetic */ BlockInfo(int i, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, int i2, int i3, int i4, ShardIdent shardIdent, int i5, long j, long j2, int i6, int i7, int i8, int i9, GlobalVersion globalVersion, CellRef cellRef, CellRef cellRef2, CellRef cellRef3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, z, z2, z3, z4, z5, z6, z7, z8, i2, i3, i4, shardIdent, i5, j, j2, i6, i7, i8, i9, globalVersion, cellRef, cellRef2, cellRef3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BlockInfo) {
            BlockInfo blockInfo = (BlockInfo) obj;
            return this.version == blockInfo.version && this.notMaster == blockInfo.notMaster && this.afterMerge == blockInfo.afterMerge && this.beforeSplit == blockInfo.beforeSplit && this.afterSplit == blockInfo.afterSplit && this.wantSplit == blockInfo.wantSplit && this.wantMerge == blockInfo.wantMerge && this.keyBlock == blockInfo.keyBlock && this.vertSeqnoIncr == blockInfo.vertSeqnoIncr && this.flags == blockInfo.flags && this.seqNo == blockInfo.seqNo && this.vertSeqNo == blockInfo.vertSeqNo && Intrinsics.areEqual(this.shard, blockInfo.shard) && this.genUtime == blockInfo.genUtime && this.startLt == blockInfo.startLt && this.endLt == blockInfo.endLt && this.genValidatorListHashShort == blockInfo.genValidatorListHashShort && this.genCatchainSeqno == blockInfo.genCatchainSeqno && this.minRefMcSeqno == blockInfo.minRefMcSeqno && this.prevKeyBlockSeqno == blockInfo.prevKeyBlockSeqno && Intrinsics.areEqual(this.genSoftware, blockInfo.genSoftware) && Intrinsics.areEqual(this.masterRef, blockInfo.masterRef) && Intrinsics.areEqual(this.prevRef, blockInfo.prevRef) && Intrinsics.areEqual(this.prevVertRef, blockInfo.prevVertRef);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m1969hashCodeimpl = UInt.m1969hashCodeimpl(this.version) * 31;
        boolean z = this.notMaster;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (m1969hashCodeimpl + i) * 31;
        boolean z2 = this.afterMerge;
        int i3 = z2;
        if (z2 != 0) {
            i3 = 1;
        }
        int i4 = (i2 + i3) * 31;
        boolean z3 = this.beforeSplit;
        int i5 = z3;
        if (z3 != 0) {
            i5 = 1;
        }
        int i6 = (i4 + i5) * 31;
        boolean z4 = this.afterSplit;
        int i7 = z4;
        if (z4 != 0) {
            i7 = 1;
        }
        int i8 = (i6 + i7) * 31;
        boolean z5 = this.wantSplit;
        int i9 = z5;
        if (z5 != 0) {
            i9 = 1;
        }
        int i10 = (i8 + i9) * 31;
        boolean z6 = this.wantMerge;
        int i11 = z6;
        if (z6 != 0) {
            i11 = 1;
        }
        int i12 = (i10 + i11) * 31;
        boolean z7 = this.keyBlock;
        int i13 = z7;
        if (z7 != 0) {
            i13 = 1;
        }
        int i14 = (i12 + i13) * 31;
        boolean z8 = this.vertSeqnoIncr;
        int hashCode = (((((((((((((((((((((((i14 + (z8 ? 1 : z8 ? 1 : 0)) * 31) + this.flags) * 31) + this.seqNo) * 31) + this.vertSeqNo) * 31) + this.shard.hashCode()) * 31) + UInt.m1969hashCodeimpl(this.genUtime)) * 31) + ULong.m1991hashCodeimpl(this.startLt)) * 31) + ULong.m1991hashCodeimpl(this.endLt)) * 31) + UInt.m1969hashCodeimpl(this.genValidatorListHashShort)) * 31) + UInt.m1969hashCodeimpl(this.genCatchainSeqno)) * 31) + UInt.m1969hashCodeimpl(this.minRefMcSeqno)) * 31) + UInt.m1969hashCodeimpl(this.prevKeyBlockSeqno)) * 31;
        GlobalVersion globalVersion = this.genSoftware;
        int hashCode2 = (hashCode + (globalVersion == null ? 0 : globalVersion.hashCode())) * 31;
        CellRef<BlkMasterInfo> cellRef = this.masterRef;
        int hashCode3 = (((hashCode2 + (cellRef == null ? 0 : cellRef.hashCode())) * 31) + this.prevRef.hashCode()) * 31;
        CellRef<BlkPrevInfo> cellRef2 = this.prevVertRef;
        return hashCode3 + (cellRef2 != null ? cellRef2.hashCode() : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private BlockInfo(int i, UInt uInt, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, int i2, int i3, int i4, ShardIdent shardIdent, UInt uInt2, ULong uLong, ULong uLong2, UInt uInt3, UInt uInt4, UInt uInt5, UInt uInt6, GlobalVersion globalVersion, CellRef<BlkMasterInfo> cellRef, CellRef<? extends BlkPrevInfo> cellRef2, CellRef<? extends BlkPrevInfo> cellRef3, SerializationConstructorMarker serializationConstructorMarker) {
        if (16777215 != (i & 16777215)) {
            PluginExceptionsKt.throwMissingFieldException(i, 16777215, BlockInfo$$serializer.INSTANCE.getDescriptor());
        }
        this.version = uInt.m1971unboximpl();
        this.notMaster = z;
        this.afterMerge = z2;
        this.beforeSplit = z3;
        this.afterSplit = z4;
        this.wantSplit = z5;
        this.wantMerge = z6;
        this.keyBlock = z7;
        this.vertSeqnoIncr = z8;
        this.flags = i2;
        this.seqNo = i3;
        this.vertSeqNo = i4;
        this.shard = shardIdent;
        this.genUtime = uInt2.m1971unboximpl();
        this.startLt = uLong.m1993unboximpl();
        this.endLt = uLong2.m1993unboximpl();
        this.genValidatorListHashShort = uInt3.m1971unboximpl();
        this.genCatchainSeqno = uInt4.m1971unboximpl();
        this.minRefMcSeqno = uInt5.m1971unboximpl();
        this.prevKeyBlockSeqno = uInt6.m1971unboximpl();
        this.genSoftware = globalVersion;
        this.masterRef = cellRef;
        this.prevRef = cellRef2;
        this.prevVertRef = cellRef3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private BlockInfo(int i, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, int i2, int i3, int i4, ShardIdent shard, int i5, long j, long j2, int i6, int i7, int i8, int i9, GlobalVersion globalVersion, CellRef<BlkMasterInfo> cellRef, CellRef<? extends BlkPrevInfo> prevRef, CellRef<? extends BlkPrevInfo> cellRef2) {
        Intrinsics.checkNotNullParameter(shard, "shard");
        Intrinsics.checkNotNullParameter(prevRef, "prevRef");
        this.version = i;
        this.notMaster = z;
        this.afterMerge = z2;
        this.beforeSplit = z3;
        this.afterSplit = z4;
        this.wantSplit = z5;
        this.wantMerge = z6;
        this.keyBlock = z7;
        this.vertSeqnoIncr = z8;
        this.flags = i2;
        this.seqNo = i3;
        this.vertSeqNo = i4;
        this.shard = shard;
        this.genUtime = i5;
        this.startLt = j;
        this.endLt = j2;
        this.genValidatorListHashShort = i6;
        this.genCatchainSeqno = i7;
        this.minRefMcSeqno = i8;
        this.prevKeyBlockSeqno = i9;
        this.genSoftware = globalVersion;
        this.masterRef = cellRef;
        this.prevRef = prevRef;
        this.prevVertRef = cellRef2;
    }

    public static final /* synthetic */ void write$Self(BlockInfo blockInfo, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        UIntSerializer uIntSerializer = UIntSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, uIntSerializer, UInt.m1966boximpl(blockInfo.version));
        compositeEncoder.encodeBooleanElement(serialDescriptor, 1, blockInfo.notMaster);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 2, blockInfo.afterMerge);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 3, blockInfo.beforeSplit);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 4, blockInfo.afterSplit);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 5, blockInfo.wantSplit);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 6, blockInfo.wantMerge);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 7, blockInfo.keyBlock);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 8, blockInfo.vertSeqnoIncr);
        compositeEncoder.encodeIntElement(serialDescriptor, 9, blockInfo.flags);
        compositeEncoder.encodeIntElement(serialDescriptor, 10, blockInfo.seqNo);
        compositeEncoder.encodeIntElement(serialDescriptor, 11, blockInfo.vertSeqNo);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 12, ShardIdent$$serializer.INSTANCE, blockInfo.shard);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 13, uIntSerializer, UInt.m1966boximpl(blockInfo.genUtime));
        ULongSerializer uLongSerializer = ULongSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 14, uLongSerializer, ULong.m1988boximpl(blockInfo.startLt));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 15, uLongSerializer, ULong.m1988boximpl(blockInfo.endLt));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 16, uIntSerializer, UInt.m1966boximpl(blockInfo.genValidatorListHashShort));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 17, uIntSerializer, UInt.m1966boximpl(blockInfo.genCatchainSeqno));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 18, uIntSerializer, UInt.m1966boximpl(blockInfo.minRefMcSeqno));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 19, uIntSerializer, UInt.m1966boximpl(blockInfo.prevKeyBlockSeqno));
        compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 20, GlobalVersion$$serializer.INSTANCE, blockInfo.genSoftware);
        compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 21, kSerializerArr[21], blockInfo.masterRef);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 22, kSerializerArr[22], blockInfo.prevRef);
        compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 23, kSerializerArr[23], blockInfo.prevVertRef);
    }

    /* renamed from: getVersion-pVg5ArA  reason: not valid java name */
    public final int m4940getVersionpVg5ArA() {
        return this.version;
    }

    public final boolean getNotMaster() {
        return this.notMaster;
    }

    public final boolean getAfterMerge() {
        return this.afterMerge;
    }

    public final boolean getBeforeSplit() {
        return this.beforeSplit;
    }

    public final boolean getAfterSplit() {
        return this.afterSplit;
    }

    public final boolean getWantSplit() {
        return this.wantSplit;
    }

    public final boolean getWantMerge() {
        return this.wantMerge;
    }

    public final boolean getKeyBlock() {
        return this.keyBlock;
    }

    public final boolean getVertSeqnoIncr() {
        return this.vertSeqnoIncr;
    }

    public final int getFlags() {
        return this.flags;
    }

    public final int getSeqNo() {
        return this.seqNo;
    }

    public final int getVertSeqNo() {
        return this.vertSeqNo;
    }

    public final ShardIdent getShard() {
        return this.shard;
    }

    /* renamed from: getGenUtime-pVg5ArA  reason: not valid java name */
    public final int m4935getGenUtimepVg5ArA() {
        return this.genUtime;
    }

    /* renamed from: getStartLt-s-VKNKU  reason: not valid java name */
    public final long m4939getStartLtsVKNKU() {
        return this.startLt;
    }

    /* renamed from: getEndLt-s-VKNKU  reason: not valid java name */
    public final long m4933getEndLtsVKNKU() {
        return this.endLt;
    }

    /* renamed from: getGenValidatorListHashShort-pVg5ArA  reason: not valid java name */
    public final int m4936getGenValidatorListHashShortpVg5ArA() {
        return this.genValidatorListHashShort;
    }

    /* renamed from: getGenCatchainSeqno-pVg5ArA  reason: not valid java name */
    public final int m4934getGenCatchainSeqnopVg5ArA() {
        return this.genCatchainSeqno;
    }

    /* renamed from: getMinRefMcSeqno-pVg5ArA  reason: not valid java name */
    public final int m4937getMinRefMcSeqnopVg5ArA() {
        return this.minRefMcSeqno;
    }

    /* renamed from: getPrevKeyBlockSeqno-pVg5ArA  reason: not valid java name */
    public final int m4938getPrevKeyBlockSeqnopVg5ArA() {
        return this.prevKeyBlockSeqno;
    }

    public final GlobalVersion getGenSoftware() {
        return this.genSoftware;
    }

    public final CellRef<BlkMasterInfo> getMasterRef() {
        return this.masterRef;
    }

    public final CellRef<BlkPrevInfo> getPrevRef() {
        return this.prevRef;
    }

    public final CellRef<BlkPrevInfo> getPrevVertRef() {
        return this.prevVertRef;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: BlockInfo.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCodec<BlockInfo> {
        private final /* synthetic */ TlbCombinator<BlockInfo> $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public BlockInfo loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public BlockInfo loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, BlockInfo value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        private Companion() {
            this.$$delegate_0 = TlbConstructorKt.asTlbCombinator(BlockInfoTlbConstructor.INSTANCE, Reflection.getOrCreateKotlinClass(BlockInfo.class));
        }

        public final KSerializer<BlockInfo> serializer() {
            return BlockInfo$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("block_info");
        open.field("version", UInt.m1966boximpl(this.version));
        open.field("not_master", Boolean.valueOf(this.notMaster));
        open.field("after_merge", Boolean.valueOf(this.afterMerge));
        open.field("before_split", Boolean.valueOf(this.beforeSplit));
        open.field("after_split", Boolean.valueOf(this.afterSplit));
        open.field("want_split", Boolean.valueOf(this.wantSplit));
        open.field("want_merge", Boolean.valueOf(this.wantMerge));
        open.field("key_block", Boolean.valueOf(this.keyBlock));
        open.field("ver_seqno_inc", Boolean.valueOf(this.vertSeqnoIncr));
        open.field("flags", Integer.valueOf(this.flags));
        open.field("seq_no", Integer.valueOf(this.seqNo));
        open.field("vert_seq_no", Integer.valueOf(this.vertSeqNo));
        open.field("shard", this.shard);
        open.field("gen_utime", UInt.m1966boximpl(this.genUtime));
        open.field("start_lt", ULong.m1988boximpl(this.startLt));
        open.field("end_lt", ULong.m1988boximpl(this.endLt));
        open.field("gen_validator_list_hash_short", UInt.m1966boximpl(this.genValidatorListHashShort));
        open.field("gen_catchain_seqno", UInt.m1966boximpl(this.genCatchainSeqno));
        open.field("min_ref_mc_seqno", UInt.m1966boximpl(this.minRefMcSeqno));
        open.field("prevKeyBlockSeqno", UInt.m1966boximpl(this.prevKeyBlockSeqno));
        open.field("gen_software", this.genSoftware);
        open.field("master_ref", this.masterRef);
        open.field("prev_ref", this.prevRef);
        open.field("prev_vert_ref", this.prevVertRef);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
