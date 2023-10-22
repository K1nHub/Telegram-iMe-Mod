package org.ton.block;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ton.block.StateInit;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.constructor.CellTlbConstructorKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MessageRelaxed.kt */
/* loaded from: classes6.dex */
public final class MessageRelaxedTlbConstructor<X> extends org.ton.tlb.TlbConstructor<MessageRelaxed<X>> {
    private static final TlbCodec<Either<StateInit, CellRef<StateInit>>> eitherStateInitCodec;
    private static final TlbCodec<Maybe<Either<StateInit, CellRef<StateInit>>>> maybeEitherCodec;
    private static final TlbCodec<StateInit> referencedStateInitCodec;
    private final TlbCodec<Either<X, CellRef<X>>> eitherXCodec;

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
        storeTlb(cellBuilder, (MessageRelaxed) ((MessageRelaxed) obj));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MessageRelaxedTlbConstructor(TlbCodec<X> x) {
        super("message$_ {X:Type} info:CommonMsgInfoRelaxed init:(Maybe (Either StateInit ^StateInit)) body:(Either X ^X) = MessageRelaxed X;", null, 2, null);
        Intrinsics.checkNotNullParameter(x, "x");
        this.eitherXCodec = Either.Companion.tlbCodec(x, CellRef.Companion.tlbCodec(x));
    }

    /* compiled from: MessageRelaxed.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        new Companion(null);
        Cell.Companion companion = Cell.Companion;
        StateInit.Companion companion2 = StateInit.Companion;
        TlbCodec<StateInit> tlbCodec = CellTlbConstructorKt.tlbCodec(companion, companion2);
        referencedStateInitCodec = tlbCodec;
        TlbCodec<Either<StateInit, CellRef<StateInit>>> tlbCodec2 = Either.Companion.tlbCodec(companion2, CellRef.Companion.tlbCodec(tlbCodec));
        eitherStateInitCodec = tlbCodec2;
        maybeEitherCodec = Maybe.Companion.tlbCodec(tlbCodec2);
    }

    public void storeTlb(CellBuilder cellBuilder, MessageRelaxed<X> value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        CommonMsgInfoRelaxed.Companion.storeTlb(cellBuilder, (CellBuilder) value.getInfo());
        maybeEitherCodec.storeTlb(cellBuilder, value.getInit());
        this.eitherXCodec.storeTlb(cellBuilder, value.getBody());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public MessageRelaxed<X> loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new MessageRelaxed<>(CommonMsgInfoRelaxed.Companion.loadTlb(cellSlice), maybeEitherCodec.loadTlb(cellSlice), this.eitherXCodec.loadTlb(cellSlice));
    }
}
