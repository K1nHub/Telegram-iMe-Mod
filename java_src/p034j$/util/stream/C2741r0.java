package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2487s;
/* renamed from: j$.util.stream.r0 */
/* loaded from: classes2.dex */
final class C2741r0 extends CountedCompleter {

    /* renamed from: a */
    private InterfaceC2487s f1028a;

    /* renamed from: b */
    private final InterfaceC2714m3 f1029b;

    /* renamed from: c */
    private final AbstractC2785y2 f1030c;

    /* renamed from: d */
    private long f1031d;

    C2741r0(C2741r0 c2741r0, InterfaceC2487s interfaceC2487s) {
        super(c2741r0);
        this.f1028a = interfaceC2487s;
        this.f1029b = c2741r0.f1029b;
        this.f1031d = c2741r0.f1031d;
        this.f1030c = c2741r0.f1030c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2741r0(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s, InterfaceC2714m3 interfaceC2714m3) {
        super(null);
        this.f1029b = interfaceC2714m3;
        this.f1030c = abstractC2785y2;
        this.f1028a = interfaceC2487s;
        this.f1031d = 0L;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2487s trySplit;
        InterfaceC2487s interfaceC2487s = this.f1028a;
        long estimateSize = interfaceC2487s.estimateSize();
        long j = this.f1031d;
        if (j == 0) {
            j = AbstractC2668f.m417h(estimateSize);
            this.f1031d = j;
        }
        boolean m435d = EnumC2661d4.SHORT_CIRCUIT.m435d(this.f1030c.mo305s0());
        boolean z = false;
        InterfaceC2714m3 interfaceC2714m3 = this.f1029b;
        C2741r0 c2741r0 = this;
        while (true) {
            if (m435d && interfaceC2714m3.mo311o()) {
                break;
            } else if (estimateSize <= j || (trySplit = interfaceC2487s.trySplit()) == null) {
                break;
            } else {
                C2741r0 c2741r02 = new C2741r0(c2741r0, trySplit);
                c2741r0.addToPendingCount(1);
                if (z) {
                    interfaceC2487s = trySplit;
                } else {
                    C2741r0 c2741r03 = c2741r0;
                    c2741r0 = c2741r02;
                    c2741r02 = c2741r03;
                }
                z = !z;
                c2741r0.fork();
                c2741r0 = c2741r02;
                estimateSize = interfaceC2487s.estimateSize();
            }
        }
        c2741r0.f1030c.mo310n0(interfaceC2714m3, interfaceC2487s);
        c2741r0.f1028a = null;
        c2741r0.propagateCompletion();
    }
}
