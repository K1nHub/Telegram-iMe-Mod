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
/* compiled from: PrevBlksInfo.kt */
@Serializable
/* loaded from: classes6.dex */
public final class PrevBlksInfo implements BlkPrevInfo {
    private final CellRef<ExtBlkRef> prev1;
    private final CellRef<ExtBlkRef> prev2;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0])};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PrevBlksInfo) {
            PrevBlksInfo prevBlksInfo = (PrevBlksInfo) obj;
            return Intrinsics.areEqual(this.prev1, prevBlksInfo.prev1) && Intrinsics.areEqual(this.prev2, prevBlksInfo.prev2);
        }
        return false;
    }

    public int hashCode() {
        return (this.prev1.hashCode() * 31) + this.prev2.hashCode();
    }

    public /* synthetic */ PrevBlksInfo(int i, CellRef cellRef, CellRef cellRef2, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, PrevBlksInfo$$serializer.INSTANCE.getDescriptor());
        }
        this.prev1 = cellRef;
        this.prev2 = cellRef2;
    }

    public PrevBlksInfo(CellRef<ExtBlkRef> prev1, CellRef<ExtBlkRef> prev2) {
        Intrinsics.checkNotNullParameter(prev1, "prev1");
        Intrinsics.checkNotNullParameter(prev2, "prev2");
        this.prev1 = prev1;
        this.prev2 = prev2;
    }

    public static final /* synthetic */ void write$Self(PrevBlksInfo prevBlksInfo, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], prevBlksInfo.prev1);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], prevBlksInfo.prev2);
    }

    public final CellRef<ExtBlkRef> getPrev1() {
        return this.prev1;
    }

    public final CellRef<ExtBlkRef> getPrev2() {
        return this.prev2;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: PrevBlksInfo.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<PrevBlksInfo> {
        private final /* synthetic */ PrevBlksInfoTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public PrevBlksInfo loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public PrevBlksInfo loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, PrevBlksInfo value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<PrevBlksInfo> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = PrevBlksInfoTlbConstructor.INSTANCE;
        }

        public final KSerializer<PrevBlksInfo> serializer() {
            return PrevBlksInfo$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("prev_blks_info");
        open.field("prev1", this.prev1);
        open.field("prev2", this.prev2);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
