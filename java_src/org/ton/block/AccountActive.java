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
    public static final /* synthetic */ AccountActive m4919boximpl(StateInit stateInit) {
        return new AccountActive(stateInit);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static StateInit m4920constructorimpl(StateInit value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return value;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m4921equalsimpl(StateInit stateInit, Object obj) {
        return (obj instanceof AccountActive) && Intrinsics.areEqual(stateInit, ((AccountActive) obj).m4925unboximpl());
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m4922hashCodeimpl(StateInit stateInit) {
        return stateInit.hashCode();
    }

    public boolean equals(Object obj) {
        return m4921equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m4922hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ StateInit m4925unboximpl() {
        return this.value;
    }

    private /* synthetic */ AccountActive(StateInit stateInit) {
        this.value = stateInit;
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        return m4923printimpl(this.value, printer);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m4924toStringimpl(StateInit stateInit) {
        return TlbObject.DefaultImpls.print$default(m4919boximpl(stateInit), null, 1, null).toString();
    }

    public String toString() {
        return m4924toStringimpl(this.value);
    }

    /* compiled from: AccountActive.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<AccountActive> {
        private final /* synthetic */ AccountActiveTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: loadTlb-P1cIiig  reason: not valid java name */
        public StateInit m4928loadTlbP1cIiig(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell).m4925unboximpl();
        }

        /* renamed from: loadTlb-P1cIiig  reason: not valid java name */
        public StateInit m4929loadTlbP1cIiig(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.m4931loadTlbP1cIiig(cellSlice);
        }

        /* renamed from: storeTlb-wKbCAR4  reason: not valid java name */
        public void m4930storeTlbwKbCAR4(CellBuilder cellBuilder, StateInit value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.m4932storeTlbwKbCAR4(cellBuilder, value);
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
            return AccountActive.m4919boximpl(m4928loadTlbP1cIiig(cell));
        }

        @Override // org.ton.tlb.TlbLoader
        public /* bridge */ /* synthetic */ Object loadTlb(CellSlice cellSlice) {
            return AccountActive.m4919boximpl(m4929loadTlbP1cIiig(cellSlice));
        }

        public final KSerializer<AccountActive> serializer() {
            return AccountActive$$serializer.INSTANCE;
        }

        @Override // org.ton.tlb.TlbStorer
        public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
            m4930storeTlbwKbCAR4(cellBuilder, ((AccountActive) obj).m4925unboximpl());
        }
    }

    /* renamed from: print-impl  reason: not valid java name */
    public static TlbPrettyPrinter m4923printimpl(StateInit stateInit, TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("account_active");
        stateInit.print(printer);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
