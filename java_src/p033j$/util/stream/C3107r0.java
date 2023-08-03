package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.InterfaceC2853s;
/* renamed from: j$.util.stream.r0 */
/* loaded from: classes2.dex */
final class C3107r0 extends CountedCompleter {

    /* renamed from: a */
    private InterfaceC2853s f1122a;

    /* renamed from: b */
    private final InterfaceC3080m3 f1123b;

    /* renamed from: c */
    private final AbstractC3151y2 f1124c;

    /* renamed from: d */
    private long f1125d;

    C3107r0(C3107r0 c3107r0, InterfaceC2853s interfaceC2853s) {
        super(c3107r0);
        this.f1122a = interfaceC2853s;
        this.f1123b = c3107r0.f1123b;
        this.f1125d = c3107r0.f1125d;
        this.f1124c = c3107r0.f1124c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3107r0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, InterfaceC3080m3 interfaceC3080m3) {
        super(null);
        this.f1123b = interfaceC3080m3;
        this.f1124c = abstractC3151y2;
        this.f1122a = interfaceC2853s;
        this.f1125d = 0L;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2853s trySplit;
        InterfaceC2853s interfaceC2853s = this.f1122a;
        long estimateSize = interfaceC2853s.estimateSize();
        long j = this.f1125d;
        if (j == 0) {
            j = AbstractC3034f.m420h(estimateSize);
            this.f1125d = j;
        }
        boolean m438d = EnumC3027d4.SHORT_CIRCUIT.m438d(this.f1124c.mo308s0());
        boolean z = false;
        InterfaceC3080m3 interfaceC3080m3 = this.f1123b;
        C3107r0 c3107r0 = this;
        while (true) {
            if (m438d && interfaceC3080m3.mo314o()) {
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
        c3107r0.f1124c.mo313n0(interfaceC3080m3, interfaceC2853s);
        c3107r0.f1122a = null;
        c3107r0.propagateCompletion();
    }
}
