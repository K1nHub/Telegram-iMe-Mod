package org.ton.tlb.constructor;

import kotlin.UInt;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;
import org.ton.tlb.TlbConstructor;
import org.ton.tlb.constructor.UIntTlbConstructor;
/* compiled from: UIntTlbConstructor.kt */
/* loaded from: classes6.dex */
public final class UIntTlbConstructorKt {
    public static final TlbConstructor<UInt> tlbConstructor(UInt.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return UIntTlbConstructor.Companion.int$default(UIntTlbConstructor.Companion, 0, 1, null);
    }

    public static final TlbConstructor<ULong> tlbConstructor(ULong.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return UIntTlbConstructor.Companion.long$default(UIntTlbConstructor.Companion, 0, 1, null);
    }
}
