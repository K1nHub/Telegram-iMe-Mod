package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import java.util.concurrent.ForkJoinPool;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.f */
/* loaded from: classes2.dex */
abstract class AbstractC3026f extends CountedCompleter {

    /* renamed from: g */
    static final int f1071g = ForkJoinPool.getCommonPoolParallelism() << 2;

    /* renamed from: a */
    protected final AbstractC3143y2 f1072a;

    /* renamed from: b */
    protected Spliterator f1073b;

    /* renamed from: c */
    protected long f1074c;

    /* renamed from: d */
    protected AbstractC3026f f1075d;

    /* renamed from: e */
    protected AbstractC3026f f1076e;

    /* renamed from: f */
    private Object f1077f;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3026f(AbstractC3026f abstractC3026f, Spliterator spliterator) {
        super(abstractC3026f);
        this.f1073b = spliterator;
        this.f1072a = abstractC3026f.f1072a;
        this.f1074c = abstractC3026f.f1074c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3026f(AbstractC3143y2 abstractC3143y2, Spliterator spliterator) {
        super(null);
        this.f1072a = abstractC3143y2;
        this.f1073b = spliterator;
        this.f1074c = 0L;
    }

    /* renamed from: h */
    public static long m465h(long j) {
        long j2 = j / f1071g;
        if (j2 > 0) {
            return j2;
        }
        return 1L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract Object mo435a();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public Object mo470b() {
        return this.f1077f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public AbstractC3026f m469c() {
        return (AbstractC3026f) getCompleter();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.f1073b;
        long estimateSize = spliterator.estimateSize();
        long j = this.f1074c;
        if (j == 0) {
            j = m465h(estimateSize);
            this.f1074c = j;
        }
        boolean z = false;
        AbstractC3026f abstractC3026f = this;
        while (estimateSize > j && (trySplit = spliterator.trySplit()) != null) {
            AbstractC3026f mo434f = abstractC3026f.mo434f(trySplit);
            abstractC3026f.f1075d = mo434f;
            AbstractC3026f mo434f2 = abstractC3026f.mo434f(spliterator);
            abstractC3026f.f1076e = mo434f2;
            abstractC3026f.setPendingCount(1);
            if (z) {
                spliterator = trySplit;
                abstractC3026f = mo434f;
                mo434f = mo434f2;
            } else {
                abstractC3026f = mo434f2;
            }
            z = !z;
            mo434f.fork();
            estimateSize = spliterator.estimateSize();
        }
        abstractC3026f.mo466g(abstractC3026f.mo435a());
        abstractC3026f.tryComplete();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public boolean m468d() {
        return this.f1075d == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public boolean m467e() {
        return m469c() == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public abstract AbstractC3026f mo434f(Spliterator spliterator);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public void mo466g(Object obj) {
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
