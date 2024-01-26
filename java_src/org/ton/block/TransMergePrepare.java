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
/* compiled from: TransMergePrepare.kt */
@Serializable
/* loaded from: classes6.dex */
public final class TransMergePrepare implements TransactionDescr {
    public static final Companion Companion = new Companion(null);
    private final boolean aborted;
    private final SplitMergeInfo splitInfo;
    private final TrStoragePhase storagePh;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TransMergePrepare) {
            TransMergePrepare transMergePrepare = (TransMergePrepare) obj;
            return Intrinsics.areEqual(this.splitInfo, transMergePrepare.splitInfo) && Intrinsics.areEqual(this.storagePh, transMergePrepare.storagePh) && this.aborted == transMergePrepare.aborted;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.splitInfo.hashCode() * 31) + this.storagePh.hashCode()) * 31;
        boolean z = this.aborted;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public /* synthetic */ TransMergePrepare(int i, SplitMergeInfo splitMergeInfo, TrStoragePhase trStoragePhase, boolean z, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, TransMergePrepare$$serializer.INSTANCE.getDescriptor());
        }
        this.splitInfo = splitMergeInfo;
        this.storagePh = trStoragePhase;
        this.aborted = z;
    }

    public TransMergePrepare(SplitMergeInfo splitInfo, TrStoragePhase storagePh, boolean z) {
        Intrinsics.checkNotNullParameter(splitInfo, "splitInfo");
        Intrinsics.checkNotNullParameter(storagePh, "storagePh");
        this.splitInfo = splitInfo;
        this.storagePh = storagePh;
        this.aborted = z;
    }

    public static final /* synthetic */ void write$Self(TransMergePrepare transMergePrepare, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, SplitMergeInfo$$serializer.INSTANCE, transMergePrepare.splitInfo);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, TrStoragePhase$$serializer.INSTANCE, transMergePrepare.storagePh);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 2, transMergePrepare.aborted);
    }

    public final SplitMergeInfo getSplitInfo() {
        return this.splitInfo;
    }

    public final TrStoragePhase getStoragePh() {
        return this.storagePh;
    }

    public final boolean getAborted() {
        return this.aborted;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: TransMergePrepare.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<TransMergePrepare> {
        private final /* synthetic */ TransMergePrepareTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public TransMergePrepare loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public TransMergePrepare loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, TransMergePrepare value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<TransMergePrepare> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = TransMergePrepareTlbConstructor.INSTANCE;
        }

        public final KSerializer<TransMergePrepare> serializer() {
            return TransMergePrepare$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("trans_merge_prepare");
        open.field("split_info", this.splitInfo);
        open.field("storage_ph", this.storagePh);
        open.field("aborted", Boolean.valueOf(this.aborted));
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
