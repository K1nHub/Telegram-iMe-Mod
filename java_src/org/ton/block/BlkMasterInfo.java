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
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: BlkMasterInfo.kt */
@Serializable
/* loaded from: classes6.dex */
public final class BlkMasterInfo implements TlbObject {
    public static final Companion Companion = new Companion(null);
    private final ExtBlkRef master;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BlkMasterInfo) && Intrinsics.areEqual(this.master, ((BlkMasterInfo) obj).master);
    }

    public int hashCode() {
        return this.master.hashCode();
    }

    public /* synthetic */ BlkMasterInfo(int i, ExtBlkRef extBlkRef, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, BlkMasterInfo$$serializer.INSTANCE.getDescriptor());
        }
        this.master = extBlkRef;
    }

    public BlkMasterInfo(ExtBlkRef master) {
        Intrinsics.checkNotNullParameter(master, "master");
        this.master = master;
    }

    public final ExtBlkRef getMaster() {
        return this.master;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: BlkMasterInfo.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCodec<BlkMasterInfo> {
        private final /* synthetic */ BlkMasterInfoTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public BlkMasterInfo loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public BlkMasterInfo loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, BlkMasterInfo value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        private Companion() {
            this.$$delegate_0 = BlkMasterInfoTlbConstructor.INSTANCE;
        }

        public final KSerializer<BlkMasterInfo> serializer() {
            return BlkMasterInfo$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("master_info");
        open.field("master", this.master);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
