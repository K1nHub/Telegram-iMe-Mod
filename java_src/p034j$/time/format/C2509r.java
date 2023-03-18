package p034j$.time.format;

import java.util.Objects;
import p034j$.util.concurrent.ConcurrentHashMap;
/* renamed from: j$.time.format.r */
/* loaded from: classes2.dex */
public final class C2509r {

    /* renamed from: a */
    public static final C2509r f515a = new C2509r('0', '+', '-', '.');

    static {
        new ConcurrentHashMap(16, 0.75f, 2);
    }

    private C2509r(char c, char c2, char c3, char c4) {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2509r) {
            Objects.requireNonNull((C2509r) obj);
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
