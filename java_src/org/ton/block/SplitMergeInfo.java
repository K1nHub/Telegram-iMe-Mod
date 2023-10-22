package org.ton.block;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: SplitMergeInfo.kt */
@Serializable
/* loaded from: classes6.dex */
public final class SplitMergeInfo implements TlbObject {
    public static final Companion Companion = new Companion(null);
    private final int accSplitDepth;
    private final int curShardPfxLen;
    private final BitString siblingAddr;
    private final BitString thisAddr;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SplitMergeInfo) {
            SplitMergeInfo splitMergeInfo = (SplitMergeInfo) obj;
            return this.curShardPfxLen == splitMergeInfo.curShardPfxLen && this.accSplitDepth == splitMergeInfo.accSplitDepth && Intrinsics.areEqual(this.thisAddr, splitMergeInfo.thisAddr) && Intrinsics.areEqual(this.siblingAddr, splitMergeInfo.siblingAddr);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.curShardPfxLen * 31) + this.accSplitDepth) * 31) + this.thisAddr.hashCode()) * 31) + this.siblingAddr.hashCode();
    }

    public /* synthetic */ SplitMergeInfo(int i, int i2, int i3, BitString bitString, BitString bitString2, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i & 15)) {
            PluginExceptionsKt.throwMissingFieldException(i, 15, SplitMergeInfo$$serializer.INSTANCE.getDescriptor());
        }
        this.curShardPfxLen = i2;
        this.accSplitDepth = i3;
        this.thisAddr = bitString;
        this.siblingAddr = bitString2;
        if (!(bitString.getSize() == 256)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (!(bitString2.getSize() == 256)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    public SplitMergeInfo(int i, int i2, BitString thisAddr, BitString siblingAddr) {
        Intrinsics.checkNotNullParameter(thisAddr, "thisAddr");
        Intrinsics.checkNotNullParameter(siblingAddr, "siblingAddr");
        this.curShardPfxLen = i;
        this.accSplitDepth = i2;
        this.thisAddr = thisAddr;
        this.siblingAddr = siblingAddr;
        if (!(thisAddr.getSize() == 256)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (!(siblingAddr.getSize() == 256)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    public static final /* synthetic */ void write$Self(SplitMergeInfo splitMergeInfo, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeIntElement(serialDescriptor, 0, splitMergeInfo.curShardPfxLen);
        compositeEncoder.encodeIntElement(serialDescriptor, 1, splitMergeInfo.accSplitDepth);
        FiftHexBitStringSerializer fiftHexBitStringSerializer = FiftHexBitStringSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, fiftHexBitStringSerializer, splitMergeInfo.thisAddr);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, fiftHexBitStringSerializer, splitMergeInfo.siblingAddr);
    }

    public final int getCurShardPfxLen() {
        return this.curShardPfxLen;
    }

    public final int getAccSplitDepth() {
        return this.accSplitDepth;
    }

    public final BitString getThisAddr() {
        return this.thisAddr;
    }

    public final BitString getSiblingAddr() {
        return this.siblingAddr;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: SplitMergeInfo.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCodec<SplitMergeInfo> {
        private final /* synthetic */ SplitMergeInfoTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public SplitMergeInfo loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public SplitMergeInfo loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, SplitMergeInfo value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        private Companion() {
            this.$$delegate_0 = SplitMergeInfoTlbConstructor.INSTANCE;
        }

        public final KSerializer<SplitMergeInfo> serializer() {
            return SplitMergeInfo$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("split_merge_info");
        open.field("cur_shard_pfx_len", Integer.valueOf(this.curShardPfxLen));
        open.field("acc_split_depth", Integer.valueOf(this.accSplitDepth));
        open.field("this_addr", this.thisAddr);
        open.field("sibling_addr", this.siblingAddr);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
