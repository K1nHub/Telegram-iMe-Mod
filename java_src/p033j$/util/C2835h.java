package p033j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.h */
/* loaded from: classes2.dex */
public final class C2835h {

    /* renamed from: c */
    private static final C2835h f802c = new C2835h();

    /* renamed from: a */
    private final boolean f803a;

    /* renamed from: b */
    private final int f804b;

    private C2835h() {
        this.f803a = false;
        this.f804b = 0;
    }

    private C2835h(int i) {
        this.f803a = true;
        this.f804b = i;
    }

    /* renamed from: a */
    public static C2835h m616a() {
        return f802c;
    }

    /* renamed from: d */
    public static C2835h m613d(int i) {
        return new C2835h(i);
    }

    /* renamed from: b */
    public int m615b() {
        if (this.f803a) {
            return this.f804b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m614c() {
        return this.f803a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2835h) {
            C2835h c2835h = (C2835h) obj;
            boolean z = this.f803a;
            if (z && c2835h.f803a) {
                if (this.f804b == c2835h.f804b) {
                    return true;
                }
            } else if (z == c2835h.f803a) {
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
