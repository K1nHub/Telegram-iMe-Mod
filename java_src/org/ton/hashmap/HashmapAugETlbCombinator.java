package org.ton.hashmap;

import kotlin.TuplesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.ton.hashmap.HashmapAugE;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbCombinator;
/* compiled from: HashmapAugE.kt */
/* loaded from: classes6.dex */
final class HashmapAugETlbCombinator<X, Y> extends TlbCombinator<HashmapAugE<?, ?>> {

    /* renamed from: x */
    private final TlbCodec<X> f2108x;

    /* renamed from: y */
    private final TlbCodec<Y> f2109y;

    public /* synthetic */ HashmapAugETlbCombinator(int i, TlbCodec tlbCodec, TlbCodec tlbCodec2, TlbCodec<HashmapAugE.AhmeEmpty<X, Y>> tlbCodec3, TlbCodec<HashmapAugE.AhmeRoot<X, Y>> tlbCodec4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, tlbCodec, tlbCodec2, (i2 & 8) != 0 ? HashmapAugE.AhmeEmpty.Companion.tlbCodec(i, tlbCodec2) : tlbCodec3, (i2 & 16) != 0 ? HashmapAugE.AhmeRoot.Companion.tlbCodec(i, tlbCodec, tlbCodec2) : tlbCodec4);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashmapAugETlbCombinator(int i, TlbCodec<X> x, TlbCodec<Y> y, TlbCodec<HashmapAugE.AhmeEmpty<X, Y>> ahmeEmptyCodec, TlbCodec<HashmapAugE.AhmeRoot<X, Y>> ahmeRootCodec) {
        super(Reflection.getOrCreateKotlinClass(HashmapAugE.class), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(HashmapAugE.AhmeEmpty.class), ahmeEmptyCodec), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(HashmapAugE.AhmeRoot.class), ahmeRootCodec));
        Intrinsics.checkNotNullParameter(x, "x");
        Intrinsics.checkNotNullParameter(y, "y");
        Intrinsics.checkNotNullParameter(ahmeEmptyCodec, "ahmeEmptyCodec");
        Intrinsics.checkNotNullParameter(ahmeRootCodec, "ahmeRootCodec");
        this.f2108x = x;
        this.f2109y = y;
    }
}
