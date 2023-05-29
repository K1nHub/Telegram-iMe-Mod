package p034j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2727s;
import p034j$.util.concurrent.ConcurrentHashMap;
/* renamed from: j$.util.stream.q0 */
/* loaded from: classes2.dex */
final class C2975q0 extends CountedCompleter {

    /* renamed from: h */
    public static final /* synthetic */ int f1024h = 0;

    /* renamed from: a */
    private final AbstractC3025y2 f1025a;

    /* renamed from: b */
    private InterfaceC2727s f1026b;

    /* renamed from: c */
    private final long f1027c;

    /* renamed from: d */
    private final ConcurrentHashMap f1028d;

    /* renamed from: e */
    private final InterfaceC2954m3 f1029e;

    /* renamed from: f */
    private final C2975q0 f1030f;

    /* renamed from: g */
    private InterfaceC2733A1 f1031g;

    C2975q0(C2975q0 c2975q0, InterfaceC2727s interfaceC2727s, C2975q0 c2975q02) {
        super(c2975q0);
        this.f1025a = c2975q0.f1025a;
        this.f1026b = interfaceC2727s;
        this.f1027c = c2975q0.f1027c;
        this.f1028d = c2975q0.f1028d;
        this.f1029e = c2975q0.f1029e;
        this.f1030f = c2975q02;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C2975q0(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s, InterfaceC2954m3 interfaceC2954m3) {
        super(null);
        this.f1025a = abstractC3025y2;
        this.f1026b = interfaceC2727s;
        this.f1027c = AbstractC2908f.m402h(interfaceC2727s.estimateSize());
        this.f1028d = new ConcurrentHashMap(Math.max(16, AbstractC2908f.f936g << 1));
        this.f1029e = interfaceC2954m3;
        this.f1030f = null;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        InterfaceC2727s trySplit;
        InterfaceC2727s interfaceC2727s = this.f1026b;
        long j = this.f1027c;
        boolean z = false;
        C2975q0 c2975q0 = this;
        while (interfaceC2727s.estimateSize() > j && (trySplit = interfaceC2727s.trySplit()) != null) {
            C2975q0 c2975q02 = new C2975q0(c2975q0, trySplit, c2975q0.f1030f);
            C2975q0 c2975q03 = new C2975q0(c2975q0, interfaceC2727s, c2975q02);
            c2975q0.addToPendingCount(1);
            c2975q03.addToPendingCount(1);
            c2975q0.f1028d.put(c2975q02, c2975q03);
            if (c2975q0.f1030f != null) {
                c2975q02.addToPendingCount(1);
                if (c2975q0.f1028d.replace(c2975q0.f1030f, c2975q0, c2975q02)) {
                    c2975q0.addToPendingCount(-1);
                } else {
                    c2975q02.addToPendingCount(-1);
                }
            }
            if (z) {
                interfaceC2727s = trySplit;
                c2975q0 = c2975q02;
                c2975q02 = c2975q03;
            } else {
                c2975q0 = c2975q03;
            }
            z = !z;
            c2975q02.fork();
        }
        if (c2975q0.getPendingCount() > 0) {
            C2969p0 c2969p0 = C2969p0.f1016a;
            AbstractC3025y2 abstractC3025y2 = c2975q0.f1025a;
            InterfaceC2988s1 mo289t0 = abstractC3025y2.mo289t0(abstractC3025y2.mo292q0(interfaceC2727s), c2969p0);
            AbstractC2890c abstractC2890c = (AbstractC2890c) c2975q0.f1025a;
            Objects.requireNonNull(abstractC2890c);
            Objects.requireNonNull(mo289t0);
            abstractC2890c.mo295n0(abstractC2890c.mo287v0(mo289t0), interfaceC2727s);
            c2975q0.f1031g = mo289t0.mo323a();
            c2975q0.f1026b = null;
        }
        c2975q0.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        InterfaceC2733A1 interfaceC2733A1 = this.f1031g;
        if (interfaceC2733A1 != null) {
            interfaceC2733A1.forEach(this.f1029e);
            this.f1031g = null;
        } else {
            InterfaceC2727s interfaceC2727s = this.f1026b;
            if (interfaceC2727s != null) {
                AbstractC3025y2 abstractC3025y2 = this.f1025a;
                InterfaceC2954m3 interfaceC2954m3 = this.f1029e;
                AbstractC2890c abstractC2890c = (AbstractC2890c) abstractC3025y2;
                Objects.requireNonNull(abstractC2890c);
                Objects.requireNonNull(interfaceC2954m3);
                abstractC2890c.mo295n0(abstractC2890c.mo287v0(interfaceC2954m3), interfaceC2727s);
                this.f1026b = null;
            }
        }
        C2975q0 c2975q0 = (C2975q0) this.f1028d.remove(this);
        if (c2975q0 != null) {
            c2975q0.tryComplete();
        }
    }
}
