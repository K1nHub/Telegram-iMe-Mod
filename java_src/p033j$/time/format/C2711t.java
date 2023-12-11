package p033j$.time.format;

import java.util.ArrayList;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import p033j$.time.AbstractC2725n;
import p033j$.time.chrono.C2686h;
import p033j$.time.chrono.InterfaceC2685g;
import p033j$.time.temporal.InterfaceC2741k;
import p033j$.time.temporal.InterfaceC2745o;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.t */
/* loaded from: classes2.dex */
public final class C2711t {

    /* renamed from: a */
    private C2692a f566a;

    /* renamed from: b */
    private boolean f567b = true;

    /* renamed from: c */
    private boolean f568c = true;

    /* renamed from: d */
    private final ArrayList f569d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2711t(C2692a c2692a) {
        ArrayList arrayList = new ArrayList();
        this.f569d = arrayList;
        this.f566a = c2692a;
        arrayList.add(new C2716y());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static boolean m858b(char c, char c2) {
        return c == c2 || Character.toUpperCase(c) == Character.toUpperCase(c2) || Character.toLowerCase(c) == Character.toLowerCase(c2);
    }

    /* renamed from: d */
    private C2716y m856d() {
        ArrayList arrayList = this.f569d;
        return (C2716y) arrayList.get(arrayList.size() - 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public boolean m859a(char c, char c2) {
        if (this.f567b) {
            return c == c2;
        }
        return m858b(c, c2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public C2711t m857c() {
        C2711t c2711t = new C2711t(this.f566a);
        c2711t.f567b = this.f567b;
        c2711t.f568c = this.f568c;
        return c2711t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m855e(boolean z) {
        ArrayList arrayList;
        int size;
        if (z) {
            arrayList = this.f569d;
            size = arrayList.size() - 2;
        } else {
            arrayList = this.f569d;
            size = arrayList.size() - 1;
        }
        arrayList.remove(size);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public C2715x m854f() {
        return this.f566a.m903c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public InterfaceC2685g m853g() {
        InterfaceC2685g interfaceC2685g = m856d().f582c;
        if (interfaceC2685g == null) {
            InterfaceC2685g m904b = this.f566a.m904b();
            return m904b == null ? C2686h.f501a : m904b;
        }
        return interfaceC2685g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public Locale m852h() {
        return this.f566a.m902d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public Long m851i(InterfaceC2745o interfaceC2745o) {
        return (Long) m856d().f580a.get(interfaceC2745o);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public boolean m850j() {
        return this.f567b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public boolean m849k() {
        return this.f568c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public void m848l(boolean z) {
        this.f567b = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public void m847m(AbstractC2725n abstractC2725n) {
        Objects.requireNonNull(abstractC2725n, "zone");
        m856d().f581b = abstractC2725n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public int m846n(InterfaceC2745o interfaceC2745o, long j, int i, int i2) {
        Objects.requireNonNull(interfaceC2745o, "field");
        Long l = (Long) m856d().f580a.put(interfaceC2745o, Long.valueOf(j));
        return (l == null || l.longValue() == j) ? i2 : ~i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public void m845o() {
        m856d().f583d = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public void m844p(boolean z) {
        this.f568c = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public void m843q() {
        ArrayList arrayList = this.f569d;
        C2716y m856d = m856d();
        Objects.requireNonNull(m856d);
        C2716y c2716y = new C2716y();
        c2716y.f580a.putAll(m856d.f580a);
        c2716y.f581b = m856d.f581b;
        c2716y.f582c = m856d.f582c;
        c2716y.f583d = m856d.f583d;
        arrayList.add(c2716y);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public boolean m842r(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3) {
        if (i + i3 > charSequence.length() || i2 + i3 > charSequence2.length()) {
            return false;
        }
        if (this.f567b) {
            for (int i4 = 0; i4 < i3; i4++) {
                if (charSequence.charAt(i + i4) != charSequence2.charAt(i2 + i4)) {
                    return false;
                }
            }
            return true;
        }
        for (int i5 = 0; i5 < i3; i5++) {
            char charAt = charSequence.charAt(i + i5);
            char charAt2 = charSequence2.charAt(i2 + i5);
            if (charAt != charAt2 && Character.toUpperCase(charAt) != Character.toUpperCase(charAt2) && Character.toLowerCase(charAt) != Character.toLowerCase(charAt2)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public InterfaceC2741k m841s(EnumC2717z enumC2717z, Set set) {
        C2716y m856d = m856d();
        InterfaceC2685g interfaceC2685g = m856d().f582c;
        if (interfaceC2685g == null && (interfaceC2685g = this.f566a.m904b()) == null) {
            interfaceC2685g = C2686h.f501a;
        }
        m856d.f582c = interfaceC2685g;
        AbstractC2725n abstractC2725n = m856d.f581b;
        if (abstractC2725n == null) {
            abstractC2725n = this.f566a.m901e();
        }
        m856d.f581b = abstractC2725n;
        m856d.m824j(enumC2717z, set);
        return m856d;
    }

    public String toString() {
        return m856d().toString();
    }
}
