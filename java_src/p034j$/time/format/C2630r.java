package p034j$.time.format;

import java.util.Objects;
import p034j$.util.concurrent.ConcurrentHashMap;
/* renamed from: j$.time.format.r */
/* loaded from: classes2.dex */
public final class C2630r {

    /* renamed from: a */
    public static final C2630r f519a = new C2630r('0', '+', '-', '.');

    static {
        new ConcurrentHashMap(16, 0.75f, 2);
    }

    private C2630r(char c, char c2, char c3, char c4) {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2630r) {
            Objects.requireNonNull((C2630r) obj);
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