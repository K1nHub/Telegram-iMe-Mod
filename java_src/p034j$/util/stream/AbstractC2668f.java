package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import java.util.concurrent.ForkJoinPool;
import p034j$.util.InterfaceC2487s;
/* renamed from: j$.util.stream.f */
/* loaded from: classes2.dex */
abstract class AbstractC2668f extends CountedCompleter {

    /* renamed from: g */
    static final int f927g = ForkJoinPool.getCommonPoolParallelism() << 2;

    /* renamed from: a */
    protected final AbstractC2785y2 f928a;

    /* renamed from: b */
    protected InterfaceC2487s f929b;

    /* renamed from: c */
    protected long f930c;

    /* renamed from: d */
    protected AbstractC2668f f931d;

    /* renamed from: e */
    protected AbstractC2668f f932e;

    /* renamed from: f */
    private Object f933f;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2668f(AbstractC2668f abstractC2668f, InterfaceC2487s interfaceC2487s) {
        super(abstractC2668f);
        this.f929b = interfaceC2487s;
        this.f928a = abstractC2668f.f928a;
        this.f930c = abstractC2668f.f930c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2668f(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s) {
        super(null);
        this.f928a = abstractC2785y2;
        this.f929b = interfaceC2487s;
        this.f930c = 0L;
    }

    /* renamed from: h */
    public static long m417h(long j) {
        long j2 = j / f927g;
        if (j2 > 0) {
            return j2;
        }
        return 1L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract Object mo387a();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public Object mo422b() {
        return this.f933f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public AbstractC2668f m421c() {
        return (AbstractC2668f) getCompleter();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2487s trySplit;
        InterfaceC2487s interfaceC2487s = this.f929b;
        long estimateSize = interfaceC2487s.estimateSize();
        long j = this.f930c;
        if (j == 0) {
            j = m417h(estimateSize);
            this.f930c = j;
        }
        boolean z = false;
        AbstractC2668f abstractC2668f = this;
        while (estimateSize > j && (trySplit = interfaceC2487s.trySplit()) != null) {
            AbstractC2668f mo386f = abstractC2668f.mo386f(trySplit);
            abstractC2668f.f931d = mo386f;
            AbstractC2668f mo386f2 = abstractC2668f.mo386f(interfaceC2487s);
            abstractC2668f.f932e = mo386f2;
            abstractC2668f.setPendingCount(1);
            if (z) {
                interfaceC2487s = trySplit;
                abstractC2668f = mo386f;
                mo386f = mo386f2;
            } else {
                abstractC2668f = mo386f2;
            }
            z = !z;
            mo386f.fork();
            estimateSize = interfaceC2487s.estimateSize();
        }
        abstractC2668f.mo418g(abstractC2668f.mo387a());
        abstractC2668f.tryComplete();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public boolean m420d() {
        return this.f931d == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public boolean m419e() {
        return m421c() == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public abstract AbstractC2668f mo386f(InterfaceC2487s interfaceC2487s);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public void mo418g(Object obj) {
        this.f933f = obj;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return this.f933f;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        this.f929b = null;
        this.f932e = null;
        this.f931d = null;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    protected void setRawResult(Object obj) {
        if (obj != null) {
            throw new IllegalStateException();
        }
    }
}
