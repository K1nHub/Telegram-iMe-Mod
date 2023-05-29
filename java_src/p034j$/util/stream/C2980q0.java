package p034j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2732s;
import p034j$.util.concurrent.ConcurrentHashMap;
/* renamed from: j$.util.stream.q0 */
/* loaded from: classes2.dex */
final class C2980q0 extends CountedCompleter {

    /* renamed from: h */
    public static final /* synthetic */ int f1024h = 0;

    /* renamed from: a */
    private final AbstractC3030y2 f1025a;

    /* renamed from: b */
    private InterfaceC2732s f1026b;

    /* renamed from: c */
    private final long f1027c;

    /* renamed from: d */
    private final ConcurrentHashMap f1028d;

    /* renamed from: e */
    private final InterfaceC2959m3 f1029e;

    /* renamed from: f */
    private final C2980q0 f1030f;

    /* renamed from: g */
    private InterfaceC2738A1 f1031g;

    C2980q0(C2980q0 c2980q0, InterfaceC2732s interfaceC2732s, C2980q0 c2980q02) {
        super(c2980q0);
        this.f1025a = c2980q0.f1025a;
        this.f1026b = interfaceC2732s;
        this.f1027c = c2980q0.f1027c;
        this.f1028d = c2980q0.f1028d;
        this.f1029e = c2980q0.f1029e;
        this.f1030f = c2980q02;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C2980q0(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s, InterfaceC2959m3 interfaceC2959m3) {
        super(null);
        this.f1025a = abstractC3030y2;
        this.f1026b = interfaceC2732s;
        this.f1027c = AbstractC2913f.m402h(interfaceC2732s.estimateSize());
        this.f1028d = new ConcurrentHashMap(Math.max(16, AbstractC2913f.f936g << 1));
        this.f1029e = interfaceC2959m3;
        this.f1030f = null;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        InterfaceC2732s trySplit;
        InterfaceC2732s interfaceC2732s = this.f1026b;
        long j = this.f1027c;
        boolean z = false;
        C2980q0 c2980q0 = this;
        while (interfaceC2732s.estimateSize() > j && (trySplit = interfaceC2732s.trySplit()) != null) {
            C2980q0 c2980q02 = new C2980q0(c2980q0, trySplit, c2980q0.f1030f);
            C2980q0 c2980q03 = new C2980q0(c2980q0, interfaceC2732s, c2980q02);
            c2980q0.addToPendingCount(1);
            c2980q03.addToPendingCount(1);
            c2980q0.f1028d.put(c2980q02, c2980q03);
            if (c2980q0.f1030f != null) {
                c2980q02.addToPendingCount(1);
                if (c2980q0.f1028d.replace(c2980q0.f1030f, c2980q0, c2980q02)) {
                    c2980q0.addToPendingCount(-1);
                } else {
                    c2980q02.addToPendingCount(-1);
                }
            }
            if (z) {
                interfaceC2732s = trySplit;
                c2980q0 = c2980q02;
                c2980q02 = c2980q03;
            } else {
                c2980q0 = c2980q03;
            }
            z = !z;
            c2980q02.fork();
        }
        if (c2980q0.getPendingCount() > 0) {
            C2974p0 c2974p0 = C2974p0.f1016a;
            AbstractC3030y2 abstractC3030y2 = c2980q0.f1025a;
            InterfaceC2993s1 mo289t0 = abstractC3030y2.mo289t0(abstractC3030y2.mo292q0(interfaceC2732s), c2974p0);
            AbstractC2895c abstractC2895c = (AbstractC2895c) c2980q0.f1025a;
            Objects.requireNonNull(abstractC2895c);
            Objects.requireNonNull(mo289t0);
            abstractC2895c.mo295n0(abstractC2895c.mo287v0(mo289t0), interfaceC2732s);
            c2980q0.f1031g = mo289t0.mo323a();
            c2980q0.f1026b = null;
        }
        c2980q0.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        InterfaceC2738A1 interfaceC2738A1 = this.f1031g;
        if (interfaceC2738A1 != null) {
            interfaceC2738A1.forEach(this.f1029e);
            this.f1031g = null;
        } else {
            InterfaceC2732s interfaceC2732s = this.f1026b;
            if (interfaceC2732s != null) {
                AbstractC3030y2 abstractC3030y2 = this.f1025a;
                InterfaceC2959m3 interfaceC2959m3 = this.f1029e;
                AbstractC2895c abstractC2895c = (AbstractC2895c) abstractC3030y2;
                Objects.requireNonNull(abstractC2895c);
                Objects.requireNonNull(interfaceC2959m3);
                abstractC2895c.mo295n0(abstractC2895c.mo287v0(interfaceC2959m3), interfaceC2732s);
                this.f1026b = null;
            }
        }
        C2980q0 c2980q0 = (C2980q0) this.f1028d.remove(this);
        if (c2980q0 != null) {
            c2980q0.tryComplete();
        }
    }
}
