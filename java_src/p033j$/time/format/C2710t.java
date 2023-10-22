package p033j$.time.format;

import java.util.ArrayList;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import p033j$.time.AbstractC2724n;
import p033j$.time.chrono.C2685h;
import p033j$.time.chrono.InterfaceC2684g;
import p033j$.time.temporal.InterfaceC2740k;
import p033j$.time.temporal.InterfaceC2744o;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.t */
/* loaded from: classes2.dex */
public final class C2710t {

    /* renamed from: a */
    private C2691a f566a;

    /* renamed from: b */
    private boolean f567b = true;

    /* renamed from: c */
    private boolean f568c = true;

    /* renamed from: d */
    private final ArrayList f569d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2710t(C2691a c2691a) {
        ArrayList arrayList = new ArrayList();
        this.f569d = arrayList;
        this.f566a = c2691a;
        arrayList.add(new C2715y());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static boolean m857b(char c, char c2) {
        return c == c2 || Character.toUpperCase(c) == Character.toUpperCase(c2) || Character.toLowerCase(c) == Character.toLowerCase(c2);
    }

    /* renamed from: d */
    private C2715y m855d() {
        ArrayList arrayList = this.f569d;
        return (C2715y) arrayList.get(arrayList.size() - 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public boolean m858a(char c, char c2) {
        if (this.f567b) {
            return c == c2;
        }
        return m857b(c, c2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public C2710t m856c() {
        C2710t c2710t = new C2710t(this.f566a);
        c2710t.f567b = this.f567b;
        c2710t.f568c = this.f568c;
        return c2710t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m854e(boolean z) {
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
    public C2714x m853f() {
        return this.f566a.m902c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public InterfaceC2684g m852g() {
        InterfaceC2684g interfaceC2684g = m855d().f582c;
        if (interfaceC2684g == null) {
            InterfaceC2684g m903b = this.f566a.m903b();
            return m903b == null ? C2685h.f501a : m903b;
        }
        return interfaceC2684g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public Locale m851h() {
        return this.f566a.m901d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public Long m850i(InterfaceC2744o interfaceC2744o) {
        return (Long) m855d().f580a.get(interfaceC2744o);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public boolean m849j() {
        return this.f567b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public boolean m848k() {
        return this.f568c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public void m847l(boolean z) {
        this.f567b = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public void m846m(AbstractC2724n abstractC2724n) {
        Objects.requireNonNull(abstractC2724n, "zone");
        m855d().f581b = abstractC2724n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public int m845n(InterfaceC2744o interfaceC2744o, long j, int i, int i2) {
        Objects.requireNonNull(interfaceC2744o, "field");
        Long l = (Long) m855d().f580a.put(interfaceC2744o, Long.valueOf(j));
        return (l == null || l.longValue() == j) ? i2 : ~i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public void m844o() {
        m855d().f583d = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public void m843p(boolean z) {
        this.f568c = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public void m842q() {
        ArrayList arrayList = this.f569d;
        C2715y m855d = m855d();
        Objects.requireNonNull(m855d);
        C2715y c2715y = new C2715y();
        c2715y.f580a.putAll(m855d.f580a);
        c2715y.f581b = m855d.f581b;
        c2715y.f582c = m855d.f582c;
        c2715y.f583d = m855d.f583d;
        arrayList.add(c2715y);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public boolean m841r(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3) {
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
    public InterfaceC2740k m840s(EnumC2716z enumC2716z, Set set) {
        C2715y m855d = m855d();
        InterfaceC2684g interfaceC2684g = m855d().f582c;
        if (interfaceC2684g == null && (interfaceC2684g = this.f566a.m903b()) == null) {
            interfaceC2684g = C2685h.f501a;
        }
        m855d.f582c = interfaceC2684g;
        AbstractC2724n abstractC2724n = m855d.f581b;
        if (abstractC2724n == null) {
            abstractC2724n = this.f566a.m900e();
        }
        m855d.f581b = abstractC2724n;
        m855d.m823j(enumC2716z, set);
        return m855d;
    }

    public String toString() {
        return m855d().toString();
    }
}
