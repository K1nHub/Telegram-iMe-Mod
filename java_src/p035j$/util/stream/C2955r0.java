package p035j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p035j$.util.InterfaceC2701s;
/* renamed from: j$.util.stream.r0 */
/* loaded from: classes2.dex */
final class C2955r0 extends CountedCompleter {

    /* renamed from: a */
    private InterfaceC2701s f1039a;

    /* renamed from: b */
    private final InterfaceC2928m3 f1040b;

    /* renamed from: c */
    private final AbstractC2999y2 f1041c;

    /* renamed from: d */
    private long f1042d;

    C2955r0(C2955r0 c2955r0, InterfaceC2701s interfaceC2701s) {
        super(c2955r0);
        this.f1039a = interfaceC2701s;
        this.f1040b = c2955r0.f1040b;
        this.f1042d = c2955r0.f1042d;
        this.f1041c = c2955r0.f1041c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2955r0(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s, InterfaceC2928m3 interfaceC2928m3) {
        super(null);
        this.f1040b = interfaceC2928m3;
        this.f1041c = abstractC2999y2;
        this.f1039a = interfaceC2701s;
        this.f1042d = 0L;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2701s trySplit;
        InterfaceC2701s interfaceC2701s = this.f1039a;
        long estimateSize = interfaceC2701s.estimateSize();
        long j = this.f1042d;
        if (j == 0) {
            j = AbstractC2882f.m411h(estimateSize);
            this.f1042d = j;
        }
        boolean m429d = EnumC2875d4.SHORT_CIRCUIT.m429d(this.f1041c.mo299s0());
        boolean z = false;
        InterfaceC2928m3 interfaceC2928m3 = this.f1040b;
        C2955r0 c2955r0 = this;
        while (true) {
            if (m429d && interfaceC2928m3.mo305o()) {
                break;
            } else if (estimateSize <= j || (trySplit = interfaceC2701s.trySplit()) == null) {
                break;
            } else {
                C2955r0 c2955r02 = new C2955r0(c2955r0, trySplit);
                c2955r0.addToPendingCount(1);
                if (z) {
                    interfaceC2701s = trySplit;
                } else {
                    C2955r0 c2955r03 = c2955r0;
                    c2955r0 = c2955r02;
                    c2955r02 = c2955r03;
                }
                z = !z;
                c2955r0.fork();
                c2955r0 = c2955r02;
                estimateSize = interfaceC2701s.estimateSize();
            }
        }
        c2955r0.f1041c.mo304n0(interfaceC2928m3, interfaceC2701s);
        c2955r0.f1039a = null;
        c2955r0.propagateCompletion();
    }
}
