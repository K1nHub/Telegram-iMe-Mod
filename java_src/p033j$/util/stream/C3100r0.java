package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.r0 */
/* loaded from: classes2.dex */
final class C3100r0 extends CountedCompleter {

    /* renamed from: a */
    private Spliterator f1172a;

    /* renamed from: b */
    private final InterfaceC3073m3 f1173b;

    /* renamed from: c */
    private final AbstractC3144y2 f1174c;

    /* renamed from: d */
    private long f1175d;

    C3100r0(C3100r0 c3100r0, Spliterator spliterator) {
        super(c3100r0);
        this.f1172a = spliterator;
        this.f1173b = c3100r0.f1173b;
        this.f1175d = c3100r0.f1175d;
        this.f1174c = c3100r0.f1174c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3100r0(AbstractC3144y2 abstractC3144y2, Spliterator spliterator, InterfaceC3073m3 interfaceC3073m3) {
        super(null);
        this.f1173b = interfaceC3073m3;
        this.f1174c = abstractC3144y2;
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
            j = AbstractC3027f.m466h(estimateSize);
            this.f1175d = j;
        }
        boolean m484d = EnumC3020d4.SHORT_CIRCUIT.m484d(this.f1174c.mo354r0());
        boolean z = false;
        InterfaceC3073m3 interfaceC3073m3 = this.f1173b;
        C3100r0 c3100r0 = this;
        while (true) {
            if (m484d && interfaceC3073m3.mo360o()) {
                break;
            } else if (estimateSize <= j || (trySplit = spliterator.trySplit()) == null) {
                break;
            } else {
                C3100r0 c3100r02 = new C3100r0(c3100r0, trySplit);
                c3100r0.addToPendingCount(1);
                if (z) {
                    spliterator = trySplit;
                } else {
                    C3100r0 c3100r03 = c3100r0;
                    c3100r0 = c3100r02;
                    c3100r02 = c3100r03;
                }
                z = !z;
                c3100r0.fork();
                c3100r0 = c3100r02;
                estimateSize = spliterator.estimateSize();
            }
        }
        c3100r0.f1174c.mo359m0(interfaceC3073m3, spliterator);
        c3100r0.f1172a = null;
        c3100r0.propagateCompletion();
    }
}
