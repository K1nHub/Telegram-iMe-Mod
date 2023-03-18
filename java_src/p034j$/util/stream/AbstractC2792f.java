package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import java.util.concurrent.ForkJoinPool;
import p034j$.util.InterfaceC2611s;
/* renamed from: j$.util.stream.f */
/* loaded from: classes2.dex */
abstract class AbstractC2792f extends CountedCompleter {

    /* renamed from: g */
    static final int f932g = ForkJoinPool.getCommonPoolParallelism() << 2;

    /* renamed from: a */
    protected final AbstractC2909y2 f933a;

    /* renamed from: b */
    protected InterfaceC2611s f934b;

    /* renamed from: c */
    protected long f935c;

    /* renamed from: d */
    protected AbstractC2792f f936d;

    /* renamed from: e */
    protected AbstractC2792f f937e;

    /* renamed from: f */
    private Object f938f;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2792f(AbstractC2792f abstractC2792f, InterfaceC2611s interfaceC2611s) {
        super(abstractC2792f);
        this.f934b = interfaceC2611s;
        this.f933a = abstractC2792f.f933a;
        this.f935c = abstractC2792f.f935c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2792f(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s) {
        super(null);
        this.f933a = abstractC2909y2;
        this.f934b = interfaceC2611s;
        this.f935c = 0L;
    }

    /* renamed from: h */
    public static long m417h(long j) {
        long j2 = j / f932g;
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
        return this.f938f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public AbstractC2792f m421c() {
        return (AbstractC2792f) getCompleter();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2611s trySplit;
        InterfaceC2611s interfaceC2611s = this.f934b;
        long estimateSize = interfaceC2611s.estimateSize();
        long j = this.f935c;
        if (j == 0) {
            j = m417h(estimateSize);
            this.f935c = j;
        }
        boolean z = false;
        AbstractC2792f abstractC2792f = this;
        while (estimateSize > j && (trySplit = interfaceC2611s.trySplit()) != null) {
            AbstractC2792f mo386f = abstractC2792f.mo386f(trySplit);
            abstractC2792f.f936d = mo386f;
            AbstractC2792f mo386f2 = abstractC2792f.mo386f(interfaceC2611s);
            abstractC2792f.f937e = mo386f2;
            abstractC2792f.setPendingCount(1);
            if (z) {
                interfaceC2611s = trySplit;
                abstractC2792f = mo386f;
                mo386f = mo386f2;
            } else {
                abstractC2792f = mo386f2;
            }
            z = !z;
            mo386f.fork();
            estimateSize = interfaceC2611s.estimateSize();
        }
        abstractC2792f.mo418g(abstractC2792f.mo387a());
        abstractC2792f.tryComplete();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public boolean m420d() {
        return this.f936d == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public boolean m419e() {
        return m421c() == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public abstract AbstractC2792f mo386f(InterfaceC2611s interfaceC2611s);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public void mo418g(Object obj) {
        this.f938f = obj;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return this.f938f;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        this.f934b = null;
        this.f937e = null;
        this.f936d = null;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    protected void setRawResult(Object obj) {
        if (obj != null) {
            throw new IllegalStateException();
        }
    }
}
