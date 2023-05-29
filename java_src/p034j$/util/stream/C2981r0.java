package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2727s;
/* renamed from: j$.util.stream.r0 */
/* loaded from: classes2.dex */
final class C2981r0 extends CountedCompleter {

    /* renamed from: a */
    private InterfaceC2727s f1037a;

    /* renamed from: b */
    private final InterfaceC2954m3 f1038b;

    /* renamed from: c */
    private final AbstractC3025y2 f1039c;

    /* renamed from: d */
    private long f1040d;

    C2981r0(C2981r0 c2981r0, InterfaceC2727s interfaceC2727s) {
        super(c2981r0);
        this.f1037a = interfaceC2727s;
        this.f1038b = c2981r0.f1038b;
        this.f1040d = c2981r0.f1040d;
        this.f1039c = c2981r0.f1039c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2981r0(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s, InterfaceC2954m3 interfaceC2954m3) {
        super(null);
        this.f1038b = interfaceC2954m3;
        this.f1039c = abstractC3025y2;
        this.f1037a = interfaceC2727s;
        this.f1040d = 0L;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2727s trySplit;
        InterfaceC2727s interfaceC2727s = this.f1037a;
        long estimateSize = interfaceC2727s.estimateSize();
        long j = this.f1040d;
        if (j == 0) {
            j = AbstractC2908f.m402h(estimateSize);
            this.f1040d = j;
        }
        boolean m420d = EnumC2901d4.SHORT_CIRCUIT.m420d(this.f1039c.mo290s0());
        boolean z = false;
        InterfaceC2954m3 interfaceC2954m3 = this.f1038b;
        C2981r0 c2981r0 = this;
        while (true) {
            if (m420d && interfaceC2954m3.mo296o()) {
                break;
            } else if (estimateSize <= j || (trySplit = interfaceC2727s.trySplit()) == null) {
                break;
            } else {
                C2981r0 c2981r02 = new C2981r0(c2981r0, trySplit);
                c2981r0.addToPendingCount(1);
                if (z) {
                    interfaceC2727s = trySplit;
                } else {
                    C2981r0 c2981r03 = c2981r0;
                    c2981r0 = c2981r02;
                    c2981r02 = c2981r03;
                }
                z = !z;
                c2981r0.fork();
                c2981r0 = c2981r02;
                estimateSize = interfaceC2727s.estimateSize();
            }
        }
        c2981r0.f1039c.mo295n0(interfaceC2954m3, interfaceC2727s);
        c2981r0.f1037a = null;
        c2981r0.propagateCompletion();
    }
}
