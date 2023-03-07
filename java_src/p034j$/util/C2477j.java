package p034j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.j */
/* loaded from: classes2.dex */
public final class C2477j {

    /* renamed from: c */
    private static final C2477j f664c = new C2477j();

    /* renamed from: a */
    private final boolean f665a;

    /* renamed from: b */
    private final int f666b;

    private C2477j() {
        this.f665a = false;
        this.f666b = 0;
    }

    private C2477j(int i) {
        this.f665a = true;
        this.f666b = i;
    }

    /* renamed from: a */
    public static C2477j m546a() {
        return f664c;
    }

    /* renamed from: d */
    public static C2477j m543d(int i) {
        return new C2477j(i);
    }

    /* renamed from: b */
    public int m545b() {
        if (this.f665a) {
            return this.f666b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m544c() {
        return this.f665a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2477j) {
            C2477j c2477j = (C2477j) obj;
            boolean z = this.f665a;
            if (z && c2477j.f665a) {
                if (this.f666b == c2477j.f666b) {
                    return true;
                }
            } else if (z == c2477j.f665a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f665a) {
            return this.f666b;
        }
        return 0;
    }

    public String toString() {
        return this.f665a ? String.format("OptionalInt[%s]", Integer.valueOf(this.f666b)) : "OptionalInt.empty";
    }
}
