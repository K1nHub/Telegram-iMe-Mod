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
/* compiled from: StorageUsedShort.kt */
@Serializable
/* loaded from: classes6.dex */
public final class StorageUsedShort implements TlbObject {
    public static final Companion Companion = new Companion(null);
    private final VarUInteger bits;
    private final VarUInteger cells;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StorageUsedShort) {
            StorageUsedShort storageUsedShort = (StorageUsedShort) obj;
            return Intrinsics.areEqual(this.cells, storageUsedShort.cells) && Intrinsics.areEqual(this.bits, storageUsedShort.bits);
        }
        return false;
    }

    public int hashCode() {
        return (this.cells.hashCode() * 31) + this.bits.hashCode();
    }

    public /* synthetic */ StorageUsedShort(int i, VarUInteger varUInteger, VarUInteger varUInteger2, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, StorageUsedShort$$serializer.INSTANCE.getDescriptor());
        }
        this.cells = varUInteger;
        this.bits = varUInteger2;
    }

    public StorageUsedShort(VarUInteger cells, VarUInteger bits) {
        Intrinsics.checkNotNullParameter(cells, "cells");
        Intrinsics.checkNotNullParameter(bits, "bits");
        this.cells = cells;
        this.bits = bits;
    }

    public static final /* synthetic */ void write$Self(StorageUsedShort storageUsedShort, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        VarUInteger$$serializer varUInteger$$serializer = VarUInteger$$serializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, varUInteger$$serializer, storageUsedShort.cells);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, varUInteger$$serializer, storageUsedShort.bits);
    }

    public final VarUInteger getCells() {
        return this.cells;
    }

    public final VarUInteger getBits() {
        return this.bits;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: StorageUsedShort.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<StorageUsedShort> {
        private final /* synthetic */ StorageUsedShortTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public StorageUsedShort loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public StorageUsedShort loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, StorageUsedShort value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<StorageUsedShort> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = StorageUsedShortTlbConstructor.INSTANCE;
        }

        public final KSerializer<StorageUsedShort> serializer() {
            return StorageUsedShort$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("storage_used_short");
        open.field("cells", this.cells);
        open.field("bits", this.bits);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
