package p033j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.j */
/* loaded from: classes2.dex */
public final class C2843j {

    /* renamed from: c */
    private static final C2843j f755c = new C2843j();

    /* renamed from: a */
    private final boolean f756a;

    /* renamed from: b */
    private final int f757b;

    private C2843j() {
        this.f756a = false;
        this.f757b = 0;
    }

    private C2843j(int i) {
        this.f756a = true;
        this.f757b = i;
    }

    /* renamed from: a */
    public static C2843j m531a() {
        return f755c;
    }

    /* renamed from: d */
    public static C2843j m528d(int i) {
        return new C2843j(i);
    }

    /* renamed from: b */
    public int m530b() {
        if (this.f756a) {
            return this.f757b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m529c() {
        return this.f756a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2843j) {
            C2843j c2843j = (C2843j) obj;
            boolean z = this.f756a;
            if (z && c2843j.f756a) {
                if (this.f757b == c2843j.f757b) {
                    return true;
                }
            } else if (z == c2843j.f756a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f756a) {
            return this.f757b;
        }
        return 0;
    }

    public String toString() {
        return this.f756a ? String.format("OptionalInt[%s]", Integer.valueOf(this.f757b)) : "OptionalInt.empty";
    }
}
