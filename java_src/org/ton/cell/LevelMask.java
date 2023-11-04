package org.ton.cell;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: LevelMask.kt */
/* loaded from: classes6.dex */
public final class LevelMask {
    public static final Companion Companion = new Companion(null);
    private static final int ZERO = m5228constructorimpl(0);
    private final int mask;

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ LevelMask m5227boximpl(int i) {
        return new LevelMask(i);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m5228constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m5230equalsimpl(int i, Object obj) {
        return (obj instanceof LevelMask) && i == ((LevelMask) obj).m5239unboximpl();
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m5231equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m5234hashCodeimpl(int i) {
        return i;
    }

    /* renamed from: isEmpty-impl  reason: not valid java name */
    public static final boolean m5235isEmptyimpl(int i) {
        return i == 0;
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m5237toStringimpl(int i) {
        return "LevelMask(mask=" + i + ')';
    }

    public boolean equals(Object obj) {
        return m5230equalsimpl(this.mask, obj);
    }

    public int hashCode() {
        return m5234hashCodeimpl(this.mask);
    }

    public String toString() {
        return m5237toStringimpl(this.mask);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m5239unboximpl() {
        return this.mask;
    }

    private /* synthetic */ LevelMask(int i) {
        this.mask = i;
    }

    /* renamed from: constructor-impl$default  reason: not valid java name */
    public static /* synthetic */ int m5229constructorimpl$default(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return m5228constructorimpl(i);
    }

    /* renamed from: getLevel-impl  reason: not valid java name */
    public static final int m5233getLevelimpl(int i) {
        return 32 - Integer.numberOfLeadingZeros(i);
    }

    /* renamed from: getHashIndex-impl  reason: not valid java name */
    public static final int m5232getHashIndeximpl(int i) {
        return Integer.bitCount(i);
    }

    /* renamed from: apply-spGXSBY  reason: not valid java name */
    public static final int m5226applyspGXSBY(int i, int i2) {
        if (!(i2 < 32)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        return m5228constructorimpl(i & ((1 << i2) - 1));
    }

    /* renamed from: or-Cd1l96I  reason: not valid java name */
    public static final int m5236orCd1l96I(int i, int i2) {
        return m5228constructorimpl(i | i2);
    }

    /* renamed from: virtualize-spGXSBY  reason: not valid java name */
    public static final int m5238virtualizespGXSBY(int i, int i2) {
        return m5228constructorimpl(i >>> i2);
    }

    /* compiled from: LevelMask.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: level-spGXSBY  reason: not valid java name */
        public final int m5240levelspGXSBY(int i) {
            if (i < 32) {
                if (i == 0) {
                    return LevelMask.ZERO;
                }
                return LevelMask.m5228constructorimpl(1 << (i - 1));
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }
}
