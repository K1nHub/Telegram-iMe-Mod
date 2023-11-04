package p033j$.time.chrono;

import java.util.Objects;
import p033j$.time.C2692f;
import p033j$.time.C2732r;
import p033j$.time.temporal.AbstractC2747n;
import p033j$.time.temporal.AbstractC2756w;
import p033j$.time.temporal.C2750q;
import p033j$.time.temporal.C2759z;
import p033j$.time.temporal.EnumC2734a;
import p033j$.time.temporal.InterfaceC2744k;
import p033j$.time.temporal.InterfaceC2748o;
/* renamed from: j$.time.chrono.d */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2685d {
    /* renamed from: a */
    public static int m956a(InterfaceC2687f interfaceC2687f, InterfaceC2748o interfaceC2748o) {
        if (interfaceC2748o instanceof EnumC2734a) {
            int i = AbstractC2686e.f500a[((EnumC2734a) interfaceC2748o).ordinal()];
            if (i != 1) {
                C2732r c2732r = (C2732r) interfaceC2687f;
                return i != 2 ? ((C2692f) c2732r.m767s()).mo741c(interfaceC2748o) : c2732r.m775k().m785p();
            }
            throw new C2759z("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
        }
        return AbstractC2747n.m735a(interfaceC2687f, interfaceC2748o);
    }

    /* renamed from: b */
    public static InterfaceC2688g m955b(InterfaceC2744k interfaceC2744k) {
        Objects.requireNonNull(interfaceC2744k, "temporal");
        int i = AbstractC2756w.f647a;
        InterfaceC2688g interfaceC2688g = (InterfaceC2688g) interfaceC2744k.mo738g(C2750q.f641a);
        return interfaceC2688g != null ? interfaceC2688g : C2689h.f501a;
    }
}
