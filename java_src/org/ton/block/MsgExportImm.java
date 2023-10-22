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
/* compiled from: MsgExportImm.kt */
@Serializable
/* loaded from: classes6.dex */
public final class MsgExportImm implements OutMsg, TlbObject {
    private final CellRef<MsgEnvelope> outMsg;
    private final CellRef<InMsg> reimport;
    private final CellRef<Transaction> transaction;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0])};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MsgExportImm) {
            MsgExportImm msgExportImm = (MsgExportImm) obj;
            return Intrinsics.areEqual(this.outMsg, msgExportImm.outMsg) && Intrinsics.areEqual(this.transaction, msgExportImm.transaction) && Intrinsics.areEqual(this.reimport, msgExportImm.reimport);
        }
        return false;
    }

    public int hashCode() {
        return (((this.outMsg.hashCode() * 31) + this.transaction.hashCode()) * 31) + this.reimport.hashCode();
    }

    public /* synthetic */ MsgExportImm(int i, CellRef cellRef, CellRef cellRef2, CellRef cellRef3, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, MsgExportImm$$serializer.INSTANCE.getDescriptor());
        }
        this.outMsg = cellRef;
        this.transaction = cellRef2;
        this.reimport = cellRef3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MsgExportImm(CellRef<MsgEnvelope> outMsg, CellRef<Transaction> transaction, CellRef<? extends InMsg> reimport) {
        Intrinsics.checkNotNullParameter(outMsg, "outMsg");
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(reimport, "reimport");
        this.outMsg = outMsg;
        this.transaction = transaction;
        this.reimport = reimport;
    }

    public static final /* synthetic */ void write$Self(MsgExportImm msgExportImm, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], msgExportImm.outMsg);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], msgExportImm.transaction);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, kSerializerArr[2], msgExportImm.reimport);
    }

    public final CellRef<MsgEnvelope> getOutMsg() {
        return this.outMsg;
    }

    public final CellRef<Transaction> getTransaction() {
        return this.transaction;
    }

    public final CellRef<InMsg> getReimport() {
        return this.reimport;
    }

    /* compiled from: MsgExportImm.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<MsgExportImm> {
        private final /* synthetic */ MsgExportImmTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public MsgExportImm loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public MsgExportImm loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, MsgExportImm value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<MsgExportImm> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = MsgExportImmTlbConstructor.INSTANCE;
        }

        public final KSerializer<MsgExportImm> serializer() {
            return MsgExportImm$$serializer.INSTANCE;
        }
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("msg_export_imm");
        open.field("out_msg", this.outMsg);
        open.field("transaction", this.transaction);
        open.field("reimport", this.reimport);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
