package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.Either;
import org.ton.tlb.TlbCodec;
/* compiled from: Either.kt */
/* loaded from: classes6.dex */
public final class EitherKt {
    public static final <X, Y> TlbCodec<Either<X, Y>> invoke(Either.Companion companion, TlbCodec<X> x, TlbCodec<Y> y) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(x, "x");
        Intrinsics.checkNotNullParameter(y, "y");
        return companion.tlbCodec(x, y);
    }
}
