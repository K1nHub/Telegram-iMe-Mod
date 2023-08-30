package p033j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p033j$.util.InterfaceC2992s;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.function.InterfaceC2966m;
/* renamed from: j$.util.stream.q0 */
/* loaded from: classes2.dex */
final class C3240q0 extends CountedCompleter {

    /* renamed from: h */
    public static final /* synthetic */ int f1119h = 0;

    /* renamed from: a */
    private final AbstractC3290y2 f1120a;

    /* renamed from: b */
    private InterfaceC2992s f1121b;

    /* renamed from: c */
    private final long f1122c;

    /* renamed from: d */
    private final ConcurrentHashMap f1123d;

    /* renamed from: e */
    private final InterfaceC3219m3 f1124e;

    /* renamed from: f */
    private final C3240q0 f1125f;

    /* renamed from: g */
    private InterfaceC2998A1 f1126g;

    C3240q0(C3240q0 c3240q0, InterfaceC2992s interfaceC2992s, C3240q0 c3240q02) {
        super(c3240q0);
        this.f1120a = c3240q0.f1120a;
        this.f1121b = interfaceC2992s;
        this.f1122c = c3240q0.f1122c;
        this.f1123d = c3240q0.f1123d;
        this.f1124e = c3240q0.f1124e;
        this.f1125f = c3240q02;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C3240q0(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s, InterfaceC3219m3 interfaceC3219m3) {
        super(null);
        this.f1120a = abstractC3290y2;
        this.f1121b = interfaceC2992s;
        this.f1122c = AbstractC3173f.m420h(interfaceC2992s.estimateSize());
        this.f1123d = new ConcurrentHashMap(Math.max(16, AbstractC3173f.f1031g << 1));
        this.f1124e = interfaceC3219m3;
        this.f1125f = null;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        InterfaceC2992s trySplit;
        InterfaceC2992s interfaceC2992s = this.f1121b;
        long j = this.f1122c;
        boolean z = false;
        C3240q0 c3240q0 = this;
        while (interfaceC2992s.estimateSize() > j && (trySplit = interfaceC2992s.trySplit()) != null) {
            C3240q0 c3240q02 = new C3240q0(c3240q0, trySplit, c3240q0.f1125f);
            C3240q0 c3240q03 = new C3240q0(c3240q0, interfaceC2992s, c3240q02);
            c3240q0.addToPendingCount(1);
            c3240q03.addToPendingCount(1);
            c3240q0.f1123d.put(c3240q02, c3240q03);
            if (c3240q0.f1125f != null) {
                c3240q02.addToPendingCount(1);
                if (c3240q0.f1123d.replace(c3240q0.f1125f, c3240q0, c3240q02)) {
                    c3240q0.addToPendingCount(-1);
                } else {
                    c3240q02.addToPendingCount(-1);
                }
            }
            if (z) {
                interfaceC2992s = trySplit;
                c3240q0 = c3240q02;
                c3240q02 = c3240q03;
            } else {
                c3240q0 = c3240q03;
            }
            z = !z;
            c3240q02.fork();
        }
        if (c3240q0.getPendingCount() > 0) {
            C3234p0 c3234p0 = new InterfaceC2966m() { // from class: j$.util.stream.p0
                @Override // p033j$.util.function.InterfaceC2966m
                public final Object apply(int i) {
                    int i2 = C3240q0.f1119h;
                    return new Object[i];
                }
            };
            AbstractC3290y2 abstractC3290y2 = c3240q0.f1120a;
            InterfaceC3253s1 mo307t0 = abstractC3290y2.mo307t0(abstractC3290y2.mo310q0(interfaceC2992s), c3234p0);
            AbstractC3155c abstractC3155c = (AbstractC3155c) c3240q0.f1120a;
            Objects.requireNonNull(abstractC3155c);
            Objects.requireNonNull(mo307t0);
            abstractC3155c.mo313n0(abstractC3155c.mo305v0(mo307t0), interfaceC2992s);
            c3240q0.f1126g = mo307t0.mo341a();
            c3240q0.f1121b = null;
        }
        c3240q0.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        InterfaceC2998A1 interfaceC2998A1 = this.f1126g;
        if (interfaceC2998A1 != null) {
            interfaceC2998A1.forEach(this.f1124e);
            this.f1126g = null;
        } else {
            InterfaceC2992s interfaceC2992s = this.f1121b;
            if (interfaceC2992s != null) {
                AbstractC3290y2 abstractC3290y2 = this.f1120a;
                InterfaceC3219m3 interfaceC3219m3 = this.f1124e;
                AbstractC3155c abstractC3155c = (AbstractC3155c) abstractC3290y2;
                Objects.requireNonNull(abstractC3155c);
                Objects.requireNonNull(interfaceC3219m3);
                abstractC3155c.mo313n0(abstractC3155c.mo305v0(interfaceC3219m3), interfaceC2992s);
                this.f1121b = null;
            }
        }
        C3240q0 c3240q0 = (C3240q0) this.f1123d.remove(this);
        if (c3240q0 != null) {
            c3240q0.tryComplete();
        }
    }
}
