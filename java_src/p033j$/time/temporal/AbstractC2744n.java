package p033j$.time.temporal;

import java.util.Objects;
import p033j$.time.DateTimeException;
import p033j$.time.EnumC2677b;
/* renamed from: j$.time.temporal.n */
/* loaded from: classes2.dex */
public abstract class AbstractC2744n {
    /* renamed from: a */
    public static int m735a(InterfaceC2741k interfaceC2741k, InterfaceC2745o interfaceC2745o) {
        C2730A mo740d = interfaceC2741k.mo740d(interfaceC2745o);
        if (!mo740d.m759g()) {
            throw new C2756z("Invalid field " + interfaceC2745o + " for get() method, use getLong() instead");
        }
        long mo739e = interfaceC2741k.mo739e(interfaceC2745o);
        if (mo740d.m758h(mo739e)) {
            return (int) mo739e;
        }
        throw new DateTimeException("Invalid value for " + interfaceC2745o + " (valid values " + mo740d + "): " + mo739e);
    }

    /* renamed from: b */
    public static Object m734b(InterfaceC2741k interfaceC2741k, InterfaceC2754x interfaceC2754x) {
        int i = AbstractC2753w.f647a;
        if (interfaceC2754x == C2746p.f640a || interfaceC2754x == C2747q.f641a || interfaceC2754x == C2748r.f642a) {
            return null;
        }
        return interfaceC2754x.mo723a(interfaceC2741k);
    }

    /* renamed from: c */
    public static C2730A m733c(InterfaceC2741k interfaceC2741k, InterfaceC2745o interfaceC2745o) {
        if (!(interfaceC2745o instanceof EnumC2731a)) {
            Objects.requireNonNull(interfaceC2745o, "field");
            return interfaceC2745o.mo725g(interfaceC2741k);
        } else if (interfaceC2741k.mo737i(interfaceC2745o)) {
            return interfaceC2745o.mo731a();
        } else {
            throw new C2756z("Unsupported field: " + interfaceC2745o);
        }
    }

    /* renamed from: d */
    public static InterfaceC2742l m732d(EnumC2677b enumC2677b) {
        return new C2743m(enumC2677b.m960j());
    }
}
