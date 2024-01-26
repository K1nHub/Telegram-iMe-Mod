package org.ton.block;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: TransStorage.kt */
@Serializable
/* loaded from: classes6.dex */
public final class TransStorage implements TransactionDescr {
    public static final Companion Companion = new Companion(null);
    private final TrStoragePhase storagePh;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TransStorage) && Intrinsics.areEqual(this.storagePh, ((TransStorage) obj).storagePh);
    }

    public int hashCode() {
        return this.storagePh.hashCode();
    }

    public /* synthetic */ TransStorage(int i, TrStoragePhase trStoragePhase, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, TransStorage$$serializer.INSTANCE.getDescriptor());
        }
        this.storagePh = trStoragePhase;
    }

    public TransStorage(TrStoragePhase storagePh) {
        Intrinsics.checkNotNullParameter(storagePh, "storagePh");
        this.storagePh = storagePh;
    }

    public final TrStoragePhase getStoragePh() {
        return this.storagePh;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: TransStorage.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<TransStorage> {
        private final /* synthetic */ TransStorageTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public TransStorage loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public TransStorage loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, TransStorage value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<TransStorage> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = TransStorageTlbConstructor.INSTANCE;
        }

        public final KSerializer<TransStorage> serializer() {
            return TransStorage$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("storage_ph");
        open.field("storage_ph", this.storagePh);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
