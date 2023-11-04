package p033j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p033j$.util.Spliterator;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.q0 */
/* loaded from: classes2.dex */
final class C3097q0 extends CountedCompleter {

    /* renamed from: h */
    public static final /* synthetic */ int f1159h = 0;

    /* renamed from: a */
    private final AbstractC3147y2 f1160a;

    /* renamed from: b */
    private Spliterator f1161b;

    /* renamed from: c */
    private final long f1162c;

    /* renamed from: d */
    private final ConcurrentHashMap f1163d;

    /* renamed from: e */
    private final InterfaceC3076m3 f1164e;

    /* renamed from: f */
    private final C3097q0 f1165f;

    /* renamed from: g */
    private InterfaceC2855A1 f1166g;

    C3097q0(C3097q0 c3097q0, Spliterator spliterator, C3097q0 c3097q02) {
        super(c3097q0);
        this.f1160a = c3097q0.f1160a;
        this.f1161b = spliterator;
        this.f1162c = c3097q0.f1162c;
        this.f1163d = c3097q0.f1163d;
        this.f1164e = c3097q0.f1164e;
        this.f1165f = c3097q02;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C3097q0(AbstractC3147y2 abstractC3147y2, Spliterator spliterator, InterfaceC3076m3 interfaceC3076m3) {
        super(null);
        this.f1160a = abstractC3147y2;
        this.f1161b = spliterator;
        this.f1162c = AbstractC3030f.m466h(spliterator.estimateSize());
        this.f1163d = new ConcurrentHashMap(Math.max(16, AbstractC3030f.f1071g << 1));
        this.f1164e = interfaceC3076m3;
        this.f1165f = null;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.f1161b;
        long j = this.f1162c;
        boolean z = false;
        C3097q0 c3097q0 = this;
        while (spliterator.estimateSize() > j && (trySplit = spliterator.trySplit()) != null) {
            C3097q0 c3097q02 = new C3097q0(c3097q0, trySplit, c3097q0.f1165f);
            C3097q0 c3097q03 = new C3097q0(c3097q0, spliterator, c3097q02);
            c3097q0.addToPendingCount(1);
            c3097q03.addToPendingCount(1);
            c3097q0.f1163d.put(c3097q02, c3097q03);
            if (c3097q0.f1165f != null) {
                c3097q02.addToPendingCount(1);
                if (c3097q0.f1163d.replace(c3097q0.f1165f, c3097q0, c3097q02)) {
                    c3097q0.addToPendingCount(-1);
                } else {
                    c3097q02.addToPendingCount(-1);
                }
            }
            if (z) {
                spliterator = trySplit;
                c3097q0 = c3097q02;
                c3097q02 = c3097q03;
            } else {
                c3097q0 = c3097q03;
            }
            z = !z;
            c3097q02.fork();
        }
        if (c3097q0.getPendingCount() > 0) {
            C3091p0 c3091p0 = new IntFunction() { // from class: j$.util.stream.p0
                @Override // p033j$.util.function.IntFunction
                public final Object apply(int i) {
                    int i2 = C3097q0.f1159h;
                    return new Object[i];
                }
            };
            AbstractC3147y2 abstractC3147y2 = c3097q0.f1160a;
            InterfaceC3110s1 mo353s0 = abstractC3147y2.mo353s0(abstractC3147y2.mo356p0(spliterator), c3091p0);
            AbstractC3012c abstractC3012c = (AbstractC3012c) c3097q0.f1160a;
            Objects.requireNonNull(abstractC3012c);
            Objects.requireNonNull(mo353s0);
            abstractC3012c.mo359m0(abstractC3012c.mo351u0(mo353s0), spliterator);
            c3097q0.f1166g = mo353s0.mo387a();
            c3097q0.f1161b = null;
        }
        c3097q0.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        InterfaceC2855A1 interfaceC2855A1 = this.f1166g;
        if (interfaceC2855A1 != null) {
            interfaceC2855A1.forEach(this.f1164e);
            this.f1166g = null;
        } else {
            Spliterator spliterator = this.f1161b;
            if (spliterator != null) {
                AbstractC3147y2 abstractC3147y2 = this.f1160a;
                InterfaceC3076m3 interfaceC3076m3 = this.f1164e;
                AbstractC3012c abstractC3012c = (AbstractC3012c) abstractC3147y2;
                Objects.requireNonNull(abstractC3012c);
                Objects.requireNonNull(interfaceC3076m3);
                abstractC3012c.mo359m0(abstractC3012c.mo351u0(interfaceC3076m3), spliterator);
                this.f1161b = null;
            }
        }
        C3097q0 c3097q0 = (C3097q0) this.f1163d.remove(this);
        if (c3097q0 != null) {
            c3097q0.tryComplete();
        }
    }
}
