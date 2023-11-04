package org.ton.block;

import kotlin.UInt;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.UIntSerializer;
import kotlinx.serialization.internal.ULongSerializer;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: Counters.kt */
@Serializable
/* loaded from: classes6.dex */
public final class Counters implements TlbObject {
    public static final Companion Companion = new Companion(null);
    private final long cnt2048;
    private final long cnt65536;
    private final int lastUpdated;
    private final long total;

    public /* synthetic */ Counters(int i, long j, long j2, long j3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, j, j2, j3);
    }

    public /* synthetic */ Counters(int i, UInt uInt, ULong uLong, ULong uLong2, ULong uLong3, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, uInt, uLong, uLong2, uLong3, serializationConstructorMarker);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Counters) {
            Counters counters = (Counters) obj;
            return this.lastUpdated == counters.lastUpdated && this.total == counters.total && this.cnt2048 == counters.cnt2048 && this.cnt65536 == counters.cnt65536;
        }
        return false;
    }

    public int hashCode() {
        return (((((UInt.m1974hashCodeimpl(this.lastUpdated) * 31) + ULong.m1996hashCodeimpl(this.total)) * 31) + ULong.m1996hashCodeimpl(this.cnt2048)) * 31) + ULong.m1996hashCodeimpl(this.cnt65536);
    }

    private Counters(int i, long j, long j2, long j3) {
        this.lastUpdated = i;
        this.total = j;
        this.cnt2048 = j2;
        this.cnt65536 = j3;
    }

    private Counters(int i, UInt uInt, ULong uLong, ULong uLong2, ULong uLong3, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i & 15)) {
            PluginExceptionsKt.throwMissingFieldException(i, 15, Counters$$serializer.INSTANCE.getDescriptor());
        }
        this.lastUpdated = uInt.m1976unboximpl();
        this.total = uLong.m1998unboximpl();
        this.cnt2048 = uLong2.m1998unboximpl();
        this.cnt65536 = uLong3.m1998unboximpl();
    }

    public static final /* synthetic */ void write$Self(Counters counters, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, UIntSerializer.INSTANCE, UInt.m1971boximpl(counters.lastUpdated));
        ULongSerializer uLongSerializer = ULongSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, uLongSerializer, ULong.m1993boximpl(counters.total));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, uLongSerializer, ULong.m1993boximpl(counters.cnt2048));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, uLongSerializer, ULong.m1993boximpl(counters.cnt65536));
    }

    /* renamed from: getLastUpdated-pVg5ArA  reason: not valid java name */
    public final int m5103getLastUpdatedpVg5ArA() {
        return this.lastUpdated;
    }

    /* renamed from: getTotal-s-VKNKU  reason: not valid java name */
    public final long m5104getTotalsVKNKU() {
        return this.total;
    }

    /* renamed from: getCnt2048-s-VKNKU  reason: not valid java name */
    public final long m5101getCnt2048sVKNKU() {
        return this.cnt2048;
    }

    /* renamed from: getCnt65536-s-VKNKU  reason: not valid java name */
    public final long m5102getCnt65536sVKNKU() {
        return this.cnt65536;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: Counters.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<Counters> {
        private final /* synthetic */ CounterTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public Counters loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public Counters loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, Counters value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<Counters> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = CounterTlbConstructor.INSTANCE;
        }

        public final KSerializer<Counters> serializer() {
            return Counters$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("counters");
        open.field("last_updated", UInt.m1971boximpl(this.lastUpdated));
        open.field("total", ULong.m1993boximpl(this.total));
        open.field("cnt2048", ULong.m1993boximpl(this.cnt2048));
        open.field("cnt65536", ULong.m1993boximpl(this.cnt65536));
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
