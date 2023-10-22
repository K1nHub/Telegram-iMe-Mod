package org.ton.block;

import kotlin.TuplesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbCombinator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Maybe.kt */
/* loaded from: classes6.dex */
public final class MaybeTlbCombinator extends TlbCombinator<Maybe<?>> {
    public /* synthetic */ MaybeTlbCombinator(TlbCodec tlbCodec, JustConstructor justConstructor, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(tlbCodec, (i & 2) != 0 ? new JustConstructor(tlbCodec) : justConstructor);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MaybeTlbCombinator(TlbCodec<?> typeCodec, JustConstructor<?> justConstructor) {
        super(Reflection.getOrCreateKotlinClass(Maybe.class), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(Nothing.class), NothingConstructor.INSTANCE), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(Just.class), justConstructor));
        Intrinsics.checkNotNullParameter(typeCodec, "typeCodec");
        Intrinsics.checkNotNullParameter(justConstructor, "justConstructor");
    }
}
