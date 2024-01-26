package kotlin.ranges;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: PrimitiveRanges.kt */
/* loaded from: classes4.dex */
public final class CharRange extends CharProgression {
    public CharRange(char c, char c2) {
        super(c, c2, 1);
    }

    public boolean contains(char c) {
        return Intrinsics.compare((int) getFirst(), (int) c) <= 0 && Intrinsics.compare((int) c, (int) getLast()) <= 0;
    }

    public boolean isEmpty() {
        return Intrinsics.compare((int) getFirst(), (int) getLast()) > 0;
    }

    public boolean equals(Object obj) {
        if (obj instanceof CharRange) {
            if (!isEmpty() || !((CharRange) obj).isEmpty()) {
                CharRange charRange = (CharRange) obj;
                if (getFirst() != charRange.getFirst() || getLast() != charRange.getLast()) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (getFirst() * 31) + getLast();
    }

    public String toString() {
        return getFirst() + ".." + getLast();
    }

    /* compiled from: PrimitiveRanges.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        new Companion(null);
        new CharRange((char) 1, (char) 0);
    }
}
