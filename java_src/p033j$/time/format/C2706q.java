package p033j$.time.format;

import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import p033j$.time.AbstractC2674a;
import p033j$.time.chrono.C2684h;
import p033j$.time.chrono.InterfaceC2683g;
import p033j$.time.temporal.AbstractC2751w;
import p033j$.time.temporal.C2745q;
import p033j$.time.temporal.EnumC2729a;
import p033j$.time.temporal.InterfaceC2739k;
import p033j$.time.temporal.InterfaceC2743o;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.q */
/* loaded from: classes2.dex */
public final class C2706q implements InterfaceC2697h {

    /* renamed from: a */
    private final InterfaceC2743o f554a;

    /* renamed from: b */
    private final EnumC2689B f555b;

    /* renamed from: c */
    private final C2692c f556c;

    /* renamed from: d */
    private volatile C2700k f557d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2706q(InterfaceC2743o interfaceC2743o, EnumC2689B enumC2689B, C2692c c2692c) {
        this.f554a = interfaceC2743o;
        this.f555b = enumC2689B;
        this.f556c = c2692c;
    }

    /* renamed from: c */
    private C2700k m887c() {
        if (this.f557d == null) {
            this.f557d = new C2700k(this.f554a, 1, 19, EnumC2688A.NORMAL);
        }
        return this.f557d;
    }

    @Override // p033j$.time.format.InterfaceC2697h
    /* renamed from: a */
    public boolean mo886a(C2711v c2711v, StringBuilder sb) {
        String m836a;
        C2684h c2684h;
        Long m839e = c2711v.m839e(this.f554a);
        if (m839e == null) {
            return false;
        }
        InterfaceC2739k m840d = c2711v.m840d();
        int i = AbstractC2751w.f647a;
        InterfaceC2683g interfaceC2683g = (InterfaceC2683g) m840d.mo741g(C2745q.f641a);
        if (interfaceC2683g != null && interfaceC2683g != (c2684h = C2684h.f501a)) {
            C2692c c2692c = this.f556c;
            InterfaceC2743o interfaceC2743o = this.f554a;
            long longValue = m839e.longValue();
            EnumC2689B enumC2689B = this.f555b;
            c2711v.m841c();
            Objects.requireNonNull(c2692c);
            m836a = (interfaceC2683g == c2684h || !(interfaceC2743o instanceof EnumC2729a)) ? c2692c.f527a.m836a(longValue, enumC2689B) : null;
        } else {
            C2692c c2692c2 = this.f556c;
            long longValue2 = m839e.longValue();
            EnumC2689B enumC2689B2 = this.f555b;
            c2711v.m841c();
            m836a = c2692c2.f527a.m836a(longValue2, enumC2689B2);
        }
        if (m836a == null) {
            return m887c().mo886a(c2711v, sb);
        }
        sb.append(m836a);
        return true;
    }

    @Override // p033j$.time.format.InterfaceC2697h
    /* renamed from: b */
    public int mo885b(C2709t c2709t, CharSequence charSequence, int i) {
        Iterator it;
        int length = charSequence.length();
        if (i < 0 || i > length) {
            throw new IndexOutOfBoundsException();
        }
        Iterator it2 = null;
        EnumC2689B enumC2689B = c2709t.m852k() ? this.f555b : null;
        InterfaceC2683g m856g = c2709t.m856g();
        InterfaceC2683g interfaceC2683g = C2684h.f501a;
        if (m856g == interfaceC2683g) {
            C2692c c2692c = this.f556c;
            c2709t.m855h();
            it = c2692c.f527a.m835b(enumC2689B);
        } else {
            C2692c c2692c2 = this.f556c;
            InterfaceC2743o interfaceC2743o = this.f554a;
            c2709t.m855h();
            Objects.requireNonNull(c2692c2);
            if (m856g == interfaceC2683g || !(interfaceC2743o instanceof EnumC2729a)) {
                it2 = c2692c2.f527a.m835b(enumC2689B);
            }
            it = it2;
        }
        if (it != null) {
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String str = (String) entry.getKey();
                if (c2709t.m845r(str, 0, charSequence, i, str.length())) {
                    return c2709t.m849n(this.f554a, ((Long) entry.getValue()).longValue(), i, str.length() + i);
                }
            }
            if (c2709t.m852k()) {
                return ~i;
            }
        }
        return m887c().mo885b(c2709t, charSequence, i);
    }

    public String toString() {
        StringBuilder m964a;
        Object obj;
        if (this.f555b == EnumC2689B.FULL) {
            m964a = AbstractC2674a.m964a("Text(");
            obj = this.f554a;
        } else {
            m964a = AbstractC2674a.m964a("Text(");
            m964a.append(this.f554a);
            m964a.append(",");
            obj = this.f555b;
        }
        m964a.append(obj);
        m964a.append(")");
        return m964a.toString();
    }
}
