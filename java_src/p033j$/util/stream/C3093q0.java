package p033j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p033j$.util.Spliterator;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.q0 */
/* loaded from: classes2.dex */
final class C3093q0 extends CountedCompleter {

    /* renamed from: h */
    public static final /* synthetic */ int f1159h = 0;

    /* renamed from: a */
    private final AbstractC3143y2 f1160a;

    /* renamed from: b */
    private Spliterator f1161b;

    /* renamed from: c */
    private final long f1162c;

    /* renamed from: d */
    private final ConcurrentHashMap f1163d;

    /* renamed from: e */
    private final InterfaceC3072m3 f1164e;

    /* renamed from: f */
    private final C3093q0 f1165f;

    /* renamed from: g */
    private InterfaceC2851A1 f1166g;

    C3093q0(C3093q0 c3093q0, Spliterator spliterator, C3093q0 c3093q02) {
        super(c3093q0);
        this.f1160a = c3093q0.f1160a;
        this.f1161b = spliterator;
        this.f1162c = c3093q0.f1162c;
        this.f1163d = c3093q0.f1163d;
        this.f1164e = c3093q0.f1164e;
        this.f1165f = c3093q02;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C3093q0(AbstractC3143y2 abstractC3143y2, Spliterator spliterator, InterfaceC3072m3 interfaceC3072m3) {
        super(null);
        this.f1160a = abstractC3143y2;
        this.f1161b = spliterator;
        this.f1162c = AbstractC3026f.m465h(spliterator.estimateSize());
        this.f1163d = new ConcurrentHashMap(Math.max(16, AbstractC3026f.f1071g << 1));
        this.f1164e = interfaceC3072m3;
        this.f1165f = null;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.f1161b;
        long j = this.f1162c;
        boolean z = false;
        C3093q0 c3093q0 = this;
        while (spliterator.estimateSize() > j && (trySplit = spliterator.trySplit()) != null) {
            C3093q0 c3093q02 = new C3093q0(c3093q0, trySplit, c3093q0.f1165f);
            C3093q0 c3093q03 = new C3093q0(c3093q0, spliterator, c3093q02);
            c3093q0.addToPendingCount(1);
            c3093q03.addToPendingCount(1);
            c3093q0.f1163d.put(c3093q02, c3093q03);
            if (c3093q0.f1165f != null) {
                c3093q02.addToPendingCount(1);
                if (c3093q0.f1163d.replace(c3093q0.f1165f, c3093q0, c3093q02)) {
                    c3093q0.addToPendingCount(-1);
                } else {
                    c3093q02.addToPendingCount(-1);
                }
            }
            if (z) {
                spliterator = trySplit;
                c3093q0 = c3093q02;
                c3093q02 = c3093q03;
            } else {
                c3093q0 = c3093q03;
            }
            z = !z;
            c3093q02.fork();
        }
        if (c3093q0.getPendingCount() > 0) {
            C3087p0 c3087p0 = new IntFunction() { // from class: j$.util.stream.p0
                @Override // p033j$.util.function.IntFunction
                public final Object apply(int i) {
                    int i2 = C3093q0.f1159h;
                    return new Object[i];
                }
            };
            AbstractC3143y2 abstractC3143y2 = c3093q0.f1160a;
            InterfaceC3106s1 mo352s0 = abstractC3143y2.mo352s0(abstractC3143y2.mo355p0(spliterator), c3087p0);
            AbstractC3008c abstractC3008c = (AbstractC3008c) c3093q0.f1160a;
            Objects.requireNonNull(abstractC3008c);
            Objects.requireNonNull(mo352s0);
            abstractC3008c.mo358m0(abstractC3008c.mo350u0(mo352s0), spliterator);
            c3093q0.f1166g = mo352s0.mo386a();
            c3093q0.f1161b = null;
        }
        c3093q0.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        InterfaceC2851A1 interfaceC2851A1 = this.f1166g;
        if (interfaceC2851A1 != null) {
            interfaceC2851A1.forEach(this.f1164e);
            this.f1166g = null;
        } else {
            Spliterator spliterator = this.f1161b;
            if (spliterator != null) {
                AbstractC3143y2 abstractC3143y2 = this.f1160a;
                InterfaceC3072m3 interfaceC3072m3 = this.f1164e;
                AbstractC3008c abstractC3008c = (AbstractC3008c) abstractC3143y2;
                Objects.requireNonNull(abstractC3008c);
                Objects.requireNonNull(interfaceC3072m3);
                abstractC3008c.mo358m0(abstractC3008c.mo350u0(interfaceC3072m3), spliterator);
                this.f1161b = null;
            }
        }
        C3093q0 c3093q0 = (C3093q0) this.f1163d.remove(this);
        if (c3093q0 != null) {
            c3093q0.tryComplete();
        }
    }
}
