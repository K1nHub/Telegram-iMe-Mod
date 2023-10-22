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
/* compiled from: MsgImportFin.kt */
@Serializable
/* loaded from: classes6.dex */
public final class MsgImportFin implements InMsg {
    private final Coins fwdFee;
    private final CellRef<MsgEnvelope> inMsg;
    private final CellRef<Transaction> transaction;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), null};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MsgImportFin) {
            MsgImportFin msgImportFin = (MsgImportFin) obj;
            return Intrinsics.areEqual(this.inMsg, msgImportFin.inMsg) && Intrinsics.areEqual(this.transaction, msgImportFin.transaction) && Intrinsics.areEqual(this.fwdFee, msgImportFin.fwdFee);
        }
        return false;
    }

    public int hashCode() {
        return (((this.inMsg.hashCode() * 31) + this.transaction.hashCode()) * 31) + this.fwdFee.hashCode();
    }

    public /* synthetic */ MsgImportFin(int i, CellRef cellRef, CellRef cellRef2, Coins coins, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, MsgImportFin$$serializer.INSTANCE.getDescriptor());
        }
        this.inMsg = cellRef;
        this.transaction = cellRef2;
        this.fwdFee = coins;
    }

    public MsgImportFin(CellRef<MsgEnvelope> inMsg, CellRef<Transaction> transaction, Coins fwdFee) {
        Intrinsics.checkNotNullParameter(inMsg, "inMsg");
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(fwdFee, "fwdFee");
        this.inMsg = inMsg;
        this.transaction = transaction;
        this.fwdFee = fwdFee;
    }

    public static final /* synthetic */ void write$Self(MsgImportFin msgImportFin, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], msgImportFin.inMsg);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], msgImportFin.transaction);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, Coins$$serializer.INSTANCE, msgImportFin.fwdFee);
    }

    public final CellRef<MsgEnvelope> getInMsg() {
        return this.inMsg;
    }

    public final CellRef<Transaction> getTransaction() {
        return this.transaction;
    }

    public final Coins getFwdFee() {
        return this.fwdFee;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: MsgImportFin.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<MsgImportFin> {
        private final /* synthetic */ MsgImportFinTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public MsgImportFin loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public MsgImportFin loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, MsgImportFin value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<MsgImportFin> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = MsgImportFinTlbConstructor.INSTANCE;
        }

        public final KSerializer<MsgImportFin> serializer() {
            return MsgImportFin$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("msg_import_fin");
        open.field("in_msg", this.inMsg);
        open.field("transaction", this.transaction);
        open.field("fwd_fee", this.fwdFee);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
