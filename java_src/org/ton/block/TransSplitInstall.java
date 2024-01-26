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
/* compiled from: TransSplitInstall.kt */
@Serializable
/* loaded from: classes6.dex */
public final class TransSplitInstall implements TransactionDescr {
    private final boolean installed;
    private final CellRef<Transaction> prepareTransaction;
    private final SplitMergeInfo splitInfo;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), null};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TransSplitInstall) {
            TransSplitInstall transSplitInstall = (TransSplitInstall) obj;
            return Intrinsics.areEqual(this.splitInfo, transSplitInstall.splitInfo) && Intrinsics.areEqual(this.prepareTransaction, transSplitInstall.prepareTransaction) && this.installed == transSplitInstall.installed;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.splitInfo.hashCode() * 31) + this.prepareTransaction.hashCode()) * 31;
        boolean z = this.installed;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public /* synthetic */ TransSplitInstall(int i, SplitMergeInfo splitMergeInfo, CellRef cellRef, boolean z, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, TransSplitInstall$$serializer.INSTANCE.getDescriptor());
        }
        this.splitInfo = splitMergeInfo;
        this.prepareTransaction = cellRef;
        this.installed = z;
    }

    public TransSplitInstall(SplitMergeInfo splitInfo, CellRef<Transaction> prepareTransaction, boolean z) {
        Intrinsics.checkNotNullParameter(splitInfo, "splitInfo");
        Intrinsics.checkNotNullParameter(prepareTransaction, "prepareTransaction");
        this.splitInfo = splitInfo;
        this.prepareTransaction = prepareTransaction;
        this.installed = z;
    }

    public static final /* synthetic */ void write$Self(TransSplitInstall transSplitInstall, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, SplitMergeInfo$$serializer.INSTANCE, transSplitInstall.splitInfo);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], transSplitInstall.prepareTransaction);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 2, transSplitInstall.installed);
    }

    public final SplitMergeInfo getSplitInfo() {
        return this.splitInfo;
    }

    public final CellRef<Transaction> getPrepareTransaction() {
        return this.prepareTransaction;
    }

    public final boolean getInstalled() {
        return this.installed;
    }

    /* compiled from: TransSplitInstall.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<TransSplitInstall> {
        private final /* synthetic */ TransSplitInstallTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public TransSplitInstall loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public TransSplitInstall loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, TransSplitInstall value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<TransSplitInstall> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = TransSplitInstallTlbConstructor.INSTANCE;
        }

        public final KSerializer<TransSplitInstall> serializer() {
            return TransSplitInstall$$serializer.INSTANCE;
        }
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("trans_split_install");
        open.field("split_info", this.splitInfo);
        open.field("prepare_transaction", this.prepareTransaction);
        open.field("installed", Boolean.valueOf(this.installed));
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
