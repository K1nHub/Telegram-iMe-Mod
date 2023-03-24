package p034j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2625s;
import p034j$.util.concurrent.ConcurrentHashMap;
/* renamed from: j$.util.stream.q0 */
/* loaded from: classes2.dex */
final class C2873q0 extends CountedCompleter {

    /* renamed from: h */
    public static final /* synthetic */ int f1021h = 0;

    /* renamed from: a */
    private final AbstractC2923y2 f1022a;

    /* renamed from: b */
    private InterfaceC2625s f1023b;

    /* renamed from: c */
    private final long f1024c;

    /* renamed from: d */
    private final ConcurrentHashMap f1025d;

    /* renamed from: e */
    private final InterfaceC2852m3 f1026e;

    /* renamed from: f */
    private final C2873q0 f1027f;

    /* renamed from: g */
    private InterfaceC2631A1 f1028g;

    C2873q0(C2873q0 c2873q0, InterfaceC2625s interfaceC2625s, C2873q0 c2873q02) {
        super(c2873q0);
        this.f1022a = c2873q0.f1022a;
        this.f1023b = interfaceC2625s;
        this.f1024c = c2873q0.f1024c;
        this.f1025d = c2873q0.f1025d;
        this.f1026e = c2873q0.f1026e;
        this.f1027f = c2873q02;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C2873q0(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s, InterfaceC2852m3 interfaceC2852m3) {
        super(null);
        this.f1022a = abstractC2923y2;
        this.f1023b = interfaceC2625s;
        this.f1024c = AbstractC2806f.m416h(interfaceC2625s.estimateSize());
        this.f1025d = new ConcurrentHashMap(Math.max(16, AbstractC2806f.f933g << 1));
        this.f1026e = interfaceC2852m3;
        this.f1027f = null;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        InterfaceC2625s trySplit;
        InterfaceC2625s interfaceC2625s = this.f1023b;
        long j = this.f1024c;
        boolean z = false;
        C2873q0 c2873q0 = this;
        while (interfaceC2625s.estimateSize() > j && (trySplit = interfaceC2625s.trySplit()) != null) {
            C2873q0 c2873q02 = new C2873q0(c2873q0, trySplit, c2873q0.f1027f);
            C2873q0 c2873q03 = new C2873q0(c2873q0, interfaceC2625s, c2873q02);
            c2873q0.addToPendingCount(1);
            c2873q03.addToPendingCount(1);
            c2873q0.f1025d.put(c2873q02, c2873q03);
            if (c2873q0.f1027f != null) {
                c2873q02.addToPendingCount(1);
                if (c2873q0.f1025d.replace(c2873q0.f1027f, c2873q0, c2873q02)) {
                    c2873q0.addToPendingCount(-1);
                } else {
                    c2873q02.addToPendingCount(-1);
                }
            }
            if (z) {
                interfaceC2625s = trySplit;
                c2873q0 = c2873q02;
                c2873q02 = c2873q03;
            } else {
                c2873q0 = c2873q03;
            }
            z = !z;
            c2873q02.fork();
        }
        if (c2873q0.getPendingCount() > 0) {
            C2867p0 c2867p0 = C2867p0.f1013a;
            AbstractC2923y2 abstractC2923y2 = c2873q0.f1022a;
            InterfaceC2886s1 mo303t0 = abstractC2923y2.mo303t0(abstractC2923y2.mo306q0(interfaceC2625s), c2867p0);
            AbstractC2788c abstractC2788c = (AbstractC2788c) c2873q0.f1022a;
            Objects.requireNonNull(abstractC2788c);
            Objects.requireNonNull(mo303t0);
            abstractC2788c.mo309n0(abstractC2788c.mo301v0(mo303t0), interfaceC2625s);
            c2873q0.f1028g = mo303t0.mo337a();
            c2873q0.f1023b = null;
        }
        c2873q0.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        InterfaceC2631A1 interfaceC2631A1 = this.f1028g;
        if (interfaceC2631A1 != null) {
            interfaceC2631A1.forEach(this.f1026e);
            this.f1028g = null;
        } else {
            InterfaceC2625s interfaceC2625s = this.f1023b;
            if (interfaceC2625s != null) {
                AbstractC2923y2 abstractC2923y2 = this.f1022a;
                InterfaceC2852m3 interfaceC2852m3 = this.f1026e;
                AbstractC2788c abstractC2788c = (AbstractC2788c) abstractC2923y2;
                Objects.requireNonNull(abstractC2788c);
                Objects.requireNonNull(interfaceC2852m3);
                abstractC2788c.mo309n0(abstractC2788c.mo301v0(interfaceC2852m3), interfaceC2625s);
                this.f1023b = null;
            }
        }
        C2873q0 c2873q0 = (C2873q0) this.f1025d.remove(this);
        if (c2873q0 != null) {
            c2873q0.tryComplete();
        }
    }
}
