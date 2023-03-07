package p034j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2487s;
import p034j$.util.concurrent.ConcurrentHashMap;
/* renamed from: j$.util.stream.q0 */
/* loaded from: classes2.dex */
final class C2735q0 extends CountedCompleter {

    /* renamed from: h */
    public static final /* synthetic */ int f1015h = 0;

    /* renamed from: a */
    private final AbstractC2785y2 f1016a;

    /* renamed from: b */
    private InterfaceC2487s f1017b;

    /* renamed from: c */
    private final long f1018c;

    /* renamed from: d */
    private final ConcurrentHashMap f1019d;

    /* renamed from: e */
    private final InterfaceC2714m3 f1020e;

    /* renamed from: f */
    private final C2735q0 f1021f;

    /* renamed from: g */
    private InterfaceC2493A1 f1022g;

    C2735q0(C2735q0 c2735q0, InterfaceC2487s interfaceC2487s, C2735q0 c2735q02) {
        super(c2735q0);
        this.f1016a = c2735q0.f1016a;
        this.f1017b = interfaceC2487s;
        this.f1018c = c2735q0.f1018c;
        this.f1019d = c2735q0.f1019d;
        this.f1020e = c2735q0.f1020e;
        this.f1021f = c2735q02;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C2735q0(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s, InterfaceC2714m3 interfaceC2714m3) {
        super(null);
        this.f1016a = abstractC2785y2;
        this.f1017b = interfaceC2487s;
        this.f1018c = AbstractC2668f.m417h(interfaceC2487s.estimateSize());
        this.f1019d = new ConcurrentHashMap(Math.max(16, AbstractC2668f.f927g << 1));
        this.f1020e = interfaceC2714m3;
        this.f1021f = null;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        InterfaceC2487s trySplit;
        InterfaceC2487s interfaceC2487s = this.f1017b;
        long j = this.f1018c;
        boolean z = false;
        C2735q0 c2735q0 = this;
        while (interfaceC2487s.estimateSize() > j && (trySplit = interfaceC2487s.trySplit()) != null) {
            C2735q0 c2735q02 = new C2735q0(c2735q0, trySplit, c2735q0.f1021f);
            C2735q0 c2735q03 = new C2735q0(c2735q0, interfaceC2487s, c2735q02);
            c2735q0.addToPendingCount(1);
            c2735q03.addToPendingCount(1);
            c2735q0.f1019d.put(c2735q02, c2735q03);
            if (c2735q0.f1021f != null) {
                c2735q02.addToPendingCount(1);
                if (c2735q0.f1019d.replace(c2735q0.f1021f, c2735q0, c2735q02)) {
                    c2735q0.addToPendingCount(-1);
                } else {
                    c2735q02.addToPendingCount(-1);
                }
            }
            if (z) {
                interfaceC2487s = trySplit;
                c2735q0 = c2735q02;
                c2735q02 = c2735q03;
            } else {
                c2735q0 = c2735q03;
            }
            z = !z;
            c2735q02.fork();
        }
        if (c2735q0.getPendingCount() > 0) {
            C2729p0 c2729p0 = C2729p0.f1007a;
            AbstractC2785y2 abstractC2785y2 = c2735q0.f1016a;
            InterfaceC2748s1 mo304t0 = abstractC2785y2.mo304t0(abstractC2785y2.mo307q0(interfaceC2487s), c2729p0);
            AbstractC2650c abstractC2650c = (AbstractC2650c) c2735q0.f1016a;
            Objects.requireNonNull(abstractC2650c);
            Objects.requireNonNull(mo304t0);
            abstractC2650c.mo310n0(abstractC2650c.mo302v0(mo304t0), interfaceC2487s);
            c2735q0.f1022g = mo304t0.mo338a();
            c2735q0.f1017b = null;
        }
        c2735q0.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        InterfaceC2493A1 interfaceC2493A1 = this.f1022g;
        if (interfaceC2493A1 != null) {
            interfaceC2493A1.forEach(this.f1020e);
            this.f1022g = null;
        } else {
            InterfaceC2487s interfaceC2487s = this.f1017b;
            if (interfaceC2487s != null) {
                AbstractC2785y2 abstractC2785y2 = this.f1016a;
                InterfaceC2714m3 interfaceC2714m3 = this.f1020e;
                AbstractC2650c abstractC2650c = (AbstractC2650c) abstractC2785y2;
                Objects.requireNonNull(abstractC2650c);
                Objects.requireNonNull(interfaceC2714m3);
                abstractC2650c.mo310n0(abstractC2650c.mo302v0(interfaceC2714m3), interfaceC2487s);
                this.f1017b = null;
            }
        }
        C2735q0 c2735q0 = (C2735q0) this.f1019d.remove(this);
        if (c2735q0 != null) {
            c2735q0.tryComplete();
        }
    }
}
