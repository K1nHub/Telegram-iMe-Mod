package p033j$.time.format;

import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import p033j$.time.AbstractC2679a;
import p033j$.time.chrono.C2689h;
import p033j$.time.chrono.InterfaceC2688g;
import p033j$.time.temporal.AbstractC2756w;
import p033j$.time.temporal.C2750q;
import p033j$.time.temporal.EnumC2734a;
import p033j$.time.temporal.InterfaceC2744k;
import p033j$.time.temporal.InterfaceC2748o;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.q */
/* loaded from: classes2.dex */
public final class C2711q implements InterfaceC2702h {

    /* renamed from: a */
    private final InterfaceC2748o f554a;

    /* renamed from: b */
    private final EnumC2694B f555b;

    /* renamed from: c */
    private final C2697c f556c;

    /* renamed from: d */
    private volatile C2705k f557d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2711q(InterfaceC2748o interfaceC2748o, EnumC2694B enumC2694B, C2697c c2697c) {
        this.f554a = interfaceC2748o;
        this.f555b = enumC2694B;
        this.f556c = c2697c;
    }

    /* renamed from: c */
    private C2705k m884c() {
        if (this.f557d == null) {
            this.f557d = new C2705k(this.f554a, 1, 19, EnumC2693A.NORMAL);
        }
        return this.f557d;
    }

    @Override // p033j$.time.format.InterfaceC2702h
    /* renamed from: a */
    public boolean mo883a(C2716v c2716v, StringBuilder sb) {
        String m833a;
        C2689h c2689h;
        Long m836e = c2716v.m836e(this.f554a);
        if (m836e == null) {
            return false;
        }
        InterfaceC2744k m837d = c2716v.m837d();
        int i = AbstractC2756w.f647a;
        InterfaceC2688g interfaceC2688g = (InterfaceC2688g) m837d.mo738g(C2750q.f641a);
        if (interfaceC2688g != null && interfaceC2688g != (c2689h = C2689h.f501a)) {
            C2697c c2697c = this.f556c;
            InterfaceC2748o interfaceC2748o = this.f554a;
            long longValue = m836e.longValue();
            EnumC2694B enumC2694B = this.f555b;
            c2716v.m838c();
            Objects.requireNonNull(c2697c);
            m833a = (interfaceC2688g == c2689h || !(interfaceC2748o instanceof EnumC2734a)) ? c2697c.f527a.m833a(longValue, enumC2694B) : null;
        } else {
            C2697c c2697c2 = this.f556c;
            long longValue2 = m836e.longValue();
            EnumC2694B enumC2694B2 = this.f555b;
            c2716v.m838c();
            m833a = c2697c2.f527a.m833a(longValue2, enumC2694B2);
        }
        if (m833a == null) {
            return m884c().mo883a(c2716v, sb);
        }
        sb.append(m833a);
        return true;
    }

    @Override // p033j$.time.format.InterfaceC2702h
    /* renamed from: b */
    public int mo882b(C2714t c2714t, CharSequence charSequence, int i) {
        Iterator it;
        int length = charSequence.length();
        if (i < 0 || i > length) {
            throw new IndexOutOfBoundsException();
        }
        Iterator it2 = null;
        EnumC2694B enumC2694B = c2714t.m849k() ? this.f555b : null;
        InterfaceC2688g m853g = c2714t.m853g();
        InterfaceC2688g interfaceC2688g = C2689h.f501a;
        if (m853g == interfaceC2688g) {
            C2697c c2697c = this.f556c;
            c2714t.m852h();
            it = c2697c.f527a.m832b(enumC2694B);
        } else {
            C2697c c2697c2 = this.f556c;
            InterfaceC2748o interfaceC2748o = this.f554a;
            c2714t.m852h();
            Objects.requireNonNull(c2697c2);
            if (m853g == interfaceC2688g || !(interfaceC2748o instanceof EnumC2734a)) {
                it2 = c2697c2.f527a.m832b(enumC2694B);
            }
            it = it2;
        }
        if (it != null) {
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String str = (String) entry.getKey();
                if (c2714t.m842r(str, 0, charSequence, i, str.length())) {
                    return c2714t.m846n(this.f554a, ((Long) entry.getValue()).longValue(), i, str.length() + i);
                }
            }
            if (c2714t.m849k()) {
                return ~i;
            }
        }
        return m884c().mo882b(c2714t, charSequence, i);
    }

    public String toString() {
        StringBuilder m961a;
        Object obj;
        if (this.f555b == EnumC2694B.FULL) {
            m961a = AbstractC2679a.m961a("Text(");
            obj = this.f554a;
        } else {
            m961a = AbstractC2679a.m961a("Text(");
            m961a.append(this.f554a);
            m961a.append(",");
            obj = this.f555b;
        }
        m961a.append(obj);
        m961a.append(")");
        return m961a.toString();
    }
}
