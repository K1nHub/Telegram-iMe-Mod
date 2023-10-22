package p033j$.time.chrono;

import java.util.Objects;
import p033j$.time.C2688f;
import p033j$.time.C2728r;
import p033j$.time.temporal.AbstractC2743n;
import p033j$.time.temporal.AbstractC2752w;
import p033j$.time.temporal.C2746q;
import p033j$.time.temporal.C2755z;
import p033j$.time.temporal.EnumC2730a;
import p033j$.time.temporal.InterfaceC2740k;
import p033j$.time.temporal.InterfaceC2744o;
/* renamed from: j$.time.chrono.d */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2681d {
    /* renamed from: a */
    public static int m955a(InterfaceC2683f interfaceC2683f, InterfaceC2744o interfaceC2744o) {
        if (interfaceC2744o instanceof EnumC2730a) {
            int i = AbstractC2682e.f500a[((EnumC2730a) interfaceC2744o).ordinal()];
            if (i != 1) {
                C2728r c2728r = (C2728r) interfaceC2683f;
                return i != 2 ? ((C2688f) c2728r.m766s()).mo740c(interfaceC2744o) : c2728r.m774k().m784p();
            }
            throw new C2755z("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
        }
        return AbstractC2743n.m734a(interfaceC2683f, interfaceC2744o);
    }

    /* renamed from: b */
    public static InterfaceC2684g m954b(InterfaceC2740k interfaceC2740k) {
        Objects.requireNonNull(interfaceC2740k, "temporal");
        int i = AbstractC2752w.f647a;
        InterfaceC2684g interfaceC2684g = (InterfaceC2684g) interfaceC2740k.mo737g(C2746q.f641a);
        return interfaceC2684g != null ? interfaceC2684g : C2685h.f501a;
    }
}
