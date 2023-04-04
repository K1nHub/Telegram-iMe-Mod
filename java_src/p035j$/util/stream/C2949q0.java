package p035j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p035j$.util.InterfaceC2701s;
import p035j$.util.concurrent.ConcurrentHashMap;
/* renamed from: j$.util.stream.q0 */
/* loaded from: classes2.dex */
final class C2949q0 extends CountedCompleter {

    /* renamed from: h */
    public static final /* synthetic */ int f1026h = 0;

    /* renamed from: a */
    private final AbstractC2999y2 f1027a;

    /* renamed from: b */
    private InterfaceC2701s f1028b;

    /* renamed from: c */
    private final long f1029c;

    /* renamed from: d */
    private final ConcurrentHashMap f1030d;

    /* renamed from: e */
    private final InterfaceC2928m3 f1031e;

    /* renamed from: f */
    private final C2949q0 f1032f;

    /* renamed from: g */
    private InterfaceC2707A1 f1033g;

    C2949q0(C2949q0 c2949q0, InterfaceC2701s interfaceC2701s, C2949q0 c2949q02) {
        super(c2949q0);
        this.f1027a = c2949q0.f1027a;
        this.f1028b = interfaceC2701s;
        this.f1029c = c2949q0.f1029c;
        this.f1030d = c2949q0.f1030d;
        this.f1031e = c2949q0.f1031e;
        this.f1032f = c2949q02;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C2949q0(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s, InterfaceC2928m3 interfaceC2928m3) {
        super(null);
        this.f1027a = abstractC2999y2;
        this.f1028b = interfaceC2701s;
        this.f1029c = AbstractC2882f.m411h(interfaceC2701s.estimateSize());
        this.f1030d = new ConcurrentHashMap(Math.max(16, AbstractC2882f.f938g << 1));
        this.f1031e = interfaceC2928m3;
        this.f1032f = null;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        InterfaceC2701s trySplit;
        InterfaceC2701s interfaceC2701s = this.f1028b;
        long j = this.f1029c;
        boolean z = false;
        C2949q0 c2949q0 = this;
        while (interfaceC2701s.estimateSize() > j && (trySplit = interfaceC2701s.trySplit()) != null) {
            C2949q0 c2949q02 = new C2949q0(c2949q0, trySplit, c2949q0.f1032f);
            C2949q0 c2949q03 = new C2949q0(c2949q0, interfaceC2701s, c2949q02);
            c2949q0.addToPendingCount(1);
            c2949q03.addToPendingCount(1);
            c2949q0.f1030d.put(c2949q02, c2949q03);
            if (c2949q0.f1032f != null) {
                c2949q02.addToPendingCount(1);
                if (c2949q0.f1030d.replace(c2949q0.f1032f, c2949q0, c2949q02)) {
                    c2949q0.addToPendingCount(-1);
                } else {
                    c2949q02.addToPendingCount(-1);
                }
            }
            if (z) {
                interfaceC2701s = trySplit;
                c2949q0 = c2949q02;
                c2949q02 = c2949q03;
            } else {
                c2949q0 = c2949q03;
            }
            z = !z;
            c2949q02.fork();
        }
        if (c2949q0.getPendingCount() > 0) {
            C2943p0 c2943p0 = C2943p0.f1018a;
            AbstractC2999y2 abstractC2999y2 = c2949q0.f1027a;
            InterfaceC2962s1 mo298t0 = abstractC2999y2.mo298t0(abstractC2999y2.mo301q0(interfaceC2701s), c2943p0);
            AbstractC2864c abstractC2864c = (AbstractC2864c) c2949q0.f1027a;
            Objects.requireNonNull(abstractC2864c);
            Objects.requireNonNull(mo298t0);
            abstractC2864c.mo304n0(abstractC2864c.mo296v0(mo298t0), interfaceC2701s);
            c2949q0.f1033g = mo298t0.mo332a();
            c2949q0.f1028b = null;
        }
        c2949q0.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        InterfaceC2707A1 interfaceC2707A1 = this.f1033g;
        if (interfaceC2707A1 != null) {
            interfaceC2707A1.forEach(this.f1031e);
            this.f1033g = null;
        } else {
            InterfaceC2701s interfaceC2701s = this.f1028b;
            if (interfaceC2701s != null) {
                AbstractC2999y2 abstractC2999y2 = this.f1027a;
                InterfaceC2928m3 interfaceC2928m3 = this.f1031e;
                AbstractC2864c abstractC2864c = (AbstractC2864c) abstractC2999y2;
                Objects.requireNonNull(abstractC2864c);
                Objects.requireNonNull(interfaceC2928m3);
                abstractC2864c.mo304n0(abstractC2864c.mo296v0(interfaceC2928m3), interfaceC2701s);
                this.f1028b = null;
            }
        }
        C2949q0 c2949q0 = (C2949q0) this.f1030d.remove(this);
        if (c2949q0 != null) {
            c2949q0.tryComplete();
        }
    }
}
