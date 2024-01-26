package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import java.util.concurrent.ForkJoinPool;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.f */
/* loaded from: classes2.dex */
abstract class AbstractC3025f extends CountedCompleter {

    /* renamed from: g */
    static final int f1071g = ForkJoinPool.getCommonPoolParallelism() << 2;

    /* renamed from: a */
    protected final AbstractC3142y2 f1072a;

    /* renamed from: b */
    protected Spliterator f1073b;

    /* renamed from: c */
    protected long f1074c;

    /* renamed from: d */
    protected AbstractC3025f f1075d;

    /* renamed from: e */
    protected AbstractC3025f f1076e;

    /* renamed from: f */
    private Object f1077f;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3025f(AbstractC3025f abstractC3025f, Spliterator spliterator) {
        super(abstractC3025f);
        this.f1073b = spliterator;
        this.f1072a = abstractC3025f.f1072a;
        this.f1074c = abstractC3025f.f1074c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3025f(AbstractC3142y2 abstractC3142y2, Spliterator spliterator) {
        super(null);
        this.f1072a = abstractC3142y2;
        this.f1073b = spliterator;
        this.f1074c = 0L;
    }

    /* renamed from: h */
    public static long m469h(long j) {
        long j2 = j / f1071g;
        if (j2 > 0) {
            return j2;
        }
        return 1L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract Object mo439a();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public Object mo474b() {
        return this.f1077f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public AbstractC3025f m473c() {
        return (AbstractC3025f) getCompleter();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.f1073b;
        long estimateSize = spliterator.estimateSize();
        long j = this.f1074c;
        if (j == 0) {
            j = m469h(estimateSize);
            this.f1074c = j;
        }
        boolean z = false;
        AbstractC3025f abstractC3025f = this;
        while (estimateSize > j && (trySplit = spliterator.trySplit()) != null) {
            AbstractC3025f mo438f = abstractC3025f.mo438f(trySplit);
            abstractC3025f.f1075d = mo438f;
            AbstractC3025f mo438f2 = abstractC3025f.mo438f(spliterator);
            abstractC3025f.f1076e = mo438f2;
            abstractC3025f.setPendingCount(1);
            if (z) {
                spliterator = trySplit;
                abstractC3025f = mo438f;
                mo438f = mo438f2;
            } else {
                abstractC3025f = mo438f2;
            }
            z = !z;
            mo438f.fork();
            estimateSize = spliterator.estimateSize();
        }
        abstractC3025f.mo470g(abstractC3025f.mo439a());
        abstractC3025f.tryComplete();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public boolean m472d() {
        return this.f1075d == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public boolean m471e() {
        return m473c() == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public abstract AbstractC3025f mo438f(Spliterator spliterator);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public void mo470g(Object obj) {
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
