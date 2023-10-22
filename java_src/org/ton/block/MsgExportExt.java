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
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: MsgExportExt.kt */
@Serializable
/* loaded from: classes6.dex */
public final class MsgExportExt implements OutMsg {
    private final CellRef<Message<Cell>> msg;
    private final CellRef<Transaction> transaction;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0])};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MsgExportExt) {
            MsgExportExt msgExportExt = (MsgExportExt) obj;
            return Intrinsics.areEqual(this.msg, msgExportExt.msg) && Intrinsics.areEqual(this.transaction, msgExportExt.transaction);
        }
        return false;
    }

    public int hashCode() {
        return (this.msg.hashCode() * 31) + this.transaction.hashCode();
    }

    public String toString() {
        return "MsgExportExt(msg=" + this.msg + ", transaction=" + this.transaction + ')';
    }

    public /* synthetic */ MsgExportExt(int i, CellRef cellRef, CellRef cellRef2, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, MsgExportExt$$serializer.INSTANCE.getDescriptor());
        }
        this.msg = cellRef;
        this.transaction = cellRef2;
    }

    public MsgExportExt(CellRef<Message<Cell>> msg, CellRef<Transaction> transaction) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        this.msg = msg;
        this.transaction = transaction;
    }

    public static final /* synthetic */ void write$Self(MsgExportExt msgExportExt, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], msgExportExt.msg);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], msgExportExt.transaction);
    }

    public final CellRef<Message<Cell>> getMsg() {
        return this.msg;
    }

    public final CellRef<Transaction> getTransaction() {
        return this.transaction;
    }

    /* compiled from: MsgExportExt.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<MsgExportExt> {
        private final /* synthetic */ MsgExportExtTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public MsgExportExt loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public MsgExportExt loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, MsgExportExt value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<MsgExportExt> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = MsgExportExtTlbConstructor.INSTANCE;
        }

        public final KSerializer<MsgExportExt> serializer() {
            return MsgExportExt$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("msg_export_ext");
        open.field("msg", this.msg);
        open.field("transaction", this.transaction);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
