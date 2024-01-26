package p033j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p033j$.util.Spliterator;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.q0 */
/* loaded from: classes2.dex */
final class C3092q0 extends CountedCompleter {

    /* renamed from: h */
    public static final /* synthetic */ int f1159h = 0;

    /* renamed from: a */
    private final AbstractC3142y2 f1160a;

    /* renamed from: b */
    private Spliterator f1161b;

    /* renamed from: c */
    private final long f1162c;

    /* renamed from: d */
    private final ConcurrentHashMap f1163d;

    /* renamed from: e */
    private final InterfaceC3071m3 f1164e;

    /* renamed from: f */
    private final C3092q0 f1165f;

    /* renamed from: g */
    private InterfaceC2850A1 f1166g;

    C3092q0(C3092q0 c3092q0, Spliterator spliterator, C3092q0 c3092q02) {
        super(c3092q0);
        this.f1160a = c3092q0.f1160a;
        this.f1161b = spliterator;
        this.f1162c = c3092q0.f1162c;
        this.f1163d = c3092q0.f1163d;
        this.f1164e = c3092q0.f1164e;
        this.f1165f = c3092q02;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C3092q0(AbstractC3142y2 abstractC3142y2, Spliterator spliterator, InterfaceC3071m3 interfaceC3071m3) {
        super(null);
        this.f1160a = abstractC3142y2;
        this.f1161b = spliterator;
        this.f1162c = AbstractC3025f.m469h(spliterator.estimateSize());
        this.f1163d = new ConcurrentHashMap(Math.max(16, AbstractC3025f.f1071g << 1));
        this.f1164e = interfaceC3071m3;
        this.f1165f = null;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.f1161b;
        long j = this.f1162c;
        boolean z = false;
        C3092q0 c3092q0 = this;
        while (spliterator.estimateSize() > j && (trySplit = spliterator.trySplit()) != null) {
            C3092q0 c3092q02 = new C3092q0(c3092q0, trySplit, c3092q0.f1165f);
            C3092q0 c3092q03 = new C3092q0(c3092q0, spliterator, c3092q02);
            c3092q0.addToPendingCount(1);
            c3092q03.addToPendingCount(1);
            c3092q0.f1163d.put(c3092q02, c3092q03);
            if (c3092q0.f1165f != null) {
                c3092q02.addToPendingCount(1);
                if (c3092q0.f1163d.replace(c3092q0.f1165f, c3092q0, c3092q02)) {
                    c3092q0.addToPendingCount(-1);
                } else {
                    c3092q02.addToPendingCount(-1);
                }
            }
            if (z) {
                spliterator = trySplit;
                c3092q0 = c3092q02;
                c3092q02 = c3092q03;
            } else {
                c3092q0 = c3092q03;
            }
            z = !z;
            c3092q02.fork();
        }
        if (c3092q0.getPendingCount() > 0) {
            C3086p0 c3086p0 = new IntFunction() { // from class: j$.util.stream.p0
                @Override // p033j$.util.function.IntFunction
                public final Object apply(int i) {
                    int i2 = C3092q0.f1159h;
                    return new Object[i];
                }
            };
            AbstractC3142y2 abstractC3142y2 = c3092q0.f1160a;
            InterfaceC3105s1 mo356s0 = abstractC3142y2.mo356s0(abstractC3142y2.mo359p0(spliterator), c3086p0);
            AbstractC3007c abstractC3007c = (AbstractC3007c) c3092q0.f1160a;
            Objects.requireNonNull(abstractC3007c);
            Objects.requireNonNull(mo356s0);
            abstractC3007c.mo362m0(abstractC3007c.mo354u0(mo356s0), spliterator);
            c3092q0.f1166g = mo356s0.mo390a();
            c3092q0.f1161b = null;
        }
        c3092q0.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        InterfaceC2850A1 interfaceC2850A1 = this.f1166g;
        if (interfaceC2850A1 != null) {
            interfaceC2850A1.forEach(this.f1164e);
            this.f1166g = null;
        } else {
            Spliterator spliterator = this.f1161b;
            if (spliterator != null) {
                AbstractC3142y2 abstractC3142y2 = this.f1160a;
                InterfaceC3071m3 interfaceC3071m3 = this.f1164e;
                AbstractC3007c abstractC3007c = (AbstractC3007c) abstractC3142y2;
                Objects.requireNonNull(abstractC3007c);
                Objects.requireNonNull(interfaceC3071m3);
                abstractC3007c.mo362m0(abstractC3007c.mo354u0(interfaceC3071m3), spliterator);
                this.f1161b = null;
            }
        }
        C3092q0 c3092q0 = (C3092q0) this.f1163d.remove(this);
        if (c3092q0 != null) {
            c3092q0.tryComplete();
        }
    }
}
