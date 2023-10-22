package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.r0 */
/* loaded from: classes2.dex */
final class C3099r0 extends CountedCompleter {

    /* renamed from: a */
    private Spliterator f1172a;

    /* renamed from: b */
    private final InterfaceC3072m3 f1173b;

    /* renamed from: c */
    private final AbstractC3143y2 f1174c;

    /* renamed from: d */
    private long f1175d;

    C3099r0(C3099r0 c3099r0, Spliterator spliterator) {
        super(c3099r0);
        this.f1172a = spliterator;
        this.f1173b = c3099r0.f1173b;
        this.f1175d = c3099r0.f1175d;
        this.f1174c = c3099r0.f1174c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3099r0(AbstractC3143y2 abstractC3143y2, Spliterator spliterator, InterfaceC3072m3 interfaceC3072m3) {
        super(null);
        this.f1173b = interfaceC3072m3;
        this.f1174c = abstractC3143y2;
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
            j = AbstractC3026f.m465h(estimateSize);
            this.f1175d = j;
        }
        boolean m483d = EnumC3019d4.SHORT_CIRCUIT.m483d(this.f1174c.mo353r0());
        boolean z = false;
        InterfaceC3072m3 interfaceC3072m3 = this.f1173b;
        C3099r0 c3099r0 = this;
        while (true) {
            if (m483d && interfaceC3072m3.mo359o()) {
                break;
            } else if (estimateSize <= j || (trySplit = spliterator.trySplit()) == null) {
                break;
            } else {
                C3099r0 c3099r02 = new C3099r0(c3099r0, trySplit);
                c3099r0.addToPendingCount(1);
                if (z) {
                    spliterator = trySplit;
                } else {
                    C3099r0 c3099r03 = c3099r0;
                    c3099r0 = c3099r02;
                    c3099r02 = c3099r03;
                }
                z = !z;
                c3099r0.fork();
                c3099r0 = c3099r02;
                estimateSize = spliterator.estimateSize();
            }
        }
        c3099r0.f1174c.mo358m0(interfaceC3072m3, spliterator);
        c3099r0.f1172a = null;
        c3099r0.propagateCompletion();
    }
}
