package p033j$.time.format;

import java.util.ArrayList;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import p033j$.time.AbstractC2723n;
import p033j$.time.chrono.C2684h;
import p033j$.time.chrono.InterfaceC2683g;
import p033j$.time.temporal.InterfaceC2739k;
import p033j$.time.temporal.InterfaceC2743o;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.t */
/* loaded from: classes2.dex */
public final class C2709t {

    /* renamed from: a */
    private C2690a f566a;

    /* renamed from: b */
    private boolean f567b = true;

    /* renamed from: c */
    private boolean f568c = true;

    /* renamed from: d */
    private final ArrayList f569d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2709t(C2690a c2690a) {
        ArrayList arrayList = new ArrayList();
        this.f569d = arrayList;
        this.f566a = c2690a;
        arrayList.add(new C2714y());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static boolean m861b(char c, char c2) {
        return c == c2 || Character.toUpperCase(c) == Character.toUpperCase(c2) || Character.toLowerCase(c) == Character.toLowerCase(c2);
    }

    /* renamed from: d */
    private C2714y m859d() {
        ArrayList arrayList = this.f569d;
        return (C2714y) arrayList.get(arrayList.size() - 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public boolean m862a(char c, char c2) {
        if (this.f567b) {
            return c == c2;
        }
        return m861b(c, c2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public C2709t m860c() {
        C2709t c2709t = new C2709t(this.f566a);
        c2709t.f567b = this.f567b;
        c2709t.f568c = this.f568c;
        return c2709t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m858e(boolean z) {
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
    public C2713x m857f() {
        return this.f566a.m906c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public InterfaceC2683g m856g() {
        InterfaceC2683g interfaceC2683g = m859d().f582c;
        if (interfaceC2683g == null) {
            InterfaceC2683g m907b = this.f566a.m907b();
            return m907b == null ? C2684h.f501a : m907b;
        }
        return interfaceC2683g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public Locale m855h() {
        return this.f566a.m905d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public Long m854i(InterfaceC2743o interfaceC2743o) {
        return (Long) m859d().f580a.get(interfaceC2743o);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public boolean m853j() {
        return this.f567b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public boolean m852k() {
        return this.f568c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public void m851l(boolean z) {
        this.f567b = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public void m850m(AbstractC2723n abstractC2723n) {
        Objects.requireNonNull(abstractC2723n, "zone");
        m859d().f581b = abstractC2723n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public int m849n(InterfaceC2743o interfaceC2743o, long j, int i, int i2) {
        Objects.requireNonNull(interfaceC2743o, "field");
        Long l = (Long) m859d().f580a.put(interfaceC2743o, Long.valueOf(j));
        return (l == null || l.longValue() == j) ? i2 : ~i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public void m848o() {
        m859d().f583d = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public void m847p(boolean z) {
        this.f568c = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public void m846q() {
        ArrayList arrayList = this.f569d;
        C2714y m859d = m859d();
        Objects.requireNonNull(m859d);
        C2714y c2714y = new C2714y();
        c2714y.f580a.putAll(m859d.f580a);
        c2714y.f581b = m859d.f581b;
        c2714y.f582c = m859d.f582c;
        c2714y.f583d = m859d.f583d;
        arrayList.add(c2714y);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public boolean m845r(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3) {
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
    public InterfaceC2739k m844s(EnumC2715z enumC2715z, Set set) {
        C2714y m859d = m859d();
        InterfaceC2683g interfaceC2683g = m859d().f582c;
        if (interfaceC2683g == null && (interfaceC2683g = this.f566a.m907b()) == null) {
            interfaceC2683g = C2684h.f501a;
        }
        m859d.f582c = interfaceC2683g;
        AbstractC2723n abstractC2723n = m859d.f581b;
        if (abstractC2723n == null) {
            abstractC2723n = this.f566a.m904e();
        }
        m859d.f581b = abstractC2723n;
        m859d.m827j(enumC2715z, set);
        return m859d;
    }

    public String toString() {
        return m859d().toString();
    }
}
