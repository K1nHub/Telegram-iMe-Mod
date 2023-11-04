package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.r0 */
/* loaded from: classes2.dex */
final class C3103r0 extends CountedCompleter {

    /* renamed from: a */
    private Spliterator f1172a;

    /* renamed from: b */
    private final InterfaceC3076m3 f1173b;

    /* renamed from: c */
    private final AbstractC3147y2 f1174c;

    /* renamed from: d */
    private long f1175d;

    C3103r0(C3103r0 c3103r0, Spliterator spliterator) {
        super(c3103r0);
        this.f1172a = spliterator;
        this.f1173b = c3103r0.f1173b;
        this.f1175d = c3103r0.f1175d;
        this.f1174c = c3103r0.f1174c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3103r0(AbstractC3147y2 abstractC3147y2, Spliterator spliterator, InterfaceC3076m3 interfaceC3076m3) {
        super(null);
        this.f1173b = interfaceC3076m3;
        this.f1174c = abstractC3147y2;
        this.f1172a = spliterator;
        this.f1175d = 0L;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.f1172a;
        long estimateSize = spliterator.estimateSize();
        long j = this.f1175d;
        if (j == 0) {
            j = AbstractC3030f.m466h(estimateSize);
            this.f1175d = j;
        }
        boolean m484d = EnumC3023d4.SHORT_CIRCUIT.m484d(this.f1174c.mo354r0());
        boolean z = false;
        InterfaceC3076m3 interfaceC3076m3 = this.f1173b;
        C3103r0 c3103r0 = this;
        while (true) {
            if (m484d && interfaceC3076m3.mo360o()) {
                break;
            } else if (estimateSize <= j || (trySplit = spliterator.trySplit()) == null) {
                break;
            } else {
                C3103r0 c3103r02 = new C3103r0(c3103r0, trySplit);
                c3103r0.addToPendingCount(1);
                if (z) {
                    spliterator = trySplit;
                } else {
                    C3103r0 c3103r03 = c3103r0;
                    c3103r0 = c3103r02;
                    c3103r02 = c3103r03;
                }
                z = !z;
                c3103r0.fork();
                c3103r0 = c3103r02;
                estimateSize = spliterator.estimateSize();
            }
        }
        c3103r0.f1174c.mo359m0(interfaceC3076m3, spliterator);
        c3103r0.f1172a = null;
        c3103r0.propagateCompletion();
    }
}
