package org.ton.block;

import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.ULongSerializer;
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: ProcessedUpto.kt */
@Serializable
/* loaded from: classes6.dex */
public final class ProcessedUpto implements TlbObject {
    public static final Companion Companion = new Companion(null);
    private final BitString lastMsgHash;
    private final long lastMsgLt;

    public /* synthetic */ ProcessedUpto(int i, ULong uLong, BitString bitString, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, uLong, bitString, serializationConstructorMarker);
    }

    public /* synthetic */ ProcessedUpto(long j, BitString bitString, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, bitString);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ProcessedUpto) {
            ProcessedUpto processedUpto = (ProcessedUpto) obj;
            return this.lastMsgLt == processedUpto.lastMsgLt && Intrinsics.areEqual(this.lastMsgHash, processedUpto.lastMsgHash);
        }
        return false;
    }

    public int hashCode() {
        return (ULong.m1991hashCodeimpl(this.lastMsgLt) * 31) + this.lastMsgHash.hashCode();
    }

    private ProcessedUpto(int i, ULong uLong, BitString bitString, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, ProcessedUpto$$serializer.INSTANCE.getDescriptor());
        }
        this.lastMsgLt = uLong.m1993unboximpl();
        this.lastMsgHash = bitString;
    }

    private ProcessedUpto(long j, BitString lastMsgHash) {
        Intrinsics.checkNotNullParameter(lastMsgHash, "lastMsgHash");
        this.lastMsgLt = j;
        this.lastMsgHash = lastMsgHash;
    }

    public static final /* synthetic */ void write$Self(ProcessedUpto processedUpto, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, ULongSerializer.INSTANCE, ULong.m1988boximpl(processedUpto.lastMsgLt));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, FiftHexBitStringSerializer.INSTANCE, processedUpto.lastMsgHash);
    }

    /* renamed from: getLastMsgLt-s-VKNKU  reason: not valid java name */
    public final long m4993getLastMsgLtsVKNKU() {
        return this.lastMsgLt;
    }

    public final BitString getLastMsgHash() {
        return this.lastMsgHash;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: ProcessedUpto.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<ProcessedUpto> {
        private final /* synthetic */ ProcessedUptoTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public ProcessedUpto loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public ProcessedUpto loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, ProcessedUpto value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<ProcessedUpto> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = ProcessedUptoTlbConstructor.INSTANCE;
        }

        public final KSerializer<ProcessedUpto> serializer() {
            return ProcessedUpto$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("processed_upto");
        open.field("last_msg_lt", ULong.m1988boximpl(this.lastMsgLt));
        open.field("last_msg_hash", this.lastMsgHash);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
