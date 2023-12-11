package p033j$.time.format;

import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import p033j$.time.AbstractC2676a;
import p033j$.time.chrono.C2686h;
import p033j$.time.chrono.InterfaceC2685g;
import p033j$.time.temporal.AbstractC2753w;
import p033j$.time.temporal.C2747q;
import p033j$.time.temporal.EnumC2731a;
import p033j$.time.temporal.InterfaceC2741k;
import p033j$.time.temporal.InterfaceC2745o;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.q */
/* loaded from: classes2.dex */
public final class C2708q implements InterfaceC2699h {

    /* renamed from: a */
    private final InterfaceC2745o f554a;

    /* renamed from: b */
    private final EnumC2691B f555b;

    /* renamed from: c */
    private final C2694c f556c;

    /* renamed from: d */
    private volatile C2702k f557d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2708q(InterfaceC2745o interfaceC2745o, EnumC2691B enumC2691B, C2694c c2694c) {
        this.f554a = interfaceC2745o;
        this.f555b = enumC2691B;
        this.f556c = c2694c;
    }

    /* renamed from: c */
    private C2702k m884c() {
        if (this.f557d == null) {
            this.f557d = new C2702k(this.f554a, 1, 19, EnumC2690A.NORMAL);
        }
        return this.f557d;
    }

    @Override // p033j$.time.format.InterfaceC2699h
    /* renamed from: a */
    public boolean mo883a(C2713v c2713v, StringBuilder sb) {
        String m833a;
        C2686h c2686h;
        Long m836e = c2713v.m836e(this.f554a);
        if (m836e == null) {
            return false;
        }
        InterfaceC2741k m837d = c2713v.m837d();
        int i = AbstractC2753w.f647a;
        InterfaceC2685g interfaceC2685g = (InterfaceC2685g) m837d.mo738g(C2747q.f641a);
        if (interfaceC2685g != null && interfaceC2685g != (c2686h = C2686h.f501a)) {
            C2694c c2694c = this.f556c;
            InterfaceC2745o interfaceC2745o = this.f554a;
            long longValue = m836e.longValue();
            EnumC2691B enumC2691B = this.f555b;
            c2713v.m838c();
            Objects.requireNonNull(c2694c);
            m833a = (interfaceC2685g == c2686h || !(interfaceC2745o instanceof EnumC2731a)) ? c2694c.f527a.m833a(longValue, enumC2691B) : null;
        } else {
            C2694c c2694c2 = this.f556c;
            long longValue2 = m836e.longValue();
            EnumC2691B enumC2691B2 = this.f555b;
            c2713v.m838c();
            m833a = c2694c2.f527a.m833a(longValue2, enumC2691B2);
        }
        if (m833a == null) {
            return m884c().mo883a(c2713v, sb);
        }
        sb.append(m833a);
        return true;
    }

    @Override // p033j$.time.format.InterfaceC2699h
    /* renamed from: b */
    public int mo882b(C2711t c2711t, CharSequence charSequence, int i) {
        Iterator it;
        int length = charSequence.length();
        if (i < 0 || i > length) {
            throw new IndexOutOfBoundsException();
        }
        Iterator it2 = null;
        EnumC2691B enumC2691B = c2711t.m849k() ? this.f555b : null;
        InterfaceC2685g m853g = c2711t.m853g();
        InterfaceC2685g interfaceC2685g = C2686h.f501a;
        if (m853g == interfaceC2685g) {
            C2694c c2694c = this.f556c;
            c2711t.m852h();
            it = c2694c.f527a.m832b(enumC2691B);
        } else {
            C2694c c2694c2 = this.f556c;
            InterfaceC2745o interfaceC2745o = this.f554a;
            c2711t.m852h();
            Objects.requireNonNull(c2694c2);
            if (m853g == interfaceC2685g || !(interfaceC2745o instanceof EnumC2731a)) {
                it2 = c2694c2.f527a.m832b(enumC2691B);
            }
            it = it2;
        }
        if (it != null) {
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String str = (String) entry.getKey();
                if (c2711t.m842r(str, 0, charSequence, i, str.length())) {
                    return c2711t.m846n(this.f554a, ((Long) entry.getValue()).longValue(), i, str.length() + i);
                }
            }
            if (c2711t.m849k()) {
                return ~i;
            }
        }
        return m884c().mo882b(c2711t, charSequence, i);
    }

    public String toString() {
        StringBuilder m961a;
        Object obj;
        if (this.f555b == EnumC2691B.FULL) {
            m961a = AbstractC2676a.m961a("Text(");
            obj = this.f554a;
        } else {
            m961a = AbstractC2676a.m961a("Text(");
            m961a.append(this.f554a);
            m961a.append(",");
            obj = this.f555b;
        }
        m961a.append(obj);
        m961a.append(")");
        return m961a.toString();
    }
}
