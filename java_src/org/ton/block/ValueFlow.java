package org.ton.block;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbCombinator;
import org.ton.tlb.TlbConstructorKt;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: ValueFlow.kt */
@Serializable
/* loaded from: classes6.dex */
public final class ValueFlow implements TlbObject {
    public static final Companion Companion = new Companion(null);
    private final CurrencyCollection created;
    private final CurrencyCollection exported;
    private final CurrencyCollection feesCollected;
    private final CurrencyCollection feesImported;
    private final CurrencyCollection fromPrevBlk;
    private final CurrencyCollection imported;
    private final CurrencyCollection minted;
    private final CurrencyCollection recovered;
    private final CurrencyCollection toNextBlk;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ValueFlow) {
            ValueFlow valueFlow = (ValueFlow) obj;
            return Intrinsics.areEqual(this.fromPrevBlk, valueFlow.fromPrevBlk) && Intrinsics.areEqual(this.toNextBlk, valueFlow.toNextBlk) && Intrinsics.areEqual(this.imported, valueFlow.imported) && Intrinsics.areEqual(this.exported, valueFlow.exported) && Intrinsics.areEqual(this.feesCollected, valueFlow.feesCollected) && Intrinsics.areEqual(this.feesImported, valueFlow.feesImported) && Intrinsics.areEqual(this.recovered, valueFlow.recovered) && Intrinsics.areEqual(this.created, valueFlow.created) && Intrinsics.areEqual(this.minted, valueFlow.minted);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((((this.fromPrevBlk.hashCode() * 31) + this.toNextBlk.hashCode()) * 31) + this.imported.hashCode()) * 31) + this.exported.hashCode()) * 31) + this.feesCollected.hashCode()) * 31) + this.feesImported.hashCode()) * 31) + this.recovered.hashCode()) * 31) + this.created.hashCode()) * 31) + this.minted.hashCode();
    }

    public /* synthetic */ ValueFlow(int i, CurrencyCollection currencyCollection, CurrencyCollection currencyCollection2, CurrencyCollection currencyCollection3, CurrencyCollection currencyCollection4, CurrencyCollection currencyCollection5, CurrencyCollection currencyCollection6, CurrencyCollection currencyCollection7, CurrencyCollection currencyCollection8, CurrencyCollection currencyCollection9, SerializationConstructorMarker serializationConstructorMarker) {
        if (511 != (i & 511)) {
            PluginExceptionsKt.throwMissingFieldException(i, 511, ValueFlow$$serializer.INSTANCE.getDescriptor());
        }
        this.fromPrevBlk = currencyCollection;
        this.toNextBlk = currencyCollection2;
        this.imported = currencyCollection3;
        this.exported = currencyCollection4;
        this.feesCollected = currencyCollection5;
        this.feesImported = currencyCollection6;
        this.recovered = currencyCollection7;
        this.created = currencyCollection8;
        this.minted = currencyCollection9;
    }

    public ValueFlow(CurrencyCollection fromPrevBlk, CurrencyCollection toNextBlk, CurrencyCollection imported, CurrencyCollection exported, CurrencyCollection feesCollected, CurrencyCollection feesImported, CurrencyCollection recovered, CurrencyCollection created, CurrencyCollection minted) {
        Intrinsics.checkNotNullParameter(fromPrevBlk, "fromPrevBlk");
        Intrinsics.checkNotNullParameter(toNextBlk, "toNextBlk");
        Intrinsics.checkNotNullParameter(imported, "imported");
        Intrinsics.checkNotNullParameter(exported, "exported");
        Intrinsics.checkNotNullParameter(feesCollected, "feesCollected");
        Intrinsics.checkNotNullParameter(feesImported, "feesImported");
        Intrinsics.checkNotNullParameter(recovered, "recovered");
        Intrinsics.checkNotNullParameter(created, "created");
        Intrinsics.checkNotNullParameter(minted, "minted");
        this.fromPrevBlk = fromPrevBlk;
        this.toNextBlk = toNextBlk;
        this.imported = imported;
        this.exported = exported;
        this.feesCollected = feesCollected;
        this.feesImported = feesImported;
        this.recovered = recovered;
        this.created = created;
        this.minted = minted;
    }

    public static final /* synthetic */ void write$Self(ValueFlow valueFlow, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        CurrencyCollection$$serializer currencyCollection$$serializer = CurrencyCollection$$serializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, currencyCollection$$serializer, valueFlow.fromPrevBlk);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, currencyCollection$$serializer, valueFlow.toNextBlk);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, currencyCollection$$serializer, valueFlow.imported);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, currencyCollection$$serializer, valueFlow.exported);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 4, currencyCollection$$serializer, valueFlow.feesCollected);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 5, currencyCollection$$serializer, valueFlow.feesImported);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 6, currencyCollection$$serializer, valueFlow.recovered);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 7, currencyCollection$$serializer, valueFlow.created);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 8, currencyCollection$$serializer, valueFlow.minted);
    }

    public final CurrencyCollection getFromPrevBlk() {
        return this.fromPrevBlk;
    }

    public final CurrencyCollection getToNextBlk() {
        return this.toNextBlk;
    }

    public final CurrencyCollection getImported() {
        return this.imported;
    }

    public final CurrencyCollection getExported() {
        return this.exported;
    }

    public final CurrencyCollection getFeesCollected() {
        return this.feesCollected;
    }

    public final CurrencyCollection getFeesImported() {
        return this.feesImported;
    }

    public final CurrencyCollection getRecovered() {
        return this.recovered;
    }

    public final CurrencyCollection getCreated() {
        return this.created;
    }

    public final CurrencyCollection getMinted() {
        return this.minted;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: ValueFlow.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCodec<ValueFlow> {
        private final /* synthetic */ TlbCombinator<ValueFlow> $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public ValueFlow loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public ValueFlow loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, ValueFlow value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        private Companion() {
            this.$$delegate_0 = TlbConstructorKt.asTlbCombinator(ValueFlowTlbConstructor.INSTANCE, Reflection.getOrCreateKotlinClass(ValueFlow.class));
        }

        public final KSerializer<ValueFlow> serializer() {
            return ValueFlow$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("value_flow");
        open.field("from_prev_blk", this.fromPrevBlk);
        open.field("to_next_blk", this.toNextBlk);
        open.field("imported", this.imported);
        open.field("exported", this.exported);
        open.field("fees_collected", this.feesCollected);
        open.field("fees_imported", this.feesImported);
        open.field("recovered", this.recovered);
        open.field("created", this.created);
        open.field("minted", this.minted);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
