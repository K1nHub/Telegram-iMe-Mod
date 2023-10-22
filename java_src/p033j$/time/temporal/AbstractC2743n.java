package p033j$.time.temporal;

import java.util.Objects;
import p033j$.time.DateTimeException;
import p033j$.time.EnumC2676b;
/* renamed from: j$.time.temporal.n */
/* loaded from: classes2.dex */
public abstract class AbstractC2743n {
    /* renamed from: a */
    public static int m734a(InterfaceC2740k interfaceC2740k, InterfaceC2744o interfaceC2744o) {
        C2729A mo739d = interfaceC2740k.mo739d(interfaceC2744o);
        if (!mo739d.m758g()) {
            throw new C2755z("Invalid field " + interfaceC2744o + " for get() method, use getLong() instead");
        }
        long mo738e = interfaceC2740k.mo738e(interfaceC2744o);
        if (mo739d.m757h(mo738e)) {
            return (int) mo738e;
        }
        throw new DateTimeException("Invalid value for " + interfaceC2744o + " (valid values " + mo739d + "): " + mo738e);
    }

    /* renamed from: b */
    public static Object m733b(InterfaceC2740k interfaceC2740k, InterfaceC2753x interfaceC2753x) {
        int i = AbstractC2752w.f647a;
        if (interfaceC2753x == C2745p.f640a || interfaceC2753x == C2746q.f641a || interfaceC2753x == C2747r.f642a) {
            return null;
        }
        return interfaceC2753x.mo722a(interfaceC2740k);
    }

    /* renamed from: c */
    public static C2729A m732c(InterfaceC2740k interfaceC2740k, InterfaceC2744o interfaceC2744o) {
        if (!(interfaceC2744o instanceof EnumC2730a)) {
            Objects.requireNonNull(interfaceC2744o, "field");
            return interfaceC2744o.mo724g(interfaceC2740k);
        } else if (interfaceC2740k.mo736i(interfaceC2744o)) {
            return interfaceC2744o.mo730a();
        } else {
            throw new C2755z("Unsupported field: " + interfaceC2744o);
        }
    }

    /* renamed from: d */
    public static InterfaceC2741l m731d(EnumC2676b enumC2676b) {
        return new C2742m(enumC2676b.m959j());
    }
}
