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
import org.ton.tlb.TlbCombinator;
import org.ton.tlb.providers.TlbCombinatorProvider;
/* compiled from: AccountStatus.kt */
@Serializable
/* loaded from: classes6.dex */
public enum AccountStatus {
    UNINIT { // from class: org.ton.block.AccountStatus.UNINIT
        @Override // java.lang.Enum
        public String toString() {
            return "acc_state_uninit";
        }
    },
    FROZEN { // from class: org.ton.block.AccountStatus.FROZEN
        @Override // java.lang.Enum
        public String toString() {
            return "acc_state_frozen";
        }
    },
    ACTIVE { // from class: org.ton.block.AccountStatus.ACTIVE
        @Override // java.lang.Enum
        public String toString() {
            return "acc_state_active";
        }
    },
    NONEXIST { // from class: org.ton.block.AccountStatus.NONEXIST
        @Override // java.lang.Enum
        public String toString() {
            return "acc_state_nonexist";
        }
    };
    
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;
    public static final Companion Companion = new Companion(null);

    /* synthetic */ AccountStatus(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    static {
        Lazy<KSerializer<Object>> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<KSerializer<Object>>() { // from class: org.ton.block.AccountStatus.Companion.1
            @Override // kotlin.jvm.functions.Function0
            public final KSerializer<Object> invoke() {
                return EnumsKt.createAnnotatedEnumSerializer("org.ton.block.AccountStatus", AccountStatus.values(), new String[]{"acc_state_uninit", "acc_state_frozen", "acc_state_active", "acc_state_nonexist"}, new Annotation[][]{null, null, null, null}, null);
            }
        });
        $cachedSerializer$delegate = lazy;
    }

    /* compiled from: AccountStatus.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCombinatorProvider<AccountStatus> {
        private final /* synthetic */ AccountStatusTlbCombinator $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public AccountStatus loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public AccountStatus loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, AccountStatus value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbCombinatorProvider
        public TlbCombinator<AccountStatus> tlbCombinator() {
            return this.$$delegate_0.tlbCombinator();
        }

        private Companion() {
            this.$$delegate_0 = AccountStatusTlbCombinator.INSTANCE;
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return (KSerializer) AccountStatus.$cachedSerializer$delegate.getValue();
        }

        public final KSerializer<AccountStatus> serializer() {
            return get$cachedSerializer();
        }
    }
}
