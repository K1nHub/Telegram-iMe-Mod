package p034j$.time.format;

import java.util.Objects;
import p034j$.util.concurrent.ConcurrentHashMap;
/* renamed from: j$.time.format.r */
/* loaded from: classes2.dex */
public final class C2385r {

    /* renamed from: a */
    public static final C2385r f510a = new C2385r('0', '+', '-', '.');

    static {
        new ConcurrentHashMap(16, 0.75f, 2);
    }

    private C2385r(char c, char c2, char c3, char c4) {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2385r) {
            Objects.requireNonNull((C2385r) obj);
            return true;
        }
        return false;
    }

    public int hashCode() {
        return 182;
    }

    public String toString() {
        return "DecimalStyle[0+-.]";
    }
}
