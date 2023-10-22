package p033j$.time.format;

import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import p033j$.time.AbstractC2675a;
import p033j$.time.chrono.C2685h;
import p033j$.time.chrono.InterfaceC2684g;
import p033j$.time.temporal.AbstractC2752w;
import p033j$.time.temporal.C2746q;
import p033j$.time.temporal.EnumC2730a;
import p033j$.time.temporal.InterfaceC2740k;
import p033j$.time.temporal.InterfaceC2744o;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.q */
/* loaded from: classes2.dex */
public final class C2707q implements InterfaceC2698h {

    /* renamed from: a */
    private final InterfaceC2744o f554a;

    /* renamed from: b */
    private final EnumC2690B f555b;

    /* renamed from: c */
    private final C2693c f556c;

    /* renamed from: d */
    private volatile C2701k f557d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2707q(InterfaceC2744o interfaceC2744o, EnumC2690B enumC2690B, C2693c c2693c) {
        this.f554a = interfaceC2744o;
        this.f555b = enumC2690B;
        this.f556c = c2693c;
    }

    /* renamed from: c */
    private C2701k m883c() {
        if (this.f557d == null) {
            this.f557d = new C2701k(this.f554a, 1, 19, EnumC2689A.NORMAL);
        }
        return this.f557d;
    }

    @Override // p033j$.time.format.InterfaceC2698h
    /* renamed from: a */
    public boolean mo882a(C2712v c2712v, StringBuilder sb) {
        String m832a;
        C2685h c2685h;
        Long m835e = c2712v.m835e(this.f554a);
        if (m835e == null) {
            return false;
        }
        InterfaceC2740k m836d = c2712v.m836d();
        int i = AbstractC2752w.f647a;
        InterfaceC2684g interfaceC2684g = (InterfaceC2684g) m836d.mo737g(C2746q.f641a);
        if (interfaceC2684g != null && interfaceC2684g != (c2685h = C2685h.f501a)) {
            C2693c c2693c = this.f556c;
            InterfaceC2744o interfaceC2744o = this.f554a;
            long longValue = m835e.longValue();
            EnumC2690B enumC2690B = this.f555b;
            c2712v.m837c();
            Objects.requireNonNull(c2693c);
            m832a = (interfaceC2684g == c2685h || !(interfaceC2744o instanceof EnumC2730a)) ? c2693c.f527a.m832a(longValue, enumC2690B) : null;
        } else {
            C2693c c2693c2 = this.f556c;
            long longValue2 = m835e.longValue();
            EnumC2690B enumC2690B2 = this.f555b;
            c2712v.m837c();
            m832a = c2693c2.f527a.m832a(longValue2, enumC2690B2);
        }
        if (m832a == null) {
            return m883c().mo882a(c2712v, sb);
        }
        sb.append(m832a);
        return true;
    }

    @Override // p033j$.time.format.InterfaceC2698h
    /* renamed from: b */
    public int mo881b(C2710t c2710t, CharSequence charSequence, int i) {
        Iterator it;
        int length = charSequence.length();
        if (i < 0 || i > length) {
            throw new IndexOutOfBoundsException();
        }
        Iterator it2 = null;
        EnumC2690B enumC2690B = c2710t.m848k() ? this.f555b : null;
        InterfaceC2684g m852g = c2710t.m852g();
        InterfaceC2684g interfaceC2684g = C2685h.f501a;
        if (m852g == interfaceC2684g) {
            C2693c c2693c = this.f556c;
            c2710t.m851h();
            it = c2693c.f527a.m831b(enumC2690B);
        } else {
            C2693c c2693c2 = this.f556c;
            InterfaceC2744o interfaceC2744o = this.f554a;
            c2710t.m851h();
            Objects.requireNonNull(c2693c2);
            if (m852g == interfaceC2684g || !(interfaceC2744o instanceof EnumC2730a)) {
                it2 = c2693c2.f527a.m831b(enumC2690B);
            }
            it = it2;
        }
        if (it != null) {
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String str = (String) entry.getKey();
                if (c2710t.m841r(str, 0, charSequence, i, str.length())) {
                    return c2710t.m845n(this.f554a, ((Long) entry.getValue()).longValue(), i, str.length() + i);
                }
            }
            if (c2710t.m848k()) {
                return ~i;
            }
        }
        return m883c().mo881b(c2710t, charSequence, i);
    }

    public String toString() {
        StringBuilder m960a;
        Object obj;
        if (this.f555b == EnumC2690B.FULL) {
            m960a = AbstractC2675a.m960a("Text(");
            obj = this.f554a;
        } else {
            m960a = AbstractC2675a.m960a("Text(");
            m960a.append(this.f554a);
            m960a.append(",");
            obj = this.f555b;
        }
        m960a.append(obj);
        m960a.append(")");
        return m960a.toString();
    }
}
