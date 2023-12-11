package p033j$.time.chrono;

import java.util.Objects;
import p033j$.time.C2689f;
import p033j$.time.C2729r;
import p033j$.time.temporal.AbstractC2744n;
import p033j$.time.temporal.AbstractC2753w;
import p033j$.time.temporal.C2747q;
import p033j$.time.temporal.C2756z;
import p033j$.time.temporal.EnumC2731a;
import p033j$.time.temporal.InterfaceC2741k;
import p033j$.time.temporal.InterfaceC2745o;
/* renamed from: j$.time.chrono.d */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2682d {
    /* renamed from: a */
    public static int m956a(InterfaceC2684f interfaceC2684f, InterfaceC2745o interfaceC2745o) {
        if (interfaceC2745o instanceof EnumC2731a) {
            int i = AbstractC2683e.f500a[((EnumC2731a) interfaceC2745o).ordinal()];
            if (i != 1) {
                C2729r c2729r = (C2729r) interfaceC2684f;
                return i != 2 ? ((C2689f) c2729r.m767s()).mo741c(interfaceC2745o) : c2729r.m775k().m785p();
            }
            throw new C2756z("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
        }
        return AbstractC2744n.m735a(interfaceC2684f, interfaceC2745o);
    }

    /* renamed from: b */
    public static InterfaceC2685g m955b(InterfaceC2741k interfaceC2741k) {
        Objects.requireNonNull(interfaceC2741k, "temporal");
        int i = AbstractC2753w.f647a;
        InterfaceC2685g interfaceC2685g = (InterfaceC2685g) interfaceC2741k.mo738g(C2747q.f641a);
        return interfaceC2685g != null ? interfaceC2685g : C2686h.f501a;
    }
}
