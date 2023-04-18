package p034j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2688s;
import p034j$.util.concurrent.ConcurrentHashMap;
/* renamed from: j$.util.stream.q0 */
/* loaded from: classes2.dex */
final class C2936q0 extends CountedCompleter {

    /* renamed from: h */
    public static final /* synthetic */ int f1021h = 0;

    /* renamed from: a */
    private final AbstractC2986y2 f1022a;

    /* renamed from: b */
    private InterfaceC2688s f1023b;

    /* renamed from: c */
    private final long f1024c;

    /* renamed from: d */
    private final ConcurrentHashMap f1025d;

    /* renamed from: e */
    private final InterfaceC2915m3 f1026e;

    /* renamed from: f */
    private final C2936q0 f1027f;

    /* renamed from: g */
    private InterfaceC2694A1 f1028g;

    C2936q0(C2936q0 c2936q0, InterfaceC2688s interfaceC2688s, C2936q0 c2936q02) {
        super(c2936q0);
        this.f1022a = c2936q0.f1022a;
        this.f1023b = interfaceC2688s;
        this.f1024c = c2936q0.f1024c;
        this.f1025d = c2936q0.f1025d;
        this.f1026e = c2936q0.f1026e;
        this.f1027f = c2936q02;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C2936q0(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s, InterfaceC2915m3 interfaceC2915m3) {
        super(null);
        this.f1022a = abstractC2986y2;
        this.f1023b = interfaceC2688s;
        this.f1024c = AbstractC2869f.m397h(interfaceC2688s.estimateSize());
        this.f1025d = new ConcurrentHashMap(Math.max(16, AbstractC2869f.f933g << 1));
        this.f1026e = interfaceC2915m3;
        this.f1027f = null;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        InterfaceC2688s trySplit;
        InterfaceC2688s interfaceC2688s = this.f1023b;
        long j = this.f1024c;
        boolean z = false;
        C2936q0 c2936q0 = this;
        while (interfaceC2688s.estimateSize() > j && (trySplit = interfaceC2688s.trySplit()) != null) {
            C2936q0 c2936q02 = new C2936q0(c2936q0, trySplit, c2936q0.f1027f);
            C2936q0 c2936q03 = new C2936q0(c2936q0, interfaceC2688s, c2936q02);
            c2936q0.addToPendingCount(1);
            c2936q03.addToPendingCount(1);
            c2936q0.f1025d.put(c2936q02, c2936q03);
            if (c2936q0.f1027f != null) {
                c2936q02.addToPendingCount(1);
                if (c2936q0.f1025d.replace(c2936q0.f1027f, c2936q0, c2936q02)) {
                    c2936q0.addToPendingCount(-1);
                } else {
                    c2936q02.addToPendingCount(-1);
                }
            }
            if (z) {
                interfaceC2688s = trySplit;
                c2936q0 = c2936q02;
                c2936q02 = c2936q03;
            } else {
                c2936q0 = c2936q03;
            }
            z = !z;
            c2936q02.fork();
        }
        if (c2936q0.getPendingCount() > 0) {
            C2930p0 c2930p0 = C2930p0.f1013a;
            AbstractC2986y2 abstractC2986y2 = c2936q0.f1022a;
            InterfaceC2949s1 mo284t0 = abstractC2986y2.mo284t0(abstractC2986y2.mo287q0(interfaceC2688s), c2930p0);
            AbstractC2851c abstractC2851c = (AbstractC2851c) c2936q0.f1022a;
            Objects.requireNonNull(abstractC2851c);
            Objects.requireNonNull(mo284t0);
            abstractC2851c.mo290n0(abstractC2851c.mo282v0(mo284t0), interfaceC2688s);
            c2936q0.f1028g = mo284t0.mo318a();
            c2936q0.f1023b = null;
        }
        c2936q0.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        InterfaceC2694A1 interfaceC2694A1 = this.f1028g;
        if (interfaceC2694A1 != null) {
            interfaceC2694A1.forEach(this.f1026e);
            this.f1028g = null;
        } else {
            InterfaceC2688s interfaceC2688s = this.f1023b;
            if (interfaceC2688s != null) {
                AbstractC2986y2 abstractC2986y2 = this.f1022a;
                InterfaceC2915m3 interfaceC2915m3 = this.f1026e;
                AbstractC2851c abstractC2851c = (AbstractC2851c) abstractC2986y2;
                Objects.requireNonNull(abstractC2851c);
                Objects.requireNonNull(interfaceC2915m3);
                abstractC2851c.mo290n0(abstractC2851c.mo282v0(interfaceC2915m3), interfaceC2688s);
                this.f1023b = null;
            }
        }
        C2936q0 c2936q0 = (C2936q0) this.f1025d.remove(this);
        if (c2936q0 != null) {
            c2936q0.tryComplete();
        }
    }
}
