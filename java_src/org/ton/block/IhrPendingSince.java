package org.ton.block;

import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: IhrPendingSince.kt */
@Serializable
/* loaded from: classes6.dex */
public final class IhrPendingSince {
    public static final Companion Companion = new Companion(null);
    private final long import_lt;

    public /* synthetic */ IhrPendingSince(int i, ULong uLong, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, uLong, serializationConstructorMarker);
    }

    public /* synthetic */ IhrPendingSince(long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof IhrPendingSince) && this.import_lt == ((IhrPendingSince) obj).import_lt;
    }

    public int hashCode() {
        return ULong.m1991hashCodeimpl(this.import_lt);
    }

    public String toString() {
        return "IhrPendingSince(import_lt=" + ((Object) ULong.m1992toStringimpl(this.import_lt)) + ')';
    }

    private IhrPendingSince(int i, ULong uLong, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, IhrPendingSince$$serializer.INSTANCE.getDescriptor());
        }
        this.import_lt = uLong.m1993unboximpl();
    }

    private IhrPendingSince(long j) {
        this.import_lt = j;
    }

    /* renamed from: getImport_lt-s-VKNKU  reason: not valid java name */
    public final long m4962getImport_ltsVKNKU() {
        return this.import_lt;
    }

    /* compiled from: IhrPendingSince.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<IhrPendingSince> {
        private final /* synthetic */ IhrPendingSinceTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public IhrPendingSince loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public IhrPendingSince loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, IhrPendingSince value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<IhrPendingSince> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = IhrPendingSinceTlbConstructor.INSTANCE;
        }

        public final KSerializer<IhrPendingSince> serializer() {
            return IhrPendingSince$$serializer.INSTANCE;
        }
    }
}
