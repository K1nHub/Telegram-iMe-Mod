package org.ton.block;

import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.ULongSerializer;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: KeyMaxLt.kt */
@Serializable
/* loaded from: classes6.dex */
public final class KeyMaxLt implements TlbObject {
    public static final Companion Companion = new Companion(null);
    private final boolean key;
    private final long maxEndLt;

    public /* synthetic */ KeyMaxLt(int i, boolean z, ULong uLong, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, z, uLong, serializationConstructorMarker);
    }

    public /* synthetic */ KeyMaxLt(boolean z, long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof KeyMaxLt) {
            KeyMaxLt keyMaxLt = (KeyMaxLt) obj;
            return this.key == keyMaxLt.key && this.maxEndLt == keyMaxLt.maxEndLt;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z = this.key;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return (r0 * 31) + ULong.m1998hashCodeimpl(this.maxEndLt);
    }

    private KeyMaxLt(int i, boolean z, ULong uLong, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, KeyMaxLt$$serializer.INSTANCE.getDescriptor());
        }
        this.key = z;
        this.maxEndLt = uLong.m2000unboximpl();
    }

    private KeyMaxLt(boolean z, long j) {
        this.key = z;
        this.maxEndLt = j;
    }

    public static final /* synthetic */ void write$Self(KeyMaxLt keyMaxLt, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeBooleanElement(serialDescriptor, 0, keyMaxLt.key);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, ULongSerializer.INSTANCE, ULong.m1995boximpl(keyMaxLt.maxEndLt));
    }

    public final boolean getKey() {
        return this.key;
    }

    /* renamed from: getMaxEndLt-s-VKNKU  reason: not valid java name */
    public final long m5101getMaxEndLtsVKNKU() {
        return this.maxEndLt;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: KeyMaxLt.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<KeyMaxLt> {
        private final /* synthetic */ KeyMaxLtTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public KeyMaxLt loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public KeyMaxLt loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, KeyMaxLt value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<KeyMaxLt> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = KeyMaxLtTlbConstructor.INSTANCE;
        }

        public final KSerializer<KeyMaxLt> serializer() {
            return KeyMaxLt$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("key_max_lt");
        open.field("key", Boolean.valueOf(this.key));
        open.field("max_end_lt", ULong.m1995boximpl(this.maxEndLt));
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
