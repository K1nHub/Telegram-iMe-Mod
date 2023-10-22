package org.ton.block;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.block.Either;
import org.ton.block.Maybe;
import org.ton.block.StateInit;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Message.kt */
/* loaded from: classes6.dex */
public final class MessageTlbConstructor<X> extends org.ton.tlb.TlbConstructor<Message<X>> {
    private static final TlbCodec<Maybe<Either<StateInit, CellRef<StateInit>>>> maybeEitherStateInitStateInit;
    private final TlbCodec<Either<X, CellRef<X>>> eitherXX;

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
        storeTlb(cellBuilder, (Message) ((Message) obj));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MessageTlbConstructor(TlbCodec<X> x) {
        super("message$_ {X:Type} info:CommonMsgInfo init:(Maybe (Either StateInit ^StateInit)) body:(Either X ^X) = Message X;", BitString.Companion.empty());
        Intrinsics.checkNotNullParameter(x, "x");
        this.eitherXX = EitherKt.invoke(Either.Companion, x, CellRef.Companion.tlbCodec(x));
    }

    public void storeTlb(CellBuilder cellBuilder, Message<X> value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        CommonMsgInfo.Companion.storeTlb(cellBuilder, (CellBuilder) value.getInfo());
        maybeEitherStateInitStateInit.storeTlb(cellBuilder, value.getInit());
        this.eitherXX.storeTlb(cellBuilder, value.getBody());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public Message<X> loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new Message<>(CommonMsgInfo.Companion.loadTlb(cellSlice), maybeEitherStateInitStateInit.loadTlb(cellSlice), this.eitherXX.loadTlb(cellSlice));
    }

    /* compiled from: Message.kt */
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
        Maybe.Companion companion = Maybe.Companion;
        Either.Companion companion2 = Either.Companion;
        StateInit.Companion companion3 = StateInit.Companion;
        maybeEitherStateInitStateInit = companion.tlbCodec(companion2.tlbCodec(companion3, CellRef.Companion.tlbCodec(companion3)));
    }
}
