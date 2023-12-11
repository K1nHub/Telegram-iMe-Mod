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
public final class LeftTlbConstructor<X, Y> extends org.ton.tlb.TlbConstructor<Either.Left<X, Y>> {

    /* renamed from: ID */
    private static final BitString f2043ID;

    /* renamed from: x */
    private final TlbCodec<X> f2044x;

    static {
        new Companion(null);
        f2043ID = BitString.Companion.m42of(Arrays.copyOf(new boolean[]{false}, 1));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
        storeTlb(cellBuilder, (Either.Left) ((Either.Left) obj));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LeftTlbConstructor(TlbCodec<X> x) {
        super("left$0 {X:Type} {Y:Type} value:X = Either X Y;", f2043ID);
        Intrinsics.checkNotNullParameter(x, "x");
        this.f2044x = x;
    }

    public void storeTlb(CellBuilder cellBuilder, Either.Left<X, Y> value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        this.f2044x.storeTlb(cellBuilder, value.getValue());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public Either.Left<X, Y> loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new Either.Left<>(this.f2044x.loadTlb(cellSlice));
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
