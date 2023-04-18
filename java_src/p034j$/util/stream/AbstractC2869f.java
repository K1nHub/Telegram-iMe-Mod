package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import java.util.concurrent.ForkJoinPool;
import p034j$.util.InterfaceC2688s;
/* renamed from: j$.util.stream.f */
/* loaded from: classes2.dex */
abstract class AbstractC2869f extends CountedCompleter {

    /* renamed from: g */
    static final int f933g = ForkJoinPool.getCommonPoolParallelism() << 2;

    /* renamed from: a */
    protected final AbstractC2986y2 f934a;

    /* renamed from: b */
    protected InterfaceC2688s f935b;

    /* renamed from: c */
    protected long f936c;

    /* renamed from: d */
    protected AbstractC2869f f937d;

    /* renamed from: e */
    protected AbstractC2869f f938e;

    /* renamed from: f */
    private Object f939f;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2869f(AbstractC2869f abstractC2869f, InterfaceC2688s interfaceC2688s) {
        super(abstractC2869f);
        this.f935b = interfaceC2688s;
        this.f934a = abstractC2869f.f934a;
        this.f936c = abstractC2869f.f936c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2869f(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s) {
        super(null);
        this.f934a = abstractC2986y2;
        this.f935b = interfaceC2688s;
        this.f936c = 0L;
    }

    /* renamed from: h */
    public static long m397h(long j) {
        long j2 = j / f933g;
        if (j2 > 0) {
            return j2;
        }
        return 1L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract Object mo367a();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public Object mo402b() {
        return this.f939f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public AbstractC2869f m401c() {
        return (AbstractC2869f) getCompleter();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2688s trySplit;
        InterfaceC2688s interfaceC2688s = this.f935b;
        long estimateSize = interfaceC2688s.estimateSize();
        long j = this.f936c;
        if (j == 0) {
            j = m397h(estimateSize);
            this.f936c = j;
        }
        boolean z = false;
        AbstractC2869f abstractC2869f = this;
        while (estimateSize > j && (trySplit = interfaceC2688s.trySplit()) != null) {
            AbstractC2869f mo366f = abstractC2869f.mo366f(trySplit);
            abstractC2869f.f937d = mo366f;
            AbstractC2869f mo366f2 = abstractC2869f.mo366f(interfaceC2688s);
            abstractC2869f.f938e = mo366f2;
            abstractC2869f.setPendingCount(1);
            if (z) {
                interfaceC2688s = trySplit;
                abstractC2869f = mo366f;
                mo366f = mo366f2;
            } else {
                abstractC2869f = mo366f2;
            }
            z = !z;
            mo366f.fork();
            estimateSize = interfaceC2688s.estimateSize();
        }
        abstractC2869f.mo398g(abstractC2869f.mo367a());
        abstractC2869f.tryComplete();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public boolean m400d() {
        return this.f937d == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public boolean m399e() {
        return m401c() == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public abstract AbstractC2869f mo366f(InterfaceC2688s interfaceC2688s);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public void mo398g(Object obj) {
        this.f939f = obj;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return this.f939f;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        this.f935b = null;
        this.f938e = null;
        this.f937d = null;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    protected void setRawResult(Object obj) {
        if (obj != null) {
            throw new IllegalStateException();
        }
    }
}
