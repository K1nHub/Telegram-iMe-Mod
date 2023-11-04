package org.ton.tlb;

import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
/* compiled from: TlbConstructor.kt */
/* loaded from: classes6.dex */
public final class TlbConstructorKt {
    public static final <T> TlbCombinator<T> asTlbCombinator(TlbConstructor<T> tlbConstructor, final KClass<T> clazz) {
        Intrinsics.checkNotNullParameter(tlbConstructor, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        final Pair[] pairArr = {TuplesKt.m146to(clazz, tlbConstructor)};
        return new TlbCombinator<T>(clazz, pairArr) { // from class: org.ton.tlb.TlbConstructorKt$asTlbCombinator$1
        };
    }
}
