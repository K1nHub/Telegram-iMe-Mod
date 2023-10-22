package org.ton.block;

import java.lang.annotation.Annotation;
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
import kotlinx.serialization.internal.ULongSerializer;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: MsgExportDeq.kt */
@Serializable
/* loaded from: classes6.dex */
public final class MsgExportDeq implements OutMsg {
    private final long importBlockLt;
    private final CellRef<MsgEnvelope> outMsg;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), null};

    public /* synthetic */ MsgExportDeq(int i, CellRef cellRef, ULong uLong, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, cellRef, uLong, serializationConstructorMarker);
    }

    public /* synthetic */ MsgExportDeq(CellRef cellRef, long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(cellRef, j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MsgExportDeq) {
            MsgExportDeq msgExportDeq = (MsgExportDeq) obj;
            return Intrinsics.areEqual(this.outMsg, msgExportDeq.outMsg) && this.importBlockLt == msgExportDeq.importBlockLt;
        }
        return false;
    }

    public int hashCode() {
        return (this.outMsg.hashCode() * 31) + ULong.m1991hashCodeimpl(this.importBlockLt);
    }

    private MsgExportDeq(int i, CellRef<MsgEnvelope> cellRef, ULong uLong, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, MsgExportDeq$$serializer.INSTANCE.getDescriptor());
        }
        this.outMsg = cellRef;
        this.importBlockLt = uLong.m1993unboximpl();
    }

    private MsgExportDeq(CellRef<MsgEnvelope> outMsg, long j) {
        Intrinsics.checkNotNullParameter(outMsg, "outMsg");
        this.outMsg = outMsg;
        this.importBlockLt = j;
    }

    public static final /* synthetic */ void write$Self(MsgExportDeq msgExportDeq, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, $childSerializers[0], msgExportDeq.outMsg);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, ULongSerializer.INSTANCE, ULong.m1988boximpl(msgExportDeq.importBlockLt));
    }

    public final CellRef<MsgEnvelope> getOutMsg() {
        return this.outMsg;
    }

    /* renamed from: getImportBlockLt-s-VKNKU  reason: not valid java name */
    public final long m4974getImportBlockLtsVKNKU() {
        return this.importBlockLt;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: MsgExportDeq.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<MsgExportDeq> {
        private final /* synthetic */ MsgExportDeqTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public MsgExportDeq loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public MsgExportDeq loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, MsgExportDeq value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<MsgExportDeq> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = MsgExportDeqTlbConstructor.INSTANCE;
        }

        public final KSerializer<MsgExportDeq> serializer() {
            return MsgExportDeq$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("msg_export_deq");
        open.field("out_msg", this.outMsg);
        open.field("import_block_lt", ULong.m1988boximpl(this.importBlockLt));
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
