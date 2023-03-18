package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2611s;
/* renamed from: j$.util.stream.r0 */
/* loaded from: classes2.dex */
final class C2865r0 extends CountedCompleter {

    /* renamed from: a */
    private InterfaceC2611s f1033a;

    /* renamed from: b */
    private final InterfaceC2838m3 f1034b;

    /* renamed from: c */
    private final AbstractC2909y2 f1035c;

    /* renamed from: d */
    private long f1036d;

    C2865r0(C2865r0 c2865r0, InterfaceC2611s interfaceC2611s) {
        super(c2865r0);
        this.f1033a = interfaceC2611s;
        this.f1034b = c2865r0.f1034b;
        this.f1036d = c2865r0.f1036d;
        this.f1035c = c2865r0.f1035c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2865r0(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s, InterfaceC2838m3 interfaceC2838m3) {
        super(null);
        this.f1034b = interfaceC2838m3;
        this.f1035c = abstractC2909y2;
        this.f1033a = interfaceC2611s;
        this.f1036d = 0L;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2611s trySplit;
        InterfaceC2611s interfaceC2611s = this.f1033a;
        long estimateSize = interfaceC2611s.estimateSize();
        long j = this.f1036d;
        if (j == 0) {
            j = AbstractC2792f.m417h(estimateSize);
            this.f1036d = j;
        }
        boolean m435d = EnumC2785d4.SHORT_CIRCUIT.m435d(this.f1035c.mo305s0());
        boolean z = false;
        InterfaceC2838m3 interfaceC2838m3 = this.f1034b;
        C2865r0 c2865r0 = this;
        while (true) {
            if (m435d && interfaceC2838m3.mo311o()) {
                break;
            } else if (estimateSize <= j || (trySplit = interfaceC2611s.trySplit()) == null) {
                break;
            } else {
                C2865r0 c2865r02 = new C2865r0(c2865r0, trySplit);
                c2865r0.addToPendingCount(1);
                if (z) {
                    interfaceC2611s = trySplit;
                } else {
                    C2865r0 c2865r03 = c2865r0;
                    c2865r0 = c2865r02;
                    c2865r02 = c2865r03;
                }
                z = !z;
                c2865r0.fork();
                c2865r0 = c2865r02;
                estimateSize = interfaceC2611s.estimateSize();
            }
        }
        c2865r0.f1035c.mo310n0(interfaceC2838m3, interfaceC2611s);
        c2865r0.f1033a = null;
        c2865r0.propagateCompletion();
    }
}
