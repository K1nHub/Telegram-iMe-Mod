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
/* compiled from: KeyExtBlkRef.kt */
@Serializable
/* loaded from: classes6.dex */
public final class KeyExtBlkRef implements TlbObject {
    public static final Companion Companion = new Companion(null);
    private final ExtBlkRef blkRef;
    private final boolean key;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof KeyExtBlkRef) {
            KeyExtBlkRef keyExtBlkRef = (KeyExtBlkRef) obj;
            return this.key == keyExtBlkRef.key && Intrinsics.areEqual(this.blkRef, keyExtBlkRef.blkRef);
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
        return (r0 * 31) + this.blkRef.hashCode();
    }

    public /* synthetic */ KeyExtBlkRef(int i, boolean z, ExtBlkRef extBlkRef, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, KeyExtBlkRef$$serializer.INSTANCE.getDescriptor());
        }
        this.key = z;
        this.blkRef = extBlkRef;
    }

    public KeyExtBlkRef(boolean z, ExtBlkRef blkRef) {
        Intrinsics.checkNotNullParameter(blkRef, "blkRef");
        this.key = z;
        this.blkRef = blkRef;
    }

    public static final /* synthetic */ void write$Self(KeyExtBlkRef keyExtBlkRef, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeBooleanElement(serialDescriptor, 0, keyExtBlkRef.key);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, ExtBlkRef$$serializer.INSTANCE, keyExtBlkRef.blkRef);
    }

    public final boolean getKey() {
        return this.key;
    }

    public final ExtBlkRef getBlkRef() {
        return this.blkRef;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: KeyExtBlkRef.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<KeyExtBlkRef> {
        private final /* synthetic */ KeyExtBlkRefTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public KeyExtBlkRef loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public KeyExtBlkRef loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, KeyExtBlkRef value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<KeyExtBlkRef> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = KeyExtBlkRefTlbConstructor.INSTANCE;
        }

        public final KSerializer<KeyExtBlkRef> serializer() {
            return KeyExtBlkRef$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("");
        open.field("key", Boolean.valueOf(this.key));
        open.field("blk_ref", this.blkRef);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
