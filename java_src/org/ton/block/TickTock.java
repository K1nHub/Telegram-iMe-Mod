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
/* compiled from: TickTock.kt */
@Serializable
/* loaded from: classes6.dex */
public final class TickTock implements TlbObject {
    public static final Companion Companion = new Companion(null);
    private final boolean tick;
    private final boolean tock;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TickTock) {
            TickTock tickTock = (TickTock) obj;
            return this.tick == tickTock.tick && this.tock == tickTock.tock;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z = this.tick;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        boolean z2 = this.tock;
        return i + (z2 ? 1 : z2 ? 1 : 0);
    }

    public /* synthetic */ TickTock(int i, boolean z, boolean z2, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, TickTock$$serializer.INSTANCE.getDescriptor());
        }
        this.tick = z;
        this.tock = z2;
    }

    public TickTock(boolean z, boolean z2) {
        this.tick = z;
        this.tock = z2;
    }

    public static final /* synthetic */ void write$Self(TickTock tickTock, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeBooleanElement(serialDescriptor, 0, tickTock.tick);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 1, tickTock.tock);
    }

    public final boolean getTick() {
        return this.tick;
    }

    public final boolean getTock() {
        return this.tock;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: TickTock.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<TickTock> {
        private final /* synthetic */ TickTockTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public TickTock loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public TickTock loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, TickTock value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<TickTock> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = TickTockTlbConstructor.INSTANCE;
        }

        public final KSerializer<TickTock> serializer() {
            return TickTock$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("tick_tock");
        open.field("tick", Boolean.valueOf(this.tick));
        open.field("tick", Boolean.valueOf(this.tock));
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
