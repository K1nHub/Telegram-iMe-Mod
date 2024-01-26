package p033j$.time.temporal;

import java.util.Objects;
import p033j$.time.DateTimeException;
import p033j$.time.EnumC2675b;
/* renamed from: j$.time.temporal.n */
/* loaded from: classes2.dex */
public abstract class AbstractC2742n {
    /* renamed from: a */
    public static int m738a(InterfaceC2739k interfaceC2739k, InterfaceC2743o interfaceC2743o) {
        C2728A mo743d = interfaceC2739k.mo743d(interfaceC2743o);
        if (!mo743d.m762g()) {
            throw new C2754z("Invalid field " + interfaceC2743o + " for get() method, use getLong() instead");
        }
        long mo742e = interfaceC2739k.mo742e(interfaceC2743o);
        if (mo743d.m761h(mo742e)) {
            return (int) mo742e;
        }
        throw new DateTimeException("Invalid value for " + interfaceC2743o + " (valid values " + mo743d + "): " + mo742e);
    }

    /* renamed from: b */
    public static Object m737b(InterfaceC2739k interfaceC2739k, InterfaceC2752x interfaceC2752x) {
        int i = AbstractC2751w.f647a;
        if (interfaceC2752x == C2744p.f640a || interfaceC2752x == C2745q.f641a || interfaceC2752x == C2746r.f642a) {
            return null;
        }
        return interfaceC2752x.mo726a(interfaceC2739k);
    }

    /* renamed from: c */
    public static C2728A m736c(InterfaceC2739k interfaceC2739k, InterfaceC2743o interfaceC2743o) {
        if (!(interfaceC2743o instanceof EnumC2729a)) {
            Objects.requireNonNull(interfaceC2743o, "field");
            return interfaceC2743o.mo728g(interfaceC2739k);
        } else if (interfaceC2739k.mo740i(interfaceC2743o)) {
            return interfaceC2743o.mo734a();
        } else {
            throw new C2754z("Unsupported field: " + interfaceC2743o);
        }
    }

    /* renamed from: d */
    public static InterfaceC2740l m735d(EnumC2675b enumC2675b) {
        return new C2741m(enumC2675b.m963j());
    }
}
