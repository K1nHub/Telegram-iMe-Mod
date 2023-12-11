package org.ton.block;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.block.Either;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Either.kt */
/* loaded from: classes6.dex */
public final class RightTlbConstructor<X, Y> extends org.ton.tlb.TlbConstructor<Either.Right<X, Y>> {

    /* renamed from: ID */
    private static final BitString f2047ID;

    /* renamed from: y */
    private final TlbCodec<Y> f2048y;

    static {
        new Companion(null);
        f2047ID = BitString.Companion.m42of(Arrays.copyOf(new boolean[]{true}, 1));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
        storeTlb(cellBuilder, (Either.Right) ((Either.Right) obj));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RightTlbConstructor(TlbCodec<Y> y) {
        super("right$1 {X:Type} {Y:Type} value:Y = Either X Y;", f2047ID);
        Intrinsics.checkNotNullParameter(y, "y");
        this.f2048y = y;
    }

    public void storeTlb(CellBuilder cellBuilder, Either.Right<X, Y> value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        this.f2048y.storeTlb(cellBuilder, value.getValue());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public Either.Right<X, Y> loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new Either.Right<>(this.f2048y.loadTlb(cellSlice));
    }

    /* compiled from: Either.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
