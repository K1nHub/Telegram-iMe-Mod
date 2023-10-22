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
/* compiled from: PrevBlkInfo.kt */
@Serializable
/* loaded from: classes6.dex */
public final class PrevBlkInfo implements BlkPrevInfo {
    public static final Companion Companion = new Companion(null);
    private final ExtBlkRef prev;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PrevBlkInfo) && Intrinsics.areEqual(this.prev, ((PrevBlkInfo) obj).prev);
    }

    public int hashCode() {
        return this.prev.hashCode();
    }

    public /* synthetic */ PrevBlkInfo(int i, ExtBlkRef extBlkRef, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, PrevBlkInfo$$serializer.INSTANCE.getDescriptor());
        }
        this.prev = extBlkRef;
    }

    public PrevBlkInfo(ExtBlkRef prev) {
        Intrinsics.checkNotNullParameter(prev, "prev");
        this.prev = prev;
    }

    public final ExtBlkRef getPrev() {
        return this.prev;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: PrevBlkInfo.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<PrevBlkInfo> {
        private final /* synthetic */ PrevBlkInfoTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public PrevBlkInfo loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public PrevBlkInfo loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, PrevBlkInfo value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<PrevBlkInfo> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = PrevBlkInfoTlbConstructor.INSTANCE;
        }

        public final KSerializer<PrevBlkInfo> serializer() {
            return PrevBlkInfo$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("prev_blk_info");
        open.field("prev", this.prev);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
