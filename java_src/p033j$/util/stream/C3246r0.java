package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.InterfaceC2992s;
/* renamed from: j$.util.stream.r0 */
/* loaded from: classes2.dex */
final class C3246r0 extends CountedCompleter {

    /* renamed from: a */
    private InterfaceC2992s f1132a;

    /* renamed from: b */
    private final InterfaceC3219m3 f1133b;

    /* renamed from: c */
    private final AbstractC3290y2 f1134c;

    /* renamed from: d */
    private long f1135d;

    C3246r0(C3246r0 c3246r0, InterfaceC2992s interfaceC2992s) {
        super(c3246r0);
        this.f1132a = interfaceC2992s;
        this.f1133b = c3246r0.f1133b;
        this.f1135d = c3246r0.f1135d;
        this.f1134c = c3246r0.f1134c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3246r0(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s, InterfaceC3219m3 interfaceC3219m3) {
        super(null);
        this.f1133b = interfaceC3219m3;
        this.f1134c = abstractC3290y2;
        this.f1132a = interfaceC2992s;
        this.f1135d = 0L;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2992s trySplit;
        InterfaceC2992s interfaceC2992s = this.f1132a;
        long estimateSize = interfaceC2992s.estimateSize();
        long j = this.f1135d;
        if (j == 0) {
            j = AbstractC3173f.m420h(estimateSize);
            this.f1135d = j;
        }
        boolean m438d = EnumC3166d4.SHORT_CIRCUIT.m438d(this.f1134c.mo308s0());
        boolean z = false;
        InterfaceC3219m3 interfaceC3219m3 = this.f1133b;
        C3246r0 c3246r0 = this;
        while (true) {
            if (m438d && interfaceC3219m3.mo314o()) {
                break;
            } else if (estimateSize <= j || (trySplit = interfaceC2992s.trySplit()) == null) {
                break;
            } else {
                C3246r0 c3246r02 = new C3246r0(c3246r0, trySplit);
                c3246r0.addToPendingCount(1);
                if (z) {
                    interfaceC2992s = trySplit;
                } else {
                    C3246r0 c3246r03 = c3246r0;
                    c3246r0 = c3246r02;
                    c3246r02 = c3246r03;
                }
                z = !z;
                c3246r0.fork();
                c3246r0 = c3246r02;
                estimateSize = interfaceC2992s.estimateSize();
            }
        }
        c3246r0.f1134c.mo313n0(interfaceC3219m3, interfaceC2992s);
        c3246r0.f1132a = null;
        c3246r0.propagateCompletion();
    }
}
