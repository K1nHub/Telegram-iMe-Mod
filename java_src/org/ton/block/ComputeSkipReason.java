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
import org.ton.tlb.TlbCombinator;
/* compiled from: ComputeSkipReason.kt */
@Serializable
/* loaded from: classes6.dex */
public enum ComputeSkipReason {
    NO_STATE { // from class: org.ton.block.ComputeSkipReason.NO_STATE
        @Override // java.lang.Enum
        public String toString() {
            return "cskip_no_state";
        }
    },
    BAD_STATE { // from class: org.ton.block.ComputeSkipReason.BAD_STATE
        @Override // java.lang.Enum
        public String toString() {
            return "cskip_bad_state";
        }
    },
    NO_GAS { // from class: org.ton.block.ComputeSkipReason.NO_GAS
        @Override // java.lang.Enum
        public String toString() {
            return "cskip_bad_state";
        }
    };
    
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;
    public static final Companion Companion = new Companion(null);

    /* synthetic */ ComputeSkipReason(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static final TlbCombinator<ComputeSkipReason> tlbCodec() {
        return Companion.tlbCodec();
    }

    static {
        Lazy<KSerializer<Object>> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<KSerializer<Object>>() { // from class: org.ton.block.ComputeSkipReason.Companion.1
            @Override // kotlin.jvm.functions.Function0
            public final KSerializer<Object> invoke() {
                return EnumsKt.createAnnotatedEnumSerializer("org.ton.block.ComputeSkipReason", ComputeSkipReason.values(), new String[]{"cskip_no_state", "cskip_bad_state", "cskip_no_gas"}, new Annotation[][]{null, null, null}, null);
            }
        });
        $cachedSerializer$delegate = lazy;
    }

    /* compiled from: ComputeSkipReason.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCodec<ComputeSkipReason> {
        private final /* synthetic */ ComputeSkipReasonTlbCombinator $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public ComputeSkipReason loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public ComputeSkipReason loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, ComputeSkipReason value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        private Companion() {
            this.$$delegate_0 = ComputeSkipReasonTlbCombinator.INSTANCE;
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return (KSerializer) ComputeSkipReason.$cachedSerializer$delegate.getValue();
        }

        public final KSerializer<ComputeSkipReason> serializer() {
            return get$cachedSerializer();
        }

        public final TlbCombinator<ComputeSkipReason> tlbCodec() {
            return ComputeSkipReasonTlbCombinator.INSTANCE;
        }
    }
}
