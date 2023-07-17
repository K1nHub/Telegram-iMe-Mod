package p033j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p033j$.util.InterfaceC2853s;
import p033j$.util.concurrent.ConcurrentHashMap;
/* renamed from: j$.util.stream.q0 */
/* loaded from: classes2.dex */
final class C3101q0 extends CountedCompleter {

    /* renamed from: h */
    public static final /* synthetic */ int f1106h = 0;

    /* renamed from: a */
    private final AbstractC3151y2 f1107a;

    /* renamed from: b */
    private InterfaceC2853s f1108b;

    /* renamed from: c */
    private final long f1109c;

    /* renamed from: d */
    private final ConcurrentHashMap f1110d;

    /* renamed from: e */
    private final InterfaceC3080m3 f1111e;

    /* renamed from: f */
    private final C3101q0 f1112f;

    /* renamed from: g */
    private InterfaceC2859A1 f1113g;

    C3101q0(C3101q0 c3101q0, InterfaceC2853s interfaceC2853s, C3101q0 c3101q02) {
        super(c3101q0);
        this.f1107a = c3101q0.f1107a;
        this.f1108b = interfaceC2853s;
        this.f1109c = c3101q0.f1109c;
        this.f1110d = c3101q0.f1110d;
        this.f1111e = c3101q0.f1111e;
        this.f1112f = c3101q02;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C3101q0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, InterfaceC3080m3 interfaceC3080m3) {
        super(null);
        this.f1107a = abstractC3151y2;
        this.f1108b = interfaceC2853s;
        this.f1109c = AbstractC3034f.m402h(interfaceC2853s.estimateSize());
        this.f1110d = new ConcurrentHashMap(Math.max(16, AbstractC3034f.f1018g << 1));
        this.f1111e = interfaceC3080m3;
        this.f1112f = null;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        InterfaceC2853s trySplit;
        InterfaceC2853s interfaceC2853s = this.f1108b;
        long j = this.f1109c;
        boolean z = false;
        C3101q0 c3101q0 = this;
        while (interfaceC2853s.estimateSize() > j && (trySplit = interfaceC2853s.trySplit()) != null) {
            C3101q0 c3101q02 = new C3101q0(c3101q0, trySplit, c3101q0.f1112f);
            C3101q0 c3101q03 = new C3101q0(c3101q0, interfaceC2853s, c3101q02);
            c3101q0.addToPendingCount(1);
            c3101q03.addToPendingCount(1);
            c3101q0.f1110d.put(c3101q02, c3101q03);
            if (c3101q0.f1112f != null) {
                c3101q02.addToPendingCount(1);
                if (c3101q0.f1110d.replace(c3101q0.f1112f, c3101q0, c3101q02)) {
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
            C3095p0 c3095p0 = C3095p0.f1098a;
            AbstractC3151y2 abstractC3151y2 = c3101q0.f1107a;
            InterfaceC3114s1 mo289t0 = abstractC3151y2.mo289t0(abstractC3151y2.mo292q0(interfaceC2853s), c3095p0);
            AbstractC3016c abstractC3016c = (AbstractC3016c) c3101q0.f1107a;
            Objects.requireNonNull(abstractC3016c);
            Objects.requireNonNull(mo289t0);
            abstractC3016c.mo295n0(abstractC3016c.mo287v0(mo289t0), interfaceC2853s);
            c3101q0.f1113g = mo289t0.mo323a();
            c3101q0.f1108b = null;
        }
        c3101q0.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        InterfaceC2859A1 interfaceC2859A1 = this.f1113g;
        if (interfaceC2859A1 != null) {
            interfaceC2859A1.forEach(this.f1111e);
            this.f1113g = null;
        } else {
            InterfaceC2853s interfaceC2853s = this.f1108b;
            if (interfaceC2853s != null) {
                AbstractC3151y2 abstractC3151y2 = this.f1107a;
                InterfaceC3080m3 interfaceC3080m3 = this.f1111e;
                AbstractC3016c abstractC3016c = (AbstractC3016c) abstractC3151y2;
                Objects.requireNonNull(abstractC3016c);
                Objects.requireNonNull(interfaceC3080m3);
                abstractC3016c.mo295n0(abstractC3016c.mo287v0(interfaceC3080m3), interfaceC2853s);
                this.f1108b = null;
            }
        }
        C3101q0 c3101q0 = (C3101q0) this.f1110d.remove(this);
        if (c3101q0 != null) {
            c3101q0.tryComplete();
        }
    }
}
