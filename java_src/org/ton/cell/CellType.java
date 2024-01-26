package org.ton.cell;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: CellType.kt */
/* loaded from: classes6.dex */
public enum CellType {
    ORDINARY(-1),
    PRUNED_BRANCH(1),
    LIBRARY_REFERENCE(2),
    MERKLE_PROOF(3),
    MERKLE_UPDATE(4);
    
    public static final Companion Companion = new Companion(null);
    private static final Lazy<CellType[]> values$delegate;
    private final int value;

    public static final CellType get(int i) {
        return Companion.get(i);
    }

    CellType(int i) {
        this.value = i;
    }

    public final int getValue() {
        return this.value;
    }

    static {
        Lazy<CellType[]> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<CellType[]>() { // from class: org.ton.cell.CellType$Companion$values$2
            @Override // kotlin.jvm.functions.Function0
            public final CellType[] invoke() {
                return CellType.values();
            }
        });
        values$delegate = lazy;
    }

    public final boolean isExotic() {
        return this != ORDINARY;
    }

    public final boolean isMerkle() {
        return this == MERKLE_PROOF || this == MERKLE_UPDATE;
    }

    public final boolean isPruned() {
        return this == PRUNED_BRANCH;
    }

    /* compiled from: CellType.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private final CellType[] getValues() {
            return (CellType[]) CellType.values$delegate.getValue();
        }

        public final CellType get(int i) {
            return getValues()[i];
        }
    }
}
