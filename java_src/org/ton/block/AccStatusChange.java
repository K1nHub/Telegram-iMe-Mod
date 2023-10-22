package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.EnumsKt;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
/* compiled from: AccStatusChange.kt */
@Serializable
/* loaded from: classes6.dex */
public enum AccStatusChange {
    UNCHANGED { // from class: org.ton.block.AccStatusChange.UNCHANGED
        @Override // java.lang.Enum
        public String toString() {
            return "acst_unchanged";
        }
    },
    FROZEN { // from class: org.ton.block.AccStatusChange.FROZEN
        @Override // java.lang.Enum
        public String toString() {
            return "acst_frozen";
        }
    },
    DELETED { // from class: org.ton.block.AccStatusChange.DELETED
        @Override // java.lang.Enum
        public String toString() {
            return "acst_deleted";
        }
    };
    
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;
    public static final Companion Companion = new Companion(null);

    /* synthetic */ AccStatusChange(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    static {
        Lazy<KSerializer<Object>> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<KSerializer<Object>>() { // from class: org.ton.block.AccStatusChange.Companion.1
            @Override // kotlin.jvm.functions.Function0
            public final KSerializer<Object> invoke() {
                return EnumsKt.createAnnotatedEnumSerializer("org.ton.block.AccStatusChange", AccStatusChange.values(), new String[]{"acst_unchanged", "acst_frozen", "acst_deleted"}, new Annotation[][]{null, null, null}, null);
            }
        });
        $cachedSerializer$delegate = lazy;
    }

    /* compiled from: AccStatusChange.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCodec<AccStatusChange> {
        private final /* synthetic */ AccStatusChangeTlbCombinator $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public AccStatusChange loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public AccStatusChange loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, AccStatusChange value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        private Companion() {
            this.$$delegate_0 = AccStatusChangeTlbCombinator.INSTANCE;
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return (KSerializer) AccStatusChange.$cachedSerializer$delegate.getValue();
        }

        public final KSerializer<AccStatusChange> serializer() {
            return get$cachedSerializer();
        }
    }
}
