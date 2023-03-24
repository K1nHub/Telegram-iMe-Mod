package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import java.util.concurrent.ForkJoinPool;
import p034j$.util.InterfaceC2625s;
/* renamed from: j$.util.stream.f */
/* loaded from: classes2.dex */
abstract class AbstractC2806f extends CountedCompleter {

    /* renamed from: g */
    static final int f933g = ForkJoinPool.getCommonPoolParallelism() << 2;

    /* renamed from: a */
    protected final AbstractC2923y2 f934a;

    /* renamed from: b */
    protected InterfaceC2625s f935b;

    /* renamed from: c */
    protected long f936c;

    /* renamed from: d */
    protected AbstractC2806f f937d;

    /* renamed from: e */
    protected AbstractC2806f f938e;

    /* renamed from: f */
    private Object f939f;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2806f(AbstractC2806f abstractC2806f, InterfaceC2625s interfaceC2625s) {
        super(abstractC2806f);
        this.f935b = interfaceC2625s;
        this.f934a = abstractC2806f.f934a;
        this.f936c = abstractC2806f.f936c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2806f(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s) {
        super(null);
        this.f934a = abstractC2923y2;
        this.f935b = interfaceC2625s;
        this.f936c = 0L;
    }

    /* renamed from: h */
    public static long m416h(long j) {
        long j2 = j / f933g;
        if (j2 > 0) {
            return j2;
        }
        return 1L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract Object mo386a();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public Object mo421b() {
        return this.f939f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public AbstractC2806f m420c() {
        return (AbstractC2806f) getCompleter();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2625s trySplit;
        InterfaceC2625s interfaceC2625s = this.f935b;
        long estimateSize = interfaceC2625s.estimateSize();
        long j = this.f936c;
        if (j == 0) {
            j = m416h(estimateSize);
            this.f936c = j;
        }
        boolean z = false;
        AbstractC2806f abstractC2806f = this;
        while (estimateSize > j && (trySplit = interfaceC2625s.trySplit()) != null) {
            AbstractC2806f mo385f = abstractC2806f.mo385f(trySplit);
            abstractC2806f.f937d = mo385f;
            AbstractC2806f mo385f2 = abstractC2806f.mo385f(interfaceC2625s);
            abstractC2806f.f938e = mo385f2;
            abstractC2806f.setPendingCount(1);
            if (z) {
                interfaceC2625s = trySplit;
                abstractC2806f = mo385f;
                mo385f = mo385f2;
            } else {
                abstractC2806f = mo385f2;
            }
            z = !z;
            mo385f.fork();
            estimateSize = interfaceC2625s.estimateSize();
        }
        abstractC2806f.mo417g(abstractC2806f.mo386a());
        abstractC2806f.tryComplete();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public boolean m419d() {
        return this.f937d == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public boolean m418e() {
        return m420c() == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public abstract AbstractC2806f mo385f(InterfaceC2625s interfaceC2625s);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public void mo417g(Object obj) {
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
