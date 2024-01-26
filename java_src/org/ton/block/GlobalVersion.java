package org.ton.block;

import kotlin.UInt;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
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
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbCombinator;
import org.ton.tlb.TlbConstructorKt;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: GlobalVersion.kt */
@Serializable
/* loaded from: classes6.dex */
public final class GlobalVersion implements TlbObject {
    public static final Companion Companion = new Companion(null);
    private final long capabilities;
    private final int version;

    public /* synthetic */ GlobalVersion(int i, long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, j);
    }

    public /* synthetic */ GlobalVersion(int i, UInt uInt, ULong uLong, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, uInt, uLong, serializationConstructorMarker);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GlobalVersion) {
            GlobalVersion globalVersion = (GlobalVersion) obj;
            return this.version == globalVersion.version && this.capabilities == globalVersion.capabilities;
        }
        return false;
    }

    public int hashCode() {
        return (UInt.m1977hashCodeimpl(this.version) * 31) + ULong.m1999hashCodeimpl(this.capabilities);
    }

    private GlobalVersion(int i, long j) {
        this.version = i;
        this.capabilities = j;
    }

    private GlobalVersion(int i, UInt uInt, ULong uLong, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, GlobalVersion$$serializer.INSTANCE.getDescriptor());
        }
        this.version = uInt.m1979unboximpl();
        this.capabilities = uLong.m2001unboximpl();
    }

    public static final /* synthetic */ void write$Self(GlobalVersion globalVersion, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, UIntSerializer.INSTANCE, UInt.m1974boximpl(globalVersion.version));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, ULongSerializer.INSTANCE, ULong.m1996boximpl(globalVersion.capabilities));
    }

    /* renamed from: getVersion-pVg5ArA  reason: not valid java name */
    public final int m5282getVersionpVg5ArA() {
        return this.version;
    }

    /* renamed from: getCapabilities-s-VKNKU  reason: not valid java name */
    public final long m5281getCapabilitiessVKNKU() {
        return this.capabilities;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: GlobalVersion.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCodec<GlobalVersion> {
        private final /* synthetic */ TlbCombinator<GlobalVersion> $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public GlobalVersion loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public GlobalVersion loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, GlobalVersion value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        private Companion() {
            this.$$delegate_0 = TlbConstructorKt.asTlbCombinator(GlobalVersionTlbConstructor.INSTANCE, Reflection.getOrCreateKotlinClass(GlobalVersion.class));
        }

        public final KSerializer<GlobalVersion> serializer() {
            return GlobalVersion$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("capabilities");
        open.field("version", UInt.m1974boximpl(this.version));
        open.field("capabilities", ULong.m1996boximpl(this.capabilities));
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
