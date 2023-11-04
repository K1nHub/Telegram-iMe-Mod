package org.ton.hashmap;

import kotlin.TuplesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.ton.tlb.TlbNegatedCombinator;
import org.ton.tlb.TlbNegatedConstructor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HmLabel.kt */
/* loaded from: classes6.dex */
public final class HashMapLabelTlbCombinator extends TlbNegatedCombinator<HmLabel> {
    private static final HashMapLabelTlbCombinator[] CACHE;
    public static final Companion Companion = new Companion(null);

    public /* synthetic */ HashMapLabelTlbCombinator(int i, TlbNegatedConstructor<HmlLong> tlbNegatedConstructor, TlbNegatedConstructor<HmlShort> tlbNegatedConstructor2, TlbNegatedConstructor<HmlSame> tlbNegatedConstructor3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? HmlLong.Companion.tlbCodec(i) : tlbNegatedConstructor, (i2 & 4) != 0 ? HmlShort.Companion.tlbCodec() : tlbNegatedConstructor2, (i2 & 8) != 0 ? HmlSame.Companion.tlbCodec(i) : tlbNegatedConstructor3);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashMapLabelTlbCombinator(int i, TlbNegatedConstructor<HmlLong> hmlLong, TlbNegatedConstructor<HmlShort> hmlShort, TlbNegatedConstructor<HmlSame> hmlSame) {
        super(Reflection.getOrCreateKotlinClass(HmLabel.class), TuplesKt.m146to(Reflection.getOrCreateKotlinClass(HmlLong.class), hmlLong), TuplesKt.m146to(Reflection.getOrCreateKotlinClass(HmlShort.class), hmlShort), TuplesKt.m146to(Reflection.getOrCreateKotlinClass(HmlSame.class), hmlSame));
        Intrinsics.checkNotNullParameter(hmlLong, "hmlLong");
        Intrinsics.checkNotNullParameter(hmlShort, "hmlShort");
        Intrinsics.checkNotNullParameter(hmlSame, "hmlSame");
    }

    /* compiled from: HmLabel.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final HashMapLabelTlbCombinator[] getCACHE() {
            return HashMapLabelTlbCombinator.CACHE;
        }
    }

    static {
        HashMapLabelTlbCombinator[] hashMapLabelTlbCombinatorArr = new HashMapLabelTlbCombinator[16];
        for (int i = 0; i < 16; i++) {
            hashMapLabelTlbCombinatorArr[i] = new HashMapLabelTlbCombinator(i, null, null, null, 14, null);
        }
        CACHE = hashMapLabelTlbCombinatorArr;
    }
}
