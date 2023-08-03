package p033j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p033j$.util.InterfaceC2853s;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.function.InterfaceC2827m;
/* renamed from: j$.util.stream.q0 */
/* loaded from: classes2.dex */
final class C3101q0 extends CountedCompleter {

    /* renamed from: h */
    public static final /* synthetic */ int f1109h = 0;

    /* renamed from: a */
    private final AbstractC3151y2 f1110a;

    /* renamed from: b */
    private InterfaceC2853s f1111b;

    /* renamed from: c */
    private final long f1112c;

    /* renamed from: d */
    private final ConcurrentHashMap f1113d;

    /* renamed from: e */
    private final InterfaceC3080m3 f1114e;

    /* renamed from: f */
    private final C3101q0 f1115f;

    /* renamed from: g */
    private InterfaceC2859A1 f1116g;

    C3101q0(C3101q0 c3101q0, InterfaceC2853s interfaceC2853s, C3101q0 c3101q02) {
        super(c3101q0);
        this.f1110a = c3101q0.f1110a;
        this.f1111b = interfaceC2853s;
        this.f1112c = c3101q0.f1112c;
        this.f1113d = c3101q0.f1113d;
        this.f1114e = c3101q0.f1114e;
        this.f1115f = c3101q02;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C3101q0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, InterfaceC3080m3 interfaceC3080m3) {
        super(null);
        this.f1110a = abstractC3151y2;
        this.f1111b = interfaceC2853s;
        this.f1112c = AbstractC3034f.m420h(interfaceC2853s.estimateSize());
        this.f1113d = new ConcurrentHashMap(Math.max(16, AbstractC3034f.f1021g << 1));
        this.f1114e = interfaceC3080m3;
        this.f1115f = null;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        InterfaceC2853s trySplit;
        InterfaceC2853s interfaceC2853s = this.f1111b;
        long j = this.f1112c;
        boolean z = false;
        C3101q0 c3101q0 = this;
        while (interfaceC2853s.estimateSize() > j && (trySplit = interfaceC2853s.trySplit()) != null) {
            C3101q0 c3101q02 = new C3101q0(c3101q0, trySplit, c3101q0.f1115f);
            C3101q0 c3101q03 = new C3101q0(c3101q0, interfaceC2853s, c3101q02);
            c3101q0.addToPendingCount(1);
            c3101q03.addToPendingCount(1);
            c3101q0.f1113d.put(c3101q02, c3101q03);
            if (c3101q0.f1115f != null) {
                c3101q02.addToPendingCount(1);
                if (c3101q0.f1113d.replace(c3101q0.f1115f, c3101q0, c3101q02)) {
                    c3101q0.addToPendingCount(-1);
                } else {
                    c3101q02.addToPendingCount(-1);
                }
            }
            if (z) {
                interfaceC2853s = trySplit;
                c3101q0 = c3101q02;
                c3101q02 = c3101q03;
            } else {
                c3101q0 = c3101q03;
            }
            z = !z;
            c3101q02.fork();
        }
        if (c3101q0.getPendingCount() > 0) {
            C3095p0 c3095p0 = new InterfaceC2827m() { // from class: j$.util.stream.p0
                @Override // p033j$.util.function.InterfaceC2827m
                public final Object apply(int i) {
                    int i2 = C3101q0.f1109h;
                    return new Object[i];
                }
            };
            AbstractC3151y2 abstractC3151y2 = c3101q0.f1110a;
            InterfaceC3114s1 mo307t0 = abstractC3151y2.mo307t0(abstractC3151y2.mo310q0(interfaceC2853s), c3095p0);
            AbstractC3016c abstractC3016c = (AbstractC3016c) c3101q0.f1110a;
            Objects.requireNonNull(abstractC3016c);
            Objects.requireNonNull(mo307t0);
            abstractC3016c.mo313n0(abstractC3016c.mo305v0(mo307t0), interfaceC2853s);
            c3101q0.f1116g = mo307t0.mo341a();
            c3101q0.f1111b = null;
        }
        c3101q0.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        InterfaceC2859A1 interfaceC2859A1 = this.f1116g;
        if (interfaceC2859A1 != null) {
            interfaceC2859A1.forEach(this.f1114e);
            this.f1116g = null;
        } else {
            InterfaceC2853s interfaceC2853s = this.f1111b;
            if (interfaceC2853s != null) {
                AbstractC3151y2 abstractC3151y2 = this.f1110a;
                InterfaceC3080m3 interfaceC3080m3 = this.f1114e;
                AbstractC3016c abstractC3016c = (AbstractC3016c) abstractC3151y2;
                Objects.requireNonNull(abstractC3016c);
                Objects.requireNonNull(interfaceC3080m3);
                abstractC3016c.mo313n0(abstractC3016c.mo305v0(interfaceC3080m3), interfaceC2853s);
                this.f1111b = null;
            }
        }
        C3101q0 c3101q0 = (C3101q0) this.f1113d.remove(this);
        if (c3101q0 != null) {
            c3101q0.tryComplete();
        }
    }
}
