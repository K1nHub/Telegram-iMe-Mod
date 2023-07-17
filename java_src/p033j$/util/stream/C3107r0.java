package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.InterfaceC2853s;
/* renamed from: j$.util.stream.r0 */
/* loaded from: classes2.dex */
final class C3107r0 extends CountedCompleter {

    /* renamed from: a */
    private InterfaceC2853s f1119a;

    /* renamed from: b */
    private final InterfaceC3080m3 f1120b;

    /* renamed from: c */
    private final AbstractC3151y2 f1121c;

    /* renamed from: d */
    private long f1122d;

    C3107r0(C3107r0 c3107r0, InterfaceC2853s interfaceC2853s) {
        super(c3107r0);
        this.f1119a = interfaceC2853s;
        this.f1120b = c3107r0.f1120b;
        this.f1122d = c3107r0.f1122d;
        this.f1121c = c3107r0.f1121c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3107r0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, InterfaceC3080m3 interfaceC3080m3) {
        super(null);
        this.f1120b = interfaceC3080m3;
        this.f1121c = abstractC3151y2;
        this.f1119a = interfaceC2853s;
        this.f1122d = 0L;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2853s trySplit;
        InterfaceC2853s interfaceC2853s = this.f1119a;
        long estimateSize = interfaceC2853s.estimateSize();
        long j = this.f1122d;
        if (j == 0) {
            j = AbstractC3034f.m402h(estimateSize);
            this.f1122d = j;
        }
        boolean m420d = EnumC3027d4.SHORT_CIRCUIT.m420d(this.f1121c.mo290s0());
        boolean z = false;
        InterfaceC3080m3 interfaceC3080m3 = this.f1120b;
        C3107r0 c3107r0 = this;
        while (true) {
            if (m420d && interfaceC3080m3.mo296o()) {
                break;
            } else if (estimateSize <= j || (trySplit = interfaceC2853s.trySplit()) == null) {
                break;
            } else {
                C3107r0 c3107r02 = new C3107r0(c3107r0, trySplit);
                c3107r0.addToPendingCount(1);
                if (z) {
                    interfaceC2853s = trySplit;
                } else {
                    C3107r0 c3107r03 = c3107r0;
                    c3107r0 = c3107r02;
                    c3107r02 = c3107r03;
                }
                z = !z;
                c3107r0.fork();
                c3107r0 = c3107r02;
                estimateSize = interfaceC2853s.estimateSize();
            }
        }
        c3107r0.f1121c.mo295n0(interfaceC3080m3, interfaceC2853s);
        c3107r0.f1119a = null;
        c3107r0.propagateCompletion();
    }
}
