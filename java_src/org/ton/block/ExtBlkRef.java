package org.ton.block;

import kotlin.UInt;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.UIntSerializer;
import kotlinx.serialization.internal.ULongSerializer;
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: ExtBlkRef.kt */
@Serializable
/* loaded from: classes6.dex */
public final class ExtBlkRef implements TlbObject {
    public static final Companion Companion = new Companion(null);
    private final long endLt;
    private final BitString fileHash;
    private final BitString rootHash;
    private final int seqNo;

    public /* synthetic */ ExtBlkRef(int i, ULong uLong, UInt uInt, BitString bitString, BitString bitString2, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, uLong, uInt, bitString, bitString2, serializationConstructorMarker);
    }

    public /* synthetic */ ExtBlkRef(long j, int i, BitString bitString, BitString bitString2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, i, bitString, bitString2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ExtBlkRef) {
            ExtBlkRef extBlkRef = (ExtBlkRef) obj;
            return this.endLt == extBlkRef.endLt && this.seqNo == extBlkRef.seqNo && Intrinsics.areEqual(this.rootHash, extBlkRef.rootHash) && Intrinsics.areEqual(this.fileHash, extBlkRef.fileHash);
        }
        return false;
    }

    public int hashCode() {
        return (((((ULong.m1999hashCodeimpl(this.endLt) * 31) + UInt.m1977hashCodeimpl(this.seqNo)) * 31) + this.rootHash.hashCode()) * 31) + this.fileHash.hashCode();
    }

    private ExtBlkRef(int i, ULong uLong, UInt uInt, BitString bitString, BitString bitString2, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i & 15)) {
            PluginExceptionsKt.throwMissingFieldException(i, 15, ExtBlkRef$$serializer.INSTANCE.getDescriptor());
        }
        this.endLt = uLong.m2001unboximpl();
        this.seqNo = uInt.m1979unboximpl();
        this.rootHash = bitString;
        this.fileHash = bitString2;
        if (!(bitString.getSize() == 256)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (!(bitString2.getSize() == 256)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    private ExtBlkRef(long j, int i, BitString rootHash, BitString fileHash) {
        Intrinsics.checkNotNullParameter(rootHash, "rootHash");
        Intrinsics.checkNotNullParameter(fileHash, "fileHash");
        this.endLt = j;
        this.seqNo = i;
        this.rootHash = rootHash;
        this.fileHash = fileHash;
        if (!(rootHash.getSize() == 256)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (!(fileHash.getSize() == 256)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    public static final /* synthetic */ void write$Self(ExtBlkRef extBlkRef, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, ULongSerializer.INSTANCE, ULong.m1996boximpl(extBlkRef.endLt));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, UIntSerializer.INSTANCE, UInt.m1974boximpl(extBlkRef.seqNo));
        FiftHexBitStringSerializer fiftHexBitStringSerializer = FiftHexBitStringSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, fiftHexBitStringSerializer, extBlkRef.rootHash);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, fiftHexBitStringSerializer, extBlkRef.fileHash);
    }

    /* renamed from: getEndLt-s-VKNKU  reason: not valid java name */
    public final long m5273getEndLtsVKNKU() {
        return this.endLt;
    }

    /* renamed from: getSeqNo-pVg5ArA  reason: not valid java name */
    public final int m5274getSeqNopVg5ArA() {
        return this.seqNo;
    }

    public final BitString getRootHash() {
        return this.rootHash;
    }

    public final BitString getFileHash() {
        return this.fileHash;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: ExtBlkRef.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCodec<ExtBlkRef> {
        private final /* synthetic */ ExtBlkRefTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public ExtBlkRef loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public ExtBlkRef loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, ExtBlkRef value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        private Companion() {
            this.$$delegate_0 = ExtBlkRefTlbConstructor.INSTANCE;
        }

        public final KSerializer<ExtBlkRef> serializer() {
            return ExtBlkRef$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("ext_blk_ref");
        open.field("end_lt", ULong.m1996boximpl(this.endLt));
        open.field("seq_no", UInt.m1974boximpl(this.seqNo));
        open.field("root_hash", this.rootHash);
        open.field("file_hash", this.fileHash);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
