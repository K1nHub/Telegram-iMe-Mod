package org.ton.block;

import java.lang.annotation.Annotation;
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
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: MsgExportTr.kt */
@Serializable
/* loaded from: classes6.dex */
public final class MsgExportTr implements OutMsg {
    private final CellRef<InMsg> imported;
    private final CellRef<MsgEnvelope> outMsg;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0])};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MsgExportTr) {
            MsgExportTr msgExportTr = (MsgExportTr) obj;
            return Intrinsics.areEqual(this.outMsg, msgExportTr.outMsg) && Intrinsics.areEqual(this.imported, msgExportTr.imported);
        }
        return false;
    }

    public int hashCode() {
        return (this.outMsg.hashCode() * 31) + this.imported.hashCode();
    }

    public /* synthetic */ MsgExportTr(int i, CellRef cellRef, CellRef cellRef2, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, MsgExportTr$$serializer.INSTANCE.getDescriptor());
        }
        this.outMsg = cellRef;
        this.imported = cellRef2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MsgExportTr(CellRef<MsgEnvelope> outMsg, CellRef<? extends InMsg> imported) {
        Intrinsics.checkNotNullParameter(outMsg, "outMsg");
        Intrinsics.checkNotNullParameter(imported, "imported");
        this.outMsg = outMsg;
        this.imported = imported;
    }

    public static final /* synthetic */ void write$Self(MsgExportTr msgExportTr, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], msgExportTr.outMsg);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], msgExportTr.imported);
    }

    public final CellRef<MsgEnvelope> getOutMsg() {
        return this.outMsg;
    }

    public final CellRef<InMsg> getImported() {
        return this.imported;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: MsgExportTr.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<MsgExportTr> {
        private final /* synthetic */ MsgExportTrTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public MsgExportTr loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public MsgExportTr loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, MsgExportTr value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<MsgExportTr> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = MsgExportTrTlbConstructor.INSTANCE;
        }

        public final KSerializer<MsgExportTr> serializer() {
            return MsgExportTr$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("msg_export_tr");
        open.field("out_msg", this.outMsg);
        open.field("imported", this.imported);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
