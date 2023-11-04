package p033j$.time.format;

import java.util.ArrayList;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import p033j$.time.AbstractC2728n;
import p033j$.time.chrono.C2689h;
import p033j$.time.chrono.InterfaceC2688g;
import p033j$.time.temporal.InterfaceC2744k;
import p033j$.time.temporal.InterfaceC2748o;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.t */
/* loaded from: classes2.dex */
public final class C2714t {

    /* renamed from: a */
    private C2695a f566a;

    /* renamed from: b */
    private boolean f567b = true;

    /* renamed from: c */
    private boolean f568c = true;

    /* renamed from: d */
    private final ArrayList f569d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2714t(C2695a c2695a) {
        ArrayList arrayList = new ArrayList();
        this.f569d = arrayList;
        this.f566a = c2695a;
        arrayList.add(new C2719y());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static boolean m858b(char c, char c2) {
        return c == c2 || Character.toUpperCase(c) == Character.toUpperCase(c2) || Character.toLowerCase(c) == Character.toLowerCase(c2);
    }

    /* renamed from: d */
    private C2719y m856d() {
        ArrayList arrayList = this.f569d;
        return (C2719y) arrayList.get(arrayList.size() - 1);
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
    public C2714t m857c() {
        C2714t c2714t = new C2714t(this.f566a);
        c2714t.f567b = this.f567b;
        c2714t.f568c = this.f568c;
        return c2714t;
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
    public C2718x m854f() {
        return this.f566a.m903c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public InterfaceC2688g m853g() {
        InterfaceC2688g interfaceC2688g = m856d().f582c;
        if (interfaceC2688g == null) {
            InterfaceC2688g m904b = this.f566a.m904b();
            return m904b == null ? C2689h.f501a : m904b;
        }
        return interfaceC2688g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public Locale m852h() {
        return this.f566a.m902d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public Long m851i(InterfaceC2748o interfaceC2748o) {
        return (Long) m856d().f580a.get(interfaceC2748o);
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
    public void m847m(AbstractC2728n abstractC2728n) {
        Objects.requireNonNull(abstractC2728n, "zone");
        m856d().f581b = abstractC2728n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public int m846n(InterfaceC2748o interfaceC2748o, long j, int i, int i2) {
        Objects.requireNonNull(interfaceC2748o, "field");
        Long l = (Long) m856d().f580a.put(interfaceC2748o, Long.valueOf(j));
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
        C2719y m856d = m856d();
        Objects.requireNonNull(m856d);
        C2719y c2719y = new C2719y();
        c2719y.f580a.putAll(m856d.f580a);
        c2719y.f581b = m856d.f581b;
        c2719y.f582c = m856d.f582c;
        c2719y.f583d = m856d.f583d;
        arrayList.add(c2719y);
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
    public InterfaceC2744k m841s(EnumC2720z enumC2720z, Set set) {
        C2719y m856d = m856d();
        InterfaceC2688g interfaceC2688g = m856d().f582c;
        if (interfaceC2688g == null && (interfaceC2688g = this.f566a.m904b()) == null) {
            interfaceC2688g = C2689h.f501a;
        }
        m856d.f582c = interfaceC2688g;
        AbstractC2728n abstractC2728n = m856d.f581b;
        if (abstractC2728n == null) {
            abstractC2728n = this.f566a.m901e();
        }
        m856d.f581b = abstractC2728n;
        m856d.m824j(enumC2720z, set);
        return m856d;
    }

    public String toString() {
        return m856d().toString();
    }
}
