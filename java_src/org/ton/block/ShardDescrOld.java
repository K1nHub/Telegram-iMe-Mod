package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
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
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: ShardDescr.kt */
@Serializable
/* loaded from: classes6.dex */
public final class ShardDescrOld implements ShardDescr {
    private final boolean beforeMerge;
    private final boolean beforeSplit;
    private final long endLt;
    private final CurrencyCollection feesCollected;
    private final BitString fileHash;
    private final int flags;
    private final CurrencyCollection fundsCreated;
    private final int genUtime;
    private final int minRefMcSeqno;
    private final int nextCatchainSeqno;
    private final long nextValidatorShard;
    private final boolean nxCcUpdated;
    private final int regMcSeqno;
    private final BitString rootHash;
    private final int seqNo;
    private final FutureSplitMerge splitMergeAt;
    private final long startLt;
    private final boolean wantMerge;
    private final boolean wantSplit;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, new SealedClassSerializer("org.ton.block.FutureSplitMerge", Reflection.getOrCreateKotlinClass(FutureSplitMerge.class), new KClass[]{Reflection.getOrCreateKotlinClass(FutureSplitMerge.FsmMerge.class), Reflection.getOrCreateKotlinClass(FutureSplitMerge.FsmNone.class), Reflection.getOrCreateKotlinClass(FutureSplitMerge.FsmSplit.class)}, new KSerializer[]{FutureSplitMerge$FsmMerge$$serializer.INSTANCE, new ObjectSerializer("fsm_none", FutureSplitMerge.FsmNone.INSTANCE, new Annotation[]{new C7593x18a57a5b("@type")}), FutureSplitMerge$FsmSplit$$serializer.INSTANCE}, new Annotation[]{new C7593x18a57a5b("@type")}), null, null};

    public /* synthetic */ ShardDescrOld(int i, int i2, long j, long j2, BitString bitString, BitString bitString2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i3, int i4, long j3, int i5, int i6, FutureSplitMerge futureSplitMerge, CurrencyCollection currencyCollection, CurrencyCollection currencyCollection2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, j, j2, bitString, bitString2, z, z2, z3, z4, z5, i3, i4, j3, i5, i6, futureSplitMerge, currencyCollection, currencyCollection2);
    }

    public /* synthetic */ ShardDescrOld(int i, UInt uInt, UInt uInt2, ULong uLong, ULong uLong2, BitString bitString, BitString bitString2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i2, UInt uInt3, ULong uLong3, UInt uInt4, UInt uInt5, FutureSplitMerge futureSplitMerge, CurrencyCollection currencyCollection, CurrencyCollection currencyCollection2, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, uInt, uInt2, uLong, uLong2, bitString, bitString2, z, z2, z3, z4, z5, i2, uInt3, uLong3, uInt4, uInt5, futureSplitMerge, currencyCollection, currencyCollection2, serializationConstructorMarker);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ShardDescrOld) {
            ShardDescrOld shardDescrOld = (ShardDescrOld) obj;
            return this.seqNo == shardDescrOld.seqNo && this.regMcSeqno == shardDescrOld.regMcSeqno && this.startLt == shardDescrOld.startLt && this.endLt == shardDescrOld.endLt && Intrinsics.areEqual(this.rootHash, shardDescrOld.rootHash) && Intrinsics.areEqual(this.fileHash, shardDescrOld.fileHash) && this.beforeSplit == shardDescrOld.beforeSplit && this.beforeMerge == shardDescrOld.beforeMerge && this.wantSplit == shardDescrOld.wantSplit && this.wantMerge == shardDescrOld.wantMerge && this.nxCcUpdated == shardDescrOld.nxCcUpdated && this.flags == shardDescrOld.flags && this.nextCatchainSeqno == shardDescrOld.nextCatchainSeqno && this.nextValidatorShard == shardDescrOld.nextValidatorShard && this.minRefMcSeqno == shardDescrOld.minRefMcSeqno && this.genUtime == shardDescrOld.genUtime && Intrinsics.areEqual(this.splitMergeAt, shardDescrOld.splitMergeAt) && Intrinsics.areEqual(this.feesCollected, shardDescrOld.feesCollected) && Intrinsics.areEqual(this.fundsCreated, shardDescrOld.fundsCreated);
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
        return ((((((((((((((((i8 + (z5 ? 1 : z5 ? 1 : 0)) * 31) + this.flags) * 31) + UInt.m1976hashCodeimpl(this.nextCatchainSeqno)) * 31) + ULong.m1998hashCodeimpl(this.nextValidatorShard)) * 31) + UInt.m1976hashCodeimpl(this.minRefMcSeqno)) * 31) + UInt.m1976hashCodeimpl(this.genUtime)) * 31) + this.splitMergeAt.hashCode()) * 31) + this.feesCollected.hashCode()) * 31) + this.fundsCreated.hashCode();
    }

    private ShardDescrOld(int i, int i2, long j, long j2, BitString rootHash, BitString fileHash, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i3, int i4, long j3, int i5, int i6, FutureSplitMerge splitMergeAt, CurrencyCollection feesCollected, CurrencyCollection fundsCreated) {
        Intrinsics.checkNotNullParameter(rootHash, "rootHash");
        Intrinsics.checkNotNullParameter(fileHash, "fileHash");
        Intrinsics.checkNotNullParameter(splitMergeAt, "splitMergeAt");
        Intrinsics.checkNotNullParameter(feesCollected, "feesCollected");
        Intrinsics.checkNotNullParameter(fundsCreated, "fundsCreated");
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
        this.feesCollected = feesCollected;
        this.fundsCreated = fundsCreated;
        if (!(rootHash.getSize() == 256)) {
            throw new IllegalArgumentException(("expected rootHash.size == 256, actual: " + rootHash.getSize()).toString());
        }
        if (fileHash.getSize() == 256) {
            return;
        }
        throw new IllegalArgumentException(("expected fileHash.size == 256, actual: " + fileHash.getSize()).toString());
    }

    private ShardDescrOld(int i, UInt uInt, UInt uInt2, ULong uLong, ULong uLong2, BitString bitString, BitString bitString2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i2, UInt uInt3, ULong uLong3, UInt uInt4, UInt uInt5, FutureSplitMerge futureSplitMerge, CurrencyCollection currencyCollection, CurrencyCollection currencyCollection2, SerializationConstructorMarker serializationConstructorMarker) {
        if (524287 != (i & 524287)) {
            PluginExceptionsKt.throwMissingFieldException(i, 524287, ShardDescrOld$$serializer.INSTANCE.getDescriptor());
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
        this.feesCollected = currencyCollection;
        this.fundsCreated = currencyCollection2;
        if (!(bitString.getSize() == 256)) {
            throw new IllegalArgumentException(("expected rootHash.size == 256, actual: " + bitString.getSize()).toString());
        }
        if (bitString2.getSize() == 256) {
            return;
        }
        throw new IllegalArgumentException(("expected fileHash.size == 256, actual: " + bitString2.getSize()).toString());
    }

    public static final /* synthetic */ void write$Self(ShardDescrOld shardDescrOld, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        UIntSerializer uIntSerializer = UIntSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, uIntSerializer, UInt.m1973boximpl(shardDescrOld.seqNo));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, uIntSerializer, UInt.m1973boximpl(shardDescrOld.regMcSeqno));
        ULongSerializer uLongSerializer = ULongSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, uLongSerializer, ULong.m1995boximpl(shardDescrOld.startLt));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, uLongSerializer, ULong.m1995boximpl(shardDescrOld.endLt));
        FiftHexBitStringSerializer fiftHexBitStringSerializer = FiftHexBitStringSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 4, fiftHexBitStringSerializer, shardDescrOld.rootHash);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 5, fiftHexBitStringSerializer, shardDescrOld.fileHash);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 6, shardDescrOld.beforeSplit);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 7, shardDescrOld.beforeMerge);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 8, shardDescrOld.wantSplit);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 9, shardDescrOld.wantMerge);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 10, shardDescrOld.nxCcUpdated);
        compositeEncoder.encodeIntElement(serialDescriptor, 11, shardDescrOld.flags);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 12, uIntSerializer, UInt.m1973boximpl(shardDescrOld.nextCatchainSeqno));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 13, uLongSerializer, ULong.m1995boximpl(shardDescrOld.nextValidatorShard));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 14, uIntSerializer, UInt.m1973boximpl(shardDescrOld.minRefMcSeqno));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 15, uIntSerializer, UInt.m1973boximpl(shardDescrOld.genUtime));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 16, kSerializerArr[16], shardDescrOld.splitMergeAt);
        CurrencyCollection$$serializer currencyCollection$$serializer = CurrencyCollection$$serializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 17, currencyCollection$$serializer, shardDescrOld.feesCollected);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 18, currencyCollection$$serializer, shardDescrOld.fundsCreated);
    }

    /* renamed from: getSeqNo-pVg5ArA  reason: not valid java name */
    public final int m5160getSeqNopVg5ArA() {
        return this.seqNo;
    }

    /* renamed from: getRegMcSeqno-pVg5ArA  reason: not valid java name */
    public final int m5159getRegMcSeqnopVg5ArA() {
        return this.regMcSeqno;
    }

    /* renamed from: getStartLt-s-VKNKU  reason: not valid java name */
    public final long m5161getStartLtsVKNKU() {
        return this.startLt;
    }

    /* renamed from: getEndLt-s-VKNKU  reason: not valid java name */
    public final long m5154getEndLtsVKNKU() {
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
    public final int m5157getNextCatchainSeqnopVg5ArA() {
        return this.nextCatchainSeqno;
    }

    /* renamed from: getNextValidatorShard-s-VKNKU  reason: not valid java name */
    public final long m5158getNextValidatorShardsVKNKU() {
        return this.nextValidatorShard;
    }

    /* renamed from: getMinRefMcSeqno-pVg5ArA  reason: not valid java name */
    public final int m5156getMinRefMcSeqnopVg5ArA() {
        return this.minRefMcSeqno;
    }

    /* renamed from: getGenUtime-pVg5ArA  reason: not valid java name */
    public final int m5155getGenUtimepVg5ArA() {
        return this.genUtime;
    }

    public final FutureSplitMerge getSplitMergeAt() {
        return this.splitMergeAt;
    }

    public final CurrencyCollection getFeesCollected() {
        return this.feesCollected;
    }

    public final CurrencyCollection getFundsCreated() {
        return this.fundsCreated;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: ShardDescr.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<ShardDescrOld> {
        private final /* synthetic */ ShardDescrOldTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public ShardDescrOld loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public ShardDescrOld loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, ShardDescrOld value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<ShardDescrOld> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = ShardDescrOldTlbConstructor.INSTANCE;
        }

        public final KSerializer<ShardDescrOld> serializer() {
            return ShardDescrOld$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("shard_descr_old");
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
        open.field("fees_collected", this.feesCollected);
        open.field("funds_created", this.fundsCreated);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
