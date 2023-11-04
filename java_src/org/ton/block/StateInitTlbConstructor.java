package org.ton.block;

import kotlin.UInt;
import kotlin.jvm.internal.Intrinsics;
import org.ton.block.Maybe;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashMapE;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.constructor.AnyTlbConstructor;
import org.ton.tlb.constructor.UIntTlbConstructor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StateInit.kt */
/* loaded from: classes6.dex */
public final class StateInitTlbConstructor extends org.ton.tlb.TlbConstructor<StateInit> {
    public static final StateInitTlbConstructor INSTANCE = new StateInitTlbConstructor();
    private static final TlbCodec<HashMapE<SimpleLib>> Library;
    private static final TlbCodec<Maybe<UInt>> Maybe5;
    private static final TlbCodec<Maybe<CellRef<Cell>>> MaybeCell;
    private static final TlbCodec<Maybe<TickTock>> MaybeTickTock;

    private StateInitTlbConstructor() {
        super("_ split_depth:(Maybe (## 5)) special:(Maybe TickTock) code:(Maybe ^Cell) data:(Maybe ^Cell) library:(HashmapE 256 SimpleLib) = StateInit;", null, 2, null);
    }

    static {
        Maybe.Companion companion = Maybe.Companion;
        Maybe5 = companion.tlbCodec(UIntTlbConstructor.Companion.m5255int(5));
        MaybeTickTock = companion.tlbCodec(TickTock.Companion);
        MaybeCell = companion.tlbCodec(CellRef.Companion.tlbCodec(AnyTlbConstructor.INSTANCE));
        Library = HashMapE.Companion.tlbCodec(256, SimpleLib.Companion);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, StateInit value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        Maybe5.storeTlb(cellBuilder, value.splitDepth());
        MaybeTickTock.storeTlb(cellBuilder, value.special());
        TlbCodec<Maybe<CellRef<Cell>>> tlbCodec = MaybeCell;
        tlbCodec.storeTlb(cellBuilder, value.code());
        tlbCodec.storeTlb(cellBuilder, value.data());
        Library.storeTlb(cellBuilder, value.library());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public StateInit loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        Maybe<UInt> loadTlb = Maybe5.loadTlb(cellSlice);
        Maybe<TickTock> loadTlb2 = MaybeTickTock.loadTlb(cellSlice);
        TlbCodec<Maybe<CellRef<Cell>>> tlbCodec = MaybeCell;
        return new StateInit(loadTlb, loadTlb2, tlbCodec.loadTlb(cellSlice), tlbCodec.loadTlb(cellSlice), Library.loadTlb(cellSlice));
    }
}
