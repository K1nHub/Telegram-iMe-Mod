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
/* compiled from: MsgImportIhr.kt */
@Serializable
/* loaded from: classes6.dex */
public final class MsgImportIhr implements InMsg {
    private final Coins ihrFee;
    private final CellRef<Message<Cell>> msg;
    private final Cell proofCreated;
    private final CellRef<Transaction> transaction;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), null, new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Cell.class), new Annotation[]{new C7584xae4e1e52("@type")})};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MsgImportIhr) {
            MsgImportIhr msgImportIhr = (MsgImportIhr) obj;
            return Intrinsics.areEqual(this.msg, msgImportIhr.msg) && Intrinsics.areEqual(this.transaction, msgImportIhr.transaction) && Intrinsics.areEqual(this.ihrFee, msgImportIhr.ihrFee) && Intrinsics.areEqual(this.proofCreated, msgImportIhr.proofCreated);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.msg.hashCode() * 31) + this.transaction.hashCode()) * 31) + this.ihrFee.hashCode()) * 31) + this.proofCreated.hashCode();
    }

    public /* synthetic */ MsgImportIhr(int i, CellRef cellRef, CellRef cellRef2, Coins coins, Cell cell, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i & 15)) {
            PluginExceptionsKt.throwMissingFieldException(i, 15, MsgImportIhr$$serializer.INSTANCE.getDescriptor());
        }
        this.msg = cellRef;
        this.transaction = cellRef2;
        this.ihrFee = coins;
        this.proofCreated = cell;
    }

    public MsgImportIhr(CellRef<Message<Cell>> msg, CellRef<Transaction> transaction, Coins ihrFee, Cell proofCreated) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(ihrFee, "ihrFee");
        Intrinsics.checkNotNullParameter(proofCreated, "proofCreated");
        this.msg = msg;
        this.transaction = transaction;
        this.ihrFee = ihrFee;
        this.proofCreated = proofCreated;
    }

    public static final /* synthetic */ void write$Self(MsgImportIhr msgImportIhr, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], msgImportIhr.msg);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], msgImportIhr.transaction);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, Coins$$serializer.INSTANCE, msgImportIhr.ihrFee);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, kSerializerArr[3], msgImportIhr.proofCreated);
    }

    public final CellRef<Message<Cell>> getMsg() {
        return this.msg;
    }

    public final CellRef<Transaction> getTransaction() {
        return this.transaction;
    }

    public final Coins getIhrFee() {
        return this.ihrFee;
    }

    public final Cell getProofCreated() {
        return this.proofCreated;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: MsgImportIhr.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<MsgImportIhr> {
        private final /* synthetic */ MsgImportIhrTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public MsgImportIhr loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public MsgImportIhr loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, MsgImportIhr value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<MsgImportIhr> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = MsgImportIhrTlbConstructor.INSTANCE;
        }

        public final KSerializer<MsgImportIhr> serializer() {
            return MsgImportIhr$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("msg_import_ihr");
        printer.field("msg", this.msg);
        printer.field("transaction", this.transaction);
        printer.field("ihr_fee", this.ihrFee);
        printer.field("proof_created", this.proofCreated);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
