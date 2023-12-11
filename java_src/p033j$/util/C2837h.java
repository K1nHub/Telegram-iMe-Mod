package p033j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.h */
/* loaded from: classes2.dex */
public final class C2837h {

    /* renamed from: c */
    private static final C2837h f802c = new C2837h();

    /* renamed from: a */
    private final boolean f803a;

    /* renamed from: b */
    private final int f804b;

    private C2837h() {
        this.f803a = false;
        this.f804b = 0;
    }

    private C2837h(int i) {
        this.f803a = true;
        this.f804b = i;
    }

    /* renamed from: a */
    public static C2837h m613a() {
        return f802c;
    }

    /* renamed from: d */
    public static C2837h m610d(int i) {
        return new C2837h(i);
    }

    /* renamed from: b */
    public int m612b() {
        if (this.f803a) {
            return this.f804b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m611c() {
        return this.f803a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2837h) {
            C2837h c2837h = (C2837h) obj;
            boolean z = this.f803a;
            if (z && c2837h.f803a) {
                if (this.f804b == c2837h.f804b) {
                    return true;
                }
            } else if (z == c2837h.f803a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f803a) {
            return this.f804b;
        }
        return 0;
    }

    public String toString() {
        return this.f803a ? String.format("OptionalInt[%s]", Integer.valueOf(this.f804b)) : "OptionalInt.empty";
    }
}
