package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2625s;
/* renamed from: j$.util.stream.r0 */
/* loaded from: classes2.dex */
final class C2879r0 extends CountedCompleter {

    /* renamed from: a */
    private InterfaceC2625s f1034a;

    /* renamed from: b */
    private final InterfaceC2852m3 f1035b;

    /* renamed from: c */
    private final AbstractC2923y2 f1036c;

    /* renamed from: d */
    private long f1037d;

    C2879r0(C2879r0 c2879r0, InterfaceC2625s interfaceC2625s) {
        super(c2879r0);
        this.f1034a = interfaceC2625s;
        this.f1035b = c2879r0.f1035b;
        this.f1037d = c2879r0.f1037d;
        this.f1036c = c2879r0.f1036c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2879r0(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s, InterfaceC2852m3 interfaceC2852m3) {
        super(null);
        this.f1035b = interfaceC2852m3;
        this.f1036c = abstractC2923y2;
        this.f1034a = interfaceC2625s;
        this.f1037d = 0L;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2625s trySplit;
        InterfaceC2625s interfaceC2625s = this.f1034a;
        long estimateSize = interfaceC2625s.estimateSize();
        long j = this.f1037d;
        if (j == 0) {
            j = AbstractC2806f.m416h(estimateSize);
            this.f1037d = j;
        }
        boolean m434d = EnumC2799d4.SHORT_CIRCUIT.m434d(this.f1036c.mo304s0());
        boolean z = false;
        InterfaceC2852m3 interfaceC2852m3 = this.f1035b;
        C2879r0 c2879r0 = this;
        while (true) {
            if (m434d && interfaceC2852m3.mo310o()) {
                break;
            } else if (estimateSize <= j || (trySplit = interfaceC2625s.trySplit()) == null) {
                break;
            } else {
                C2879r0 c2879r02 = new C2879r0(c2879r0, trySplit);
                c2879r0.addToPendingCount(1);
                if (z) {
                    interfaceC2625s = trySplit;
                } else {
                    C2879r0 c2879r03 = c2879r0;
                    c2879r0 = c2879r02;
                    c2879r02 = c2879r03;
                }
                z = !z;
                c2879r0.fork();
                c2879r0 = c2879r02;
                estimateSize = interfaceC2625s.estimateSize();
            }
        }
        c2879r0.f1036c.mo309n0(interfaceC2852m3, interfaceC2625s);
        c2879r0.f1034a = null;
        c2879r0.propagateCompletion();
    }
}
