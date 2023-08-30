package p033j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.j */
/* loaded from: classes2.dex */
public final class C2982j {

    /* renamed from: c */
    private static final C2982j f768c = new C2982j();

    /* renamed from: a */
    private final boolean f769a;

    /* renamed from: b */
    private final int f770b;

    private C2982j() {
        this.f769a = false;
        this.f770b = 0;
    }

    private C2982j(int i) {
        this.f769a = true;
        this.f770b = i;
    }

    /* renamed from: a */
    public static C2982j m549a() {
        return f768c;
    }

    /* renamed from: d */
    public static C2982j m546d(int i) {
        return new C2982j(i);
    }

    /* renamed from: b */
    public int m548b() {
        if (this.f769a) {
            return this.f770b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m547c() {
        return this.f769a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2982j) {
            C2982j c2982j = (C2982j) obj;
            boolean z = this.f769a;
            if (z && c2982j.f769a) {
                if (this.f770b == c2982j.f770b) {
                    return true;
                }
            } else if (z == c2982j.f769a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f769a) {
            return this.f770b;
        }
        return 0;
    }

    public String toString() {
        return this.f769a ? String.format("OptionalInt[%s]", Integer.valueOf(this.f770b)) : "OptionalInt.empty";
    }
}
