package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2688s;
/* renamed from: j$.util.stream.r0 */
/* loaded from: classes2.dex */
final class C2942r0 extends CountedCompleter {

    /* renamed from: a */
    private InterfaceC2688s f1034a;

    /* renamed from: b */
    private final InterfaceC2915m3 f1035b;

    /* renamed from: c */
    private final AbstractC2986y2 f1036c;

    /* renamed from: d */
    private long f1037d;

    C2942r0(C2942r0 c2942r0, InterfaceC2688s interfaceC2688s) {
        super(c2942r0);
        this.f1034a = interfaceC2688s;
        this.f1035b = c2942r0.f1035b;
        this.f1037d = c2942r0.f1037d;
        this.f1036c = c2942r0.f1036c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2942r0(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s, InterfaceC2915m3 interfaceC2915m3) {
        super(null);
        this.f1035b = interfaceC2915m3;
        this.f1036c = abstractC2986y2;
        this.f1034a = interfaceC2688s;
        this.f1037d = 0L;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2688s trySplit;
        InterfaceC2688s interfaceC2688s = this.f1034a;
        long estimateSize = interfaceC2688s.estimateSize();
        long j = this.f1037d;
        if (j == 0) {
            j = AbstractC2869f.m397h(estimateSize);
            this.f1037d = j;
        }
        boolean m415d = EnumC2862d4.SHORT_CIRCUIT.m415d(this.f1036c.mo285s0());
        boolean z = false;
        InterfaceC2915m3 interfaceC2915m3 = this.f1035b;
        C2942r0 c2942r0 = this;
        while (true) {
            if (m415d && interfaceC2915m3.mo291o()) {
                break;
            } else if (estimateSize <= j || (trySplit = interfaceC2688s.trySplit()) == null) {
                break;
            } else {
                C2942r0 c2942r02 = new C2942r0(c2942r0, trySplit);
                c2942r0.addToPendingCount(1);
                if (z) {
                    interfaceC2688s = trySplit;
                } else {
                    C2942r0 c2942r03 = c2942r0;
                    c2942r0 = c2942r02;
                    c2942r02 = c2942r03;
                }
                z = !z;
                c2942r0.fork();
                c2942r0 = c2942r02;
                estimateSize = interfaceC2688s.estimateSize();
            }
        }
        c2942r0.f1036c.mo290n0(interfaceC2915m3, interfaceC2688s);
        c2942r0.f1034a = null;
        c2942r0.propagateCompletion();
    }
}
