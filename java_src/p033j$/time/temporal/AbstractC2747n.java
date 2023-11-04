package p033j$.time.temporal;

import java.util.Objects;
import p033j$.time.DateTimeException;
import p033j$.time.EnumC2680b;
/* renamed from: j$.time.temporal.n */
/* loaded from: classes2.dex */
public abstract class AbstractC2747n {
    /* renamed from: a */
    public static int m735a(InterfaceC2744k interfaceC2744k, InterfaceC2748o interfaceC2748o) {
        C2733A mo740d = interfaceC2744k.mo740d(interfaceC2748o);
        if (!mo740d.m759g()) {
            throw new C2759z("Invalid field " + interfaceC2748o + " for get() method, use getLong() instead");
        }
        long mo739e = interfaceC2744k.mo739e(interfaceC2748o);
        if (mo740d.m758h(mo739e)) {
            return (int) mo739e;
        }
        throw new DateTimeException("Invalid value for " + interfaceC2748o + " (valid values " + mo740d + "): " + mo739e);
    }

    /* renamed from: b */
    public static Object m734b(InterfaceC2744k interfaceC2744k, InterfaceC2757x interfaceC2757x) {
        int i = AbstractC2756w.f647a;
        if (interfaceC2757x == C2749p.f640a || interfaceC2757x == C2750q.f641a || interfaceC2757x == C2751r.f642a) {
            return null;
        }
        return interfaceC2757x.mo723a(interfaceC2744k);
    }

    /* renamed from: c */
    public static C2733A m733c(InterfaceC2744k interfaceC2744k, InterfaceC2748o interfaceC2748o) {
        if (!(interfaceC2748o instanceof EnumC2734a)) {
            Objects.requireNonNull(interfaceC2748o, "field");
            return interfaceC2748o.mo725g(interfaceC2744k);
        } else if (interfaceC2744k.mo737i(interfaceC2748o)) {
            return interfaceC2748o.mo731a();
        } else {
            throw new C2759z("Unsupported field: " + interfaceC2748o);
        }
    }

    /* renamed from: d */
    public static InterfaceC2745l m732d(EnumC2680b enumC2680b) {
        return new C2746m(enumC2680b.m960j());
    }
}
