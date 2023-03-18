package p034j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2611s;
import p034j$.util.concurrent.ConcurrentHashMap;
/* renamed from: j$.util.stream.q0 */
/* loaded from: classes2.dex */
final class C2859q0 extends CountedCompleter {

    /* renamed from: h */
    public static final /* synthetic */ int f1020h = 0;

    /* renamed from: a */
    private final AbstractC2909y2 f1021a;

    /* renamed from: b */
    private InterfaceC2611s f1022b;

    /* renamed from: c */
    private final long f1023c;

    /* renamed from: d */
    private final ConcurrentHashMap f1024d;

    /* renamed from: e */
    private final InterfaceC2838m3 f1025e;

    /* renamed from: f */
    private final C2859q0 f1026f;

    /* renamed from: g */
    private InterfaceC2617A1 f1027g;

    C2859q0(C2859q0 c2859q0, InterfaceC2611s interfaceC2611s, C2859q0 c2859q02) {
        super(c2859q0);
        this.f1021a = c2859q0.f1021a;
        this.f1022b = interfaceC2611s;
        this.f1023c = c2859q0.f1023c;
        this.f1024d = c2859q0.f1024d;
        this.f1025e = c2859q0.f1025e;
        this.f1026f = c2859q02;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C2859q0(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s, InterfaceC2838m3 interfaceC2838m3) {
        super(null);
        this.f1021a = abstractC2909y2;
        this.f1022b = interfaceC2611s;
        this.f1023c = AbstractC2792f.m417h(interfaceC2611s.estimateSize());
        this.f1024d = new ConcurrentHashMap(Math.max(16, AbstractC2792f.f932g << 1));
        this.f1025e = interfaceC2838m3;
        this.f1026f = null;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        InterfaceC2611s trySplit;
        InterfaceC2611s interfaceC2611s = this.f1022b;
        long j = this.f1023c;
        boolean z = false;
        C2859q0 c2859q0 = this;
        while (interfaceC2611s.estimateSize() > j && (trySplit = interfaceC2611s.trySplit()) != null) {
            C2859q0 c2859q02 = new C2859q0(c2859q0, trySplit, c2859q0.f1026f);
            C2859q0 c2859q03 = new C2859q0(c2859q0, interfaceC2611s, c2859q02);
            c2859q0.addToPendingCount(1);
            c2859q03.addToPendingCount(1);
            c2859q0.f1024d.put(c2859q02, c2859q03);
            if (c2859q0.f1026f != null) {
                c2859q02.addToPendingCount(1);
                if (c2859q0.f1024d.replace(c2859q0.f1026f, c2859q0, c2859q02)) {
                    c2859q0.addToPendingCount(-1);
                } else {
                    c2859q02.addToPendingCount(-1);
                }
            }
            if (z) {
                interfaceC2611s = trySplit;
                c2859q0 = c2859q02;
                c2859q02 = c2859q03;
            } else {
                c2859q0 = c2859q03;
            }
            z = !z;
            c2859q02.fork();
        }
        if (c2859q0.getPendingCount() > 0) {
            C2853p0 c2853p0 = C2853p0.f1012a;
            AbstractC2909y2 abstractC2909y2 = c2859q0.f1021a;
            InterfaceC2872s1 mo304t0 = abstractC2909y2.mo304t0(abstractC2909y2.mo307q0(interfaceC2611s), c2853p0);
            AbstractC2774c abstractC2774c = (AbstractC2774c) c2859q0.f1021a;
            Objects.requireNonNull(abstractC2774c);
            Objects.requireNonNull(mo304t0);
            abstractC2774c.mo310n0(abstractC2774c.mo302v0(mo304t0), interfaceC2611s);
            c2859q0.f1027g = mo304t0.mo338a();
            c2859q0.f1022b = null;
        }
        c2859q0.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        InterfaceC2617A1 interfaceC2617A1 = this.f1027g;
        if (interfaceC2617A1 != null) {
            interfaceC2617A1.forEach(this.f1025e);
            this.f1027g = null;
        } else {
            InterfaceC2611s interfaceC2611s = this.f1022b;
            if (interfaceC2611s != null) {
                AbstractC2909y2 abstractC2909y2 = this.f1021a;
                InterfaceC2838m3 interfaceC2838m3 = this.f1025e;
                AbstractC2774c abstractC2774c = (AbstractC2774c) abstractC2909y2;
                Objects.requireNonNull(abstractC2774c);
                Objects.requireNonNull(interfaceC2838m3);
                abstractC2774c.mo310n0(abstractC2774c.mo302v0(interfaceC2838m3), interfaceC2611s);
                this.f1022b = null;
            }
        }
        C2859q0 c2859q0 = (C2859q0) this.f1024d.remove(this);
        if (c2859q0 != null) {
            c2859q0.tryComplete();
        }
    }
}
