package p033j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p033j$.util.InterfaceC2908s;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.function.InterfaceC2882m;
/* renamed from: j$.util.stream.q0 */
/* loaded from: classes2.dex */
final class C3156q0 extends CountedCompleter {

    /* renamed from: h */
    public static final /* synthetic */ int f1110h = 0;

    /* renamed from: a */
    private final AbstractC3206y2 f1111a;

    /* renamed from: b */
    private InterfaceC2908s f1112b;

    /* renamed from: c */
    private final long f1113c;

    /* renamed from: d */
    private final ConcurrentHashMap f1114d;

    /* renamed from: e */
    private final InterfaceC3135m3 f1115e;

    /* renamed from: f */
    private final C3156q0 f1116f;

    /* renamed from: g */
    private InterfaceC2914A1 f1117g;

    C3156q0(C3156q0 c3156q0, InterfaceC2908s interfaceC2908s, C3156q0 c3156q02) {
        super(c3156q0);
        this.f1111a = c3156q0.f1111a;
        this.f1112b = interfaceC2908s;
        this.f1113c = c3156q0.f1113c;
        this.f1114d = c3156q0.f1114d;
        this.f1115e = c3156q0.f1115e;
        this.f1116f = c3156q02;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C3156q0(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s, InterfaceC3135m3 interfaceC3135m3) {
        super(null);
        this.f1111a = abstractC3206y2;
        this.f1112b = interfaceC2908s;
        this.f1113c = AbstractC3089f.m420h(interfaceC2908s.estimateSize());
        this.f1114d = new ConcurrentHashMap(Math.max(16, AbstractC3089f.f1022g << 1));
        this.f1115e = interfaceC3135m3;
        this.f1116f = null;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        InterfaceC2908s trySplit;
        InterfaceC2908s interfaceC2908s = this.f1112b;
        long j = this.f1113c;
        boolean z = false;
        C3156q0 c3156q0 = this;
        while (interfaceC2908s.estimateSize() > j && (trySplit = interfaceC2908s.trySplit()) != null) {
            C3156q0 c3156q02 = new C3156q0(c3156q0, trySplit, c3156q0.f1116f);
            C3156q0 c3156q03 = new C3156q0(c3156q0, interfaceC2908s, c3156q02);
            c3156q0.addToPendingCount(1);
            c3156q03.addToPendingCount(1);
            c3156q0.f1114d.put(c3156q02, c3156q03);
            if (c3156q0.f1116f != null) {
                c3156q02.addToPendingCount(1);
                if (c3156q0.f1114d.replace(c3156q0.f1116f, c3156q0, c3156q02)) {
                    c3156q0.addToPendingCount(-1);
                } else {
                    c3156q02.addToPendingCount(-1);
                }
            }
            if (z) {
                interfaceC2908s = trySplit;
                c3156q0 = c3156q02;
                c3156q02 = c3156q03;
            } else {
                c3156q0 = c3156q03;
            }
            z = !z;
            c3156q02.fork();
        }
        if (c3156q0.getPendingCount() > 0) {
            C3150p0 c3150p0 = new InterfaceC2882m() { // from class: j$.util.stream.p0
                @Override // p033j$.util.function.InterfaceC2882m
                public final Object apply(int i) {
                    int i2 = C3156q0.f1110h;
                    return new Object[i];
                }
            };
            AbstractC3206y2 abstractC3206y2 = c3156q0.f1111a;
            InterfaceC3169s1 mo307t0 = abstractC3206y2.mo307t0(abstractC3206y2.mo310q0(interfaceC2908s), c3150p0);
            AbstractC3071c abstractC3071c = (AbstractC3071c) c3156q0.f1111a;
            Objects.requireNonNull(abstractC3071c);
            Objects.requireNonNull(mo307t0);
            abstractC3071c.mo313n0(abstractC3071c.mo305v0(mo307t0), interfaceC2908s);
            c3156q0.f1117g = mo307t0.mo341a();
            c3156q0.f1112b = null;
        }
        c3156q0.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        InterfaceC2914A1 interfaceC2914A1 = this.f1117g;
        if (interfaceC2914A1 != null) {
            interfaceC2914A1.forEach(this.f1115e);
            this.f1117g = null;
        } else {
            InterfaceC2908s interfaceC2908s = this.f1112b;
            if (interfaceC2908s != null) {
                AbstractC3206y2 abstractC3206y2 = this.f1111a;
                InterfaceC3135m3 interfaceC3135m3 = this.f1115e;
                AbstractC3071c abstractC3071c = (AbstractC3071c) abstractC3206y2;
                Objects.requireNonNull(abstractC3071c);
                Objects.requireNonNull(interfaceC3135m3);
                abstractC3071c.mo313n0(abstractC3071c.mo305v0(interfaceC3135m3), interfaceC2908s);
                this.f1112b = null;
            }
        }
        C3156q0 c3156q0 = (C3156q0) this.f1114d.remove(this);
        if (c3156q0 != null) {
            c3156q0.tryComplete();
        }
    }
}
