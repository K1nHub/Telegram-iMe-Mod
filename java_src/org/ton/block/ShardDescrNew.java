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
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.UIntSerializer;
import kotlinx.serialization.internal.ULongSerializer;
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
import org.ton.block.FutureSplitMerge;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: ShardDescr.kt */
@Serializable
/* loaded from: classes6.dex */
public final class ShardDescrNew implements ShardDescr {
    private final boolean beforeMerge;
    private final boolean beforeSplit;
    private final long endLt;
    private final BitString fileHash;
    private final int flags;
    private final int genUtime;
    private final int minRefMcSeqno;
    private final int nextCatchainSeqno;
    private final long nextValidatorShard;
    private final boolean nxCcUpdated;

    /* renamed from: r1 */
    private final CellRef<ShardDescrAux> f2050r1;
    private final int regMcSeqno;
    private final BitString rootHash;
    private final int seqNo;
    private final FutureSplitMerge splitMergeAt;
    private final long startLt;
    private final boolean wantMerge;
    private final boolean wantSplit;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, new SealedClassSerializer("org.ton.block.FutureSplitMerge", Reflection.getOrCreateKotlinClass(FutureSplitMerge.class), new KClass[]{Reflection.getOrCreateKotlinClass(FutureSplitMerge.FsmMerge.class), Reflection.getOrCreateKotlinClass(FutureSplitMerge.FsmNone.class), Reflection.getOrCreateKotlinClass(FutureSplitMerge.FsmSplit.class)}, new KSerializer[]{FutureSplitMerge$FsmMerge$$serializer.INSTANCE, new ObjectSerializer("fsm_none", FutureSplitMerge.FsmNone.INSTANCE, new Annotation[]{new C7593x18a57a5b("@type")}), FutureSplitMerge$FsmSplit$$serializer.INSTANCE}, new Annotation[]{new C7593x18a57a5b("@type")}), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0])};

    public /* synthetic */ ShardDescrNew(int i, int i2, long j, long j2, BitString bitString, BitString bitString2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i3, int i4, long j3, int i5, int i6, FutureSplitMerge futureSplitMerge, CellRef cellRef, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, j, j2, bitString, bitString2, z, z2, z3, z4, z5, i3, i4, j3, i5, i6, futureSplitMerge, cellRef);
    }

    public /* synthetic */ ShardDescrNew(int i, UInt uInt, UInt uInt2, ULong uLong, ULong uLong2, BitString bitString, BitString bitString2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i2, UInt uInt3, ULong uLong3, UInt uInt4, UInt uInt5, FutureSplitMerge futureSplitMerge, CellRef cellRef, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, uInt, uInt2, uLong, uLong2, bitString, bitString2, z, z2, z3, z4, z5, i2, uInt3, uLong3, uInt4, uInt5, futureSplitMerge, cellRef, serializationConstructorMarker);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ShardDescrNew) {
            ShardDescrNew shardDescrNew = (ShardDescrNew) obj;
            return this.seqNo == shardDescrNew.seqNo && this.regMcSeqno == shardDescrNew.regMcSeqno && this.startLt == shardDescrNew.startLt && this.endLt == shardDescrNew.endLt && Intrinsics.areEqual(this.rootHash, shardDescrNew.rootHash) && Intrinsics.areEqual(this.fileHash, shardDescrNew.fileHash) && this.beforeSplit == shardDescrNew.beforeSplit && this.beforeMerge == shardDescrNew.beforeMerge && this.wantSplit == shardDescrNew.wantSplit && this.wantMerge == shardDescrNew.wantMerge && this.nxCcUpdated == shardDescrNew.nxCcUpdated && this.flags == shardDescrNew.flags && this.nextCatchainSeqno == shardDescrNew.nextCatchainSeqno && this.nextValidatorShard == shardDescrNew.nextValidatorShard && this.minRefMcSeqno == shardDescrNew.minRefMcSeqno && this.genUtime == shardDescrNew.genUtime && Intrinsics.areEqual(this.splitMergeAt, shardDescrNew.splitMergeAt) && Intrinsics.areEqual(this.f2050r1, shardDescrNew.f2050r1);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m1976hashCodeimpl = ((((((((((UInt.m1976hashCodeimpl(this.seqNo) * 31) + UInt.m1976hashCodeimpl(this.regMcSeqno)) * 31) + ULong.m1998hashCodeimpl(this.startLt)) * 31) + ULong.m1998hashCodeimpl(this.endLt)) * 31) + this.rootHash.hashCode()) * 31) + this.fileHash.hashCode()) * 31;
        boolean z = this.beforeSplit;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (m1976hashCodeimpl + i) * 31;
        boolean z2 = this.beforeMerge;
        int i3 = z2;
        if (z2 != 0) {
            i3 = 1;
        }
        int i4 = (i2 + i3) * 31;
        boolean z3 = this.wantSplit;
        int i5 = z3;
        if (z3 != 0) {
            i5 = 1;
        }
        int i6 = (i4 + i5) * 31;
        boolean z4 = this.wantMerge;
        int i7 = z4;
        if (z4 != 0) {
            i7 = 1;
        }
        int i8 = (i6 + i7) * 31;
        boolean z5 = this.nxCcUpdated;
        return ((((((((((((((i8 + (z5 ? 1 : z5 ? 1 : 0)) * 31) + this.flags) * 31) + UInt.m1976hashCodeimpl(this.nextCatchainSeqno)) * 31) + ULong.m1998hashCodeimpl(this.nextValidatorShard)) * 31) + UInt.m1976hashCodeimpl(this.minRefMcSeqno)) * 31) + UInt.m1976hashCodeimpl(this.genUtime)) * 31) + this.splitMergeAt.hashCode()) * 31) + this.f2050r1.hashCode();
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("shard_descr_new");
        open.field("seq_no", UInt.m1973boximpl(this.seqNo));
        open.field("reg_mc_seqno", UInt.m1973boximpl(this.regMcSeqno));
        open.field("start_lt", ULong.m1995boximpl(this.startLt));
        open.field("end_lt", ULong.m1995boximpl(this.endLt));
        open.field("root_hash", this.rootHash);
        open.field("file_hash", this.fileHash);
        open.field("before_split", Boolean.valueOf(this.beforeSplit));
        open.field("before_merge", Boolean.valueOf(this.beforeMerge));
        open.field("want_split", Boolean.valueOf(this.wantSplit));
        open.field("want_merge", Boolean.valueOf(this.wantMerge));
        open.field("nx_cc_updated", Boolean.valueOf(this.nxCcUpdated));
        open.field("flags", Integer.valueOf(this.flags));
        open.field("next_catchain_seqno", UInt.m1973boximpl(this.nextCatchainSeqno));
        open.field("next_validator_shard", ULong.m1995boximpl(this.nextValidatorShard));
        open.field("min_ref_mc_seqno", UInt.m1973boximpl(this.minRefMcSeqno));
        open.field("gen_utime", UInt.m1973boximpl(this.genUtime));
        open.field("split_merge_at", this.splitMergeAt);
        open.field(this.f2050r1);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }

    private ShardDescrNew(int i, int i2, long j, long j2, BitString rootHash, BitString fileHash, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i3, int i4, long j3, int i5, int i6, FutureSplitMerge splitMergeAt, CellRef<ShardDescrAux> r1) {
        Intrinsics.checkNotNullParameter(rootHash, "rootHash");
        Intrinsics.checkNotNullParameter(fileHash, "fileHash");
        Intrinsics.checkNotNullParameter(splitMergeAt, "splitMergeAt");
        Intrinsics.checkNotNullParameter(r1, "r1");
        this.seqNo = i;
        this.regMcSeqno = i2;
        this.startLt = j;
        this.endLt = j2;
        this.rootHash = rootHash;
        this.fileHash = fileHash;
        this.beforeSplit = z;
        this.beforeMerge = z2;
        this.wantSplit = z3;
        this.wantMerge = z4;
        this.nxCcUpdated = z5;
        this.flags = i3;
        this.nextCatchainSeqno = i4;
        this.nextValidatorShard = j3;
        this.minRefMcSeqno = i5;
        this.genUtime = i6;
        this.splitMergeAt = splitMergeAt;
        this.f2050r1 = r1;
        if (!(rootHash.getSize() == 256)) {
            throw new IllegalArgumentException(("expected rootHash.size == 256, actual: " + rootHash.getSize()).toString());
        }
        if (fileHash.getSize() == 256) {
            return;
        }
        throw new IllegalArgumentException(("expected fileHash.size == 256, actual: " + fileHash.getSize()).toString());
    }

    private ShardDescrNew(int i, UInt uInt, UInt uInt2, ULong uLong, ULong uLong2, BitString bitString, BitString bitString2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i2, UInt uInt3, ULong uLong3, UInt uInt4, UInt uInt5, FutureSplitMerge futureSplitMerge, CellRef<ShardDescrAux> cellRef, SerializationConstructorMarker serializationConstructorMarker) {
        if (262143 != (i & 262143)) {
            PluginExceptionsKt.throwMissingFieldException(i, 262143, ShardDescrNew$$serializer.INSTANCE.getDescriptor());
        }
        this.seqNo = uInt.m1978unboximpl();
        this.regMcSeqno = uInt2.m1978unboximpl();
        this.startLt = uLong.m2000unboximpl();
        this.endLt = uLong2.m2000unboximpl();
        this.rootHash = bitString;
        this.fileHash = bitString2;
        this.beforeSplit = z;
        this.beforeMerge = z2;
        this.wantSplit = z3;
        this.wantMerge = z4;
        this.nxCcUpdated = z5;
        this.flags = i2;
        this.nextCatchainSeqno = uInt3.m1978unboximpl();
        this.nextValidatorShard = uLong3.m2000unboximpl();
        this.minRefMcSeqno = uInt4.m1978unboximpl();
        this.genUtime = uInt5.m1978unboximpl();
        this.splitMergeAt = futureSplitMerge;
        this.f2050r1 = cellRef;
        if (!(bitString.getSize() == 256)) {
            throw new IllegalArgumentException(("expected rootHash.size == 256, actual: " + bitString.getSize()).toString());
        }
        if (bitString2.getSize() == 256) {
            return;
        }
        throw new IllegalArgumentException(("expected fileHash.size == 256, actual: " + bitString2.getSize()).toString());
    }

    public static final /* synthetic */ void write$Self(ShardDescrNew shardDescrNew, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        UIntSerializer uIntSerializer = UIntSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, uIntSerializer, UInt.m1973boximpl(shardDescrNew.seqNo));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, uIntSerializer, UInt.m1973boximpl(shardDescrNew.regMcSeqno));
        ULongSerializer uLongSerializer = ULongSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, uLongSerializer, ULong.m1995boximpl(shardDescrNew.startLt));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, uLongSerializer, ULong.m1995boximpl(shardDescrNew.endLt));
        FiftHexBitStringSerializer fiftHexBitStringSerializer = FiftHexBitStringSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 4, fiftHexBitStringSerializer, shardDescrNew.rootHash);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 5, fiftHexBitStringSerializer, shardDescrNew.fileHash);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 6, shardDescrNew.beforeSplit);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 7, shardDescrNew.beforeMerge);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 8, shardDescrNew.wantSplit);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 9, shardDescrNew.wantMerge);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 10, shardDescrNew.nxCcUpdated);
        compositeEncoder.encodeIntElement(serialDescriptor, 11, shardDescrNew.flags);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 12, uIntSerializer, UInt.m1973boximpl(shardDescrNew.nextCatchainSeqno));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 13, uLongSerializer, ULong.m1995boximpl(shardDescrNew.nextValidatorShard));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 14, uIntSerializer, UInt.m1973boximpl(shardDescrNew.minRefMcSeqno));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 15, uIntSerializer, UInt.m1973boximpl(shardDescrNew.genUtime));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 16, kSerializerArr[16], shardDescrNew.splitMergeAt);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 17, kSerializerArr[17], shardDescrNew.f2050r1);
    }

    /* renamed from: getSeqNo-pVg5ArA  reason: not valid java name */
    public final int m5152getSeqNopVg5ArA() {
        return this.seqNo;
    }

    /* renamed from: getRegMcSeqno-pVg5ArA  reason: not valid java name */
    public final int m5151getRegMcSeqnopVg5ArA() {
        return this.regMcSeqno;
    }

    /* renamed from: getStartLt-s-VKNKU  reason: not valid java name */
    public final long m5153getStartLtsVKNKU() {
        return this.startLt;
    }

    /* renamed from: getEndLt-s-VKNKU  reason: not valid java name */
    public final long m5146getEndLtsVKNKU() {
        return this.endLt;
    }

    public final BitString getRootHash() {
        return this.rootHash;
    }

    public final BitString getFileHash() {
        return this.fileHash;
    }

    public final boolean getBeforeSplit() {
        return this.beforeSplit;
    }

    public final boolean getBeforeMerge() {
        return this.beforeMerge;
    }

    public final boolean getWantSplit() {
        return this.wantSplit;
    }

    public final boolean getWantMerge() {
        return this.wantMerge;
    }

    public final boolean getNxCcUpdated() {
        return this.nxCcUpdated;
    }

    public final int getFlags() {
        return this.flags;
    }

    /* renamed from: getNextCatchainSeqno-pVg5ArA  reason: not valid java name */
    public final int m5149getNextCatchainSeqnopVg5ArA() {
        return this.nextCatchainSeqno;
    }

    /* renamed from: getNextValidatorShard-s-VKNKU  reason: not valid java name */
    public final long m5150getNextValidatorShardsVKNKU() {
        return this.nextValidatorShard;
    }

    /* renamed from: getMinRefMcSeqno-pVg5ArA  reason: not valid java name */
    public final int m5148getMinRefMcSeqnopVg5ArA() {
        return this.minRefMcSeqno;
    }

    /* renamed from: getGenUtime-pVg5ArA  reason: not valid java name */
    public final int m5147getGenUtimepVg5ArA() {
        return this.genUtime;
    }

    public final FutureSplitMerge getSplitMergeAt() {
        return this.splitMergeAt;
    }

    public final CellRef<ShardDescrAux> getR1() {
        return this.f2050r1;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: ShardDescr.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<ShardDescrNew> {
        private final /* synthetic */ ShardDescrNewTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public ShardDescrNew loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public ShardDescrNew loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, ShardDescrNew value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<ShardDescrNew> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = ShardDescrNewTlbConstructor.INSTANCE;
        }

        public final KSerializer<ShardDescrNew> serializer() {
            return ShardDescrNew$$serializer.INSTANCE;
        }
    }
}
