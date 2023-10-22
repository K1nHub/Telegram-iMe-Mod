package org.ton.block;

import kotlin.TuplesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.ton.block.Either;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbCombinator;
/* compiled from: Either.kt */
/* loaded from: classes6.dex */
final class EitherTlbCombinator<X, Y> extends TlbCombinator<Either<?, ?>> {
    public /* synthetic */ EitherTlbCombinator(TlbCodec tlbCodec, TlbCodec tlbCodec2, LeftTlbConstructor leftTlbConstructor, RightTlbConstructor rightTlbConstructor, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(tlbCodec, tlbCodec2, (i & 4) != 0 ? new LeftTlbConstructor(tlbCodec) : leftTlbConstructor, (i & 8) != 0 ? new RightTlbConstructor(tlbCodec2) : rightTlbConstructor);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EitherTlbCombinator(TlbCodec<X> x, TlbCodec<Y> y, LeftTlbConstructor<X, Y> left, RightTlbConstructor<X, Y> right) {
        super(Reflection.getOrCreateKotlinClass(Either.class), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(Either.Left.class), left), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(Either.Right.class), right));
        Intrinsics.checkNotNullParameter(x, "x");
        Intrinsics.checkNotNullParameter(y, "y");
        Intrinsics.checkNotNullParameter(left, "left");
        Intrinsics.checkNotNullParameter(right, "right");
    }
}
