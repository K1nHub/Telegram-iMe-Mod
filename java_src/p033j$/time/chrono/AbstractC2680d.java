package p033j$.time.chrono;

import java.util.Objects;
import p033j$.time.C2687f;
import p033j$.time.C2727r;
import p033j$.time.temporal.AbstractC2742n;
import p033j$.time.temporal.AbstractC2751w;
import p033j$.time.temporal.C2745q;
import p033j$.time.temporal.C2754z;
import p033j$.time.temporal.EnumC2729a;
import p033j$.time.temporal.InterfaceC2739k;
import p033j$.time.temporal.InterfaceC2743o;
/* renamed from: j$.time.chrono.d */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2680d {
    /* renamed from: a */
    public static int m959a(InterfaceC2682f interfaceC2682f, InterfaceC2743o interfaceC2743o) {
        if (interfaceC2743o instanceof EnumC2729a) {
            int i = AbstractC2681e.f500a[((EnumC2729a) interfaceC2743o).ordinal()];
            if (i != 1) {
                C2727r c2727r = (C2727r) interfaceC2682f;
                return i != 2 ? ((C2687f) c2727r.m770s()).mo744c(interfaceC2743o) : c2727r.m778k().m788p();
            }
            throw new C2754z("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
        }
        return AbstractC2742n.m738a(interfaceC2682f, interfaceC2743o);
    }

    /* renamed from: b */
    public static InterfaceC2683g m958b(InterfaceC2739k interfaceC2739k) {
        Objects.requireNonNull(interfaceC2739k, "temporal");
        int i = AbstractC2751w.f647a;
        InterfaceC2683g interfaceC2683g = (InterfaceC2683g) interfaceC2739k.mo741g(C2745q.f641a);
        return interfaceC2683g != null ? interfaceC2683g : C2684h.f501a;
    }
}
