package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2732s;
/* renamed from: j$.util.stream.r0 */
/* loaded from: classes2.dex */
final class C2986r0 extends CountedCompleter {

    /* renamed from: a */
    private InterfaceC2732s f1037a;

    /* renamed from: b */
    private final InterfaceC2959m3 f1038b;

    /* renamed from: c */
    private final AbstractC3030y2 f1039c;

    /* renamed from: d */
    private long f1040d;

    C2986r0(C2986r0 c2986r0, InterfaceC2732s interfaceC2732s) {
        super(c2986r0);
        this.f1037a = interfaceC2732s;
        this.f1038b = c2986r0.f1038b;
        this.f1040d = c2986r0.f1040d;
        this.f1039c = c2986r0.f1039c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2986r0(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s, InterfaceC2959m3 interfaceC2959m3) {
        super(null);
        this.f1038b = interfaceC2959m3;
        this.f1039c = abstractC3030y2;
        this.f1037a = interfaceC2732s;
        this.f1040d = 0L;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2732s trySplit;
        InterfaceC2732s interfaceC2732s = this.f1037a;
        long estimateSize = interfaceC2732s.estimateSize();
        long j = this.f1040d;
        if (j == 0) {
            j = AbstractC2913f.m402h(estimateSize);
            this.f1040d = j;
        }
        boolean m420d = EnumC2906d4.SHORT_CIRCUIT.m420d(this.f1039c.mo290s0());
        boolean z = false;
        InterfaceC2959m3 interfaceC2959m3 = this.f1038b;
        C2986r0 c2986r0 = this;
        while (true) {
            if (m420d && interfaceC2959m3.mo296o()) {
                break;
            } else if (estimateSize <= j || (trySplit = interfaceC2732s.trySplit()) == null) {
                break;
            } else {
                C2986r0 c2986r02 = new C2986r0(c2986r0, trySplit);
                c2986r0.addToPendingCount(1);
                if (z) {
                    interfaceC2732s = trySplit;
                } else {
                    C2986r0 c2986r03 = c2986r0;
                    c2986r0 = c2986r02;
                    c2986r02 = c2986r03;
                }
                z = !z;
                c2986r0.fork();
                c2986r0 = c2986r02;
                estimateSize = interfaceC2732s.estimateSize();
            }
        }
        c2986r0.f1039c.mo295n0(interfaceC2959m3, interfaceC2732s);
        c2986r0.f1037a = null;
        c2986r0.propagateCompletion();
    }
}
