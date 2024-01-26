package org.ton.block;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: ImportFees.kt */
@Serializable
/* loaded from: classes6.dex */
public final class ImportFees implements TlbObject {
    public static final Companion Companion = new Companion(null);
    private final Coins feesCollected;
    private final CurrencyCollection valueImported;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ImportFees) {
            ImportFees importFees = (ImportFees) obj;
            return Intrinsics.areEqual(this.feesCollected, importFees.feesCollected) && Intrinsics.areEqual(this.valueImported, importFees.valueImported);
        }
        return false;
    }

    public int hashCode() {
        return (this.feesCollected.hashCode() * 31) + this.valueImported.hashCode();
    }

    public /* synthetic */ ImportFees(int i, Coins coins, CurrencyCollection currencyCollection, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, ImportFees$$serializer.INSTANCE.getDescriptor());
        }
        this.feesCollected = coins;
        this.valueImported = currencyCollection;
    }

    public ImportFees(Coins feesCollected, CurrencyCollection valueImported) {
        Intrinsics.checkNotNullParameter(feesCollected, "feesCollected");
        Intrinsics.checkNotNullParameter(valueImported, "valueImported");
        this.feesCollected = feesCollected;
        this.valueImported = valueImported;
    }

    public static final /* synthetic */ void write$Self(ImportFees importFees, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, Coins$$serializer.INSTANCE, importFees.feesCollected);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, CurrencyCollection$$serializer.INSTANCE, importFees.valueImported);
    }

    public final Coins getFeesCollected() {
        return this.feesCollected;
    }

    public final CurrencyCollection getValueImported() {
        return this.valueImported;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: ImportFees.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<ImportFees> {
        private final /* synthetic */ ImportFeesTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public ImportFees loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public ImportFees loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, ImportFees value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<ImportFees> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = ImportFeesTlbConstructor.INSTANCE;
        }

        public final KSerializer<ImportFees> serializer() {
            return ImportFees$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("import_fees");
        open.field("fees_collected", this.feesCollected);
        open.field("value_imported", this.valueImported);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
