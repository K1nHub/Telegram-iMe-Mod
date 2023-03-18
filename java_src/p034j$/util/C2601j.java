package p034j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.j */
/* loaded from: classes2.dex */
public final class C2601j {

    /* renamed from: c */
    private static final C2601j f669c = new C2601j();

    /* renamed from: a */
    private final boolean f670a;

    /* renamed from: b */
    private final int f671b;

    private C2601j() {
        this.f670a = false;
        this.f671b = 0;
    }

    private C2601j(int i) {
        this.f670a = true;
        this.f671b = i;
    }

    /* renamed from: a */
    public static C2601j m546a() {
        return f669c;
    }

    /* renamed from: d */
    public static C2601j m543d(int i) {
        return new C2601j(i);
    }

    /* renamed from: b */
    public int m545b() {
        if (this.f670a) {
            return this.f671b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m544c() {
        return this.f670a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2601j) {
            C2601j c2601j = (C2601j) obj;
            boolean z = this.f670a;
            if (z && c2601j.f670a) {
                if (this.f671b == c2601j.f671b) {
                    return true;
                }
            } else if (z == c2601j.f670a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f670a) {
            return this.f671b;
        }
        return 0;
    }

    public String toString() {
        return this.f670a ? String.format("OptionalInt[%s]", Integer.valueOf(this.f671b)) : "OptionalInt.empty";
    }
}
