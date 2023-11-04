package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import java.util.concurrent.ForkJoinPool;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.f */
/* loaded from: classes2.dex */
abstract class AbstractC3030f extends CountedCompleter {

    /* renamed from: g */
    static final int f1071g = ForkJoinPool.getCommonPoolParallelism() << 2;

    /* renamed from: a */
    protected final AbstractC3147y2 f1072a;

    /* renamed from: b */
    protected Spliterator f1073b;

    /* renamed from: c */
    protected long f1074c;

    /* renamed from: d */
    protected AbstractC3030f f1075d;

    /* renamed from: e */
    protected AbstractC3030f f1076e;

    /* renamed from: f */
    private Object f1077f;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3030f(AbstractC3030f abstractC3030f, Spliterator spliterator) {
        super(abstractC3030f);
        this.f1073b = spliterator;
        this.f1072a = abstractC3030f.f1072a;
        this.f1074c = abstractC3030f.f1074c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3030f(AbstractC3147y2 abstractC3147y2, Spliterator spliterator) {
        super(null);
        this.f1072a = abstractC3147y2;
        this.f1073b = spliterator;
        this.f1074c = 0L;
    }

    /* renamed from: h */
    public static long m466h(long j) {
        long j2 = j / f1071g;
        if (j2 > 0) {
            return j2;
        }
        return 1L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract Object mo436a();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public Object mo471b() {
        return this.f1077f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public AbstractC3030f m470c() {
        return (AbstractC3030f) getCompleter();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.f1073b;
        long estimateSize = spliterator.estimateSize();
        long j = this.f1074c;
        if (j == 0) {
            j = m466h(estimateSize);
            this.f1074c = j;
        }
        boolean z = false;
        AbstractC3030f abstractC3030f = this;
        while (estimateSize > j && (trySplit = spliterator.trySplit()) != null) {
            AbstractC3030f mo435f = abstractC3030f.mo435f(trySplit);
            abstractC3030f.f1075d = mo435f;
            AbstractC3030f mo435f2 = abstractC3030f.mo435f(spliterator);
            abstractC3030f.f1076e = mo435f2;
            abstractC3030f.setPendingCount(1);
            if (z) {
                spliterator = trySplit;
                abstractC3030f = mo435f;
                mo435f = mo435f2;
            } else {
                abstractC3030f = mo435f2;
            }
            z = !z;
            mo435f.fork();
            estimateSize = spliterator.estimateSize();
        }
        abstractC3030f.mo467g(abstractC3030f.mo436a());
        abstractC3030f.tryComplete();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public boolean m469d() {
        return this.f1075d == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public boolean m468e() {
        return m470c() == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public abstract AbstractC3030f mo435f(Spliterator spliterator);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public void mo467g(Object obj) {
        this.f1077f = obj;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return this.f1077f;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        this.f1073b = null;
        this.f1076e = null;
        this.f1075d = null;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    protected void setRawResult(Object obj) {
        if (obj != null) {
            throw new IllegalStateException();
        }
    }
}
