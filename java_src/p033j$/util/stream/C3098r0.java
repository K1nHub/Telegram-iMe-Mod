package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.r0 */
/* loaded from: classes2.dex */
final class C3098r0 extends CountedCompleter {

    /* renamed from: a */
    private Spliterator f1172a;

    /* renamed from: b */
    private final InterfaceC3071m3 f1173b;

    /* renamed from: c */
    private final AbstractC3142y2 f1174c;

    /* renamed from: d */
    private long f1175d;

    C3098r0(C3098r0 c3098r0, Spliterator spliterator) {
        super(c3098r0);
        this.f1172a = spliterator;
        this.f1173b = c3098r0.f1173b;
        this.f1175d = c3098r0.f1175d;
        this.f1174c = c3098r0.f1174c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3098r0(AbstractC3142y2 abstractC3142y2, Spliterator spliterator, InterfaceC3071m3 interfaceC3071m3) {
        super(null);
        this.f1173b = interfaceC3071m3;
        this.f1174c = abstractC3142y2;
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
            j = AbstractC3025f.m469h(estimateSize);
            this.f1175d = j;
        }
        boolean m487d = EnumC3018d4.SHORT_CIRCUIT.m487d(this.f1174c.mo357r0());
        boolean z = false;
        InterfaceC3071m3 interfaceC3071m3 = this.f1173b;
        C3098r0 c3098r0 = this;
        while (true) {
            if (m487d && interfaceC3071m3.mo363o()) {
                break;
            } else if (estimateSize <= j || (trySplit = spliterator.trySplit()) == null) {
                break;
            } else {
                C3098r0 c3098r02 = new C3098r0(c3098r0, trySplit);
                c3098r0.addToPendingCount(1);
                if (z) {
                    spliterator = trySplit;
                } else {
                    C3098r0 c3098r03 = c3098r0;
                    c3098r0 = c3098r02;
                    c3098r02 = c3098r03;
                }
                z = !z;
                c3098r0.fork();
                c3098r0 = c3098r02;
                estimateSize = spliterator.estimateSize();
            }
        }
        c3098r0.f1174c.mo362m0(interfaceC3071m3, spliterator);
        c3098r0.f1172a = null;
        c3098r0.propagateCompletion();
    }
}
