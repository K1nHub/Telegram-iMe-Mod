package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.InterfaceC2908s;
/* renamed from: j$.util.stream.r0 */
/* loaded from: classes2.dex */
final class C3162r0 extends CountedCompleter {

    /* renamed from: a */
    private InterfaceC2908s f1123a;

    /* renamed from: b */
    private final InterfaceC3135m3 f1124b;

    /* renamed from: c */
    private final AbstractC3206y2 f1125c;

    /* renamed from: d */
    private long f1126d;

    C3162r0(C3162r0 c3162r0, InterfaceC2908s interfaceC2908s) {
        super(c3162r0);
        this.f1123a = interfaceC2908s;
        this.f1124b = c3162r0.f1124b;
        this.f1126d = c3162r0.f1126d;
        this.f1125c = c3162r0.f1125c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3162r0(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s, InterfaceC3135m3 interfaceC3135m3) {
        super(null);
        this.f1124b = interfaceC3135m3;
        this.f1125c = abstractC3206y2;
        this.f1123a = interfaceC2908s;
        this.f1126d = 0L;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2908s trySplit;
        InterfaceC2908s interfaceC2908s = this.f1123a;
        long estimateSize = interfaceC2908s.estimateSize();
        long j = this.f1126d;
        if (j == 0) {
            j = AbstractC3089f.m420h(estimateSize);
            this.f1126d = j;
        }
        boolean m438d = EnumC3082d4.SHORT_CIRCUIT.m438d(this.f1125c.mo308s0());
        boolean z = false;
        InterfaceC3135m3 interfaceC3135m3 = this.f1124b;
        C3162r0 c3162r0 = this;
        while (true) {
            if (m438d && interfaceC3135m3.mo314o()) {
                break;
            } else if (estimateSize <= j || (trySplit = interfaceC2908s.trySplit()) == null) {
                break;
            } else {
                C3162r0 c3162r02 = new C3162r0(c3162r0, trySplit);
                c3162r0.addToPendingCount(1);
                if (z) {
                    interfaceC2908s = trySplit;
                } else {
                    C3162r0 c3162r03 = c3162r0;
                    c3162r0 = c3162r02;
                    c3162r02 = c3162r03;
                }
                z = !z;
                c3162r0.fork();
                c3162r0 = c3162r02;
                estimateSize = interfaceC2908s.estimateSize();
            }
        }
        c3162r0.f1125c.mo313n0(interfaceC3135m3, interfaceC2908s);
        c3162r0.f1123a = null;
        c3162r0.propagateCompletion();
    }
}
