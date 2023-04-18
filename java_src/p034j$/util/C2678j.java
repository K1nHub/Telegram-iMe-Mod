package p034j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.j */
/* loaded from: classes2.dex */
public final class C2678j {

    /* renamed from: c */
    private static final C2678j f670c = new C2678j();

    /* renamed from: a */
    private final boolean f671a;

    /* renamed from: b */
    private final int f672b;

    private C2678j() {
        this.f671a = false;
        this.f672b = 0;
    }

    private C2678j(int i) {
        this.f671a = true;
        this.f672b = i;
    }

    /* renamed from: a */
    public static C2678j m526a() {
        return f670c;
    }

    /* renamed from: d */
    public static C2678j m523d(int i) {
        return new C2678j(i);
    }

    /* renamed from: b */
    public int m525b() {
        if (this.f671a) {
            return this.f672b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m524c() {
        return this.f671a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2678j) {
            C2678j c2678j = (C2678j) obj;
            boolean z = this.f671a;
            if (z && c2678j.f671a) {
                if (this.f672b == c2678j.f672b) {
                    return true;
                }
            } else if (z == c2678j.f671a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f671a) {
            return this.f672b;
        }
        return 0;
    }

    public String toString() {
        return this.f671a ? String.format("OptionalInt[%s]", Integer.valueOf(this.f672b)) : "OptionalInt.empty";
    }
}
