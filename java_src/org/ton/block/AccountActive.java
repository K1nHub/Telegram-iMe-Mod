package org.ton.block;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: AccountActive.kt */
@Serializable
/* loaded from: classes6.dex */
public final class AccountActive implements AccountState {
    public static final Companion Companion = new Companion(null);
    private final StateInit value;

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ AccountActive m5240boximpl(StateInit stateInit) {
        return new AccountActive(stateInit);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static StateInit m5241constructorimpl(StateInit value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return value;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m5242equalsimpl(StateInit stateInit, Object obj) {
        return (obj instanceof AccountActive) && Intrinsics.areEqual(stateInit, ((AccountActive) obj).m5246unboximpl());
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m5243hashCodeimpl(StateInit stateInit) {
        return stateInit.hashCode();
    }

    public boolean equals(Object obj) {
        return m5242equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m5243hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ StateInit m5246unboximpl() {
        return this.value;
    }

    private /* synthetic */ AccountActive(StateInit stateInit) {
        this.value = stateInit;
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        return m5244printimpl(this.value, printer);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m5245toStringimpl(StateInit stateInit) {
        return TlbObject.DefaultImpls.print$default(m5240boximpl(stateInit), null, 1, null).toString();
    }

    public String toString() {
        return m5245toStringimpl(this.value);
    }

    /* compiled from: AccountActive.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<AccountActive> {
        private final /* synthetic */ AccountActiveTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: loadTlb-P1cIiig  reason: not valid java name */
        public StateInit m5249loadTlbP1cIiig(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell).m5246unboximpl();
        }

        /* renamed from: loadTlb-P1cIiig  reason: not valid java name */
        public StateInit m5250loadTlbP1cIiig(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.m5252loadTlbP1cIiig(cellSlice);
        }

        /* renamed from: storeTlb-wKbCAR4  reason: not valid java name */
        public void m5251storeTlbwKbCAR4(CellBuilder cellBuilder, StateInit value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.m5253storeTlbwKbCAR4(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<AccountActive> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = AccountActiveTlbConstructor.INSTANCE;
        }

        @Override // org.ton.tlb.TlbLoader
        public /* bridge */ /* synthetic */ Object loadTlb(Cell cell) {
            return AccountActive.m5240boximpl(m5249loadTlbP1cIiig(cell));
        }

        @Override // org.ton.tlb.TlbLoader
        public /* bridge */ /* synthetic */ Object loadTlb(CellSlice cellSlice) {
            return AccountActive.m5240boximpl(m5250loadTlbP1cIiig(cellSlice));
        }

        public final KSerializer<AccountActive> serializer() {
            return AccountActive$$serializer.INSTANCE;
        }

        @Override // org.ton.tlb.TlbStorer
        public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
            m5251storeTlbwKbCAR4(cellBuilder, ((AccountActive) obj).m5246unboximpl());
        }
    }

    /* renamed from: print-impl  reason: not valid java name */
    public static TlbPrettyPrinter m5244printimpl(StateInit stateInit, TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("account_active");
        stateInit.print(printer);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
