package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import java.util.concurrent.ForkJoinPool;
import p033j$.util.InterfaceC2853s;
/* renamed from: j$.util.stream.f */
/* loaded from: classes2.dex */
abstract class AbstractC3034f extends CountedCompleter {

    /* renamed from: g */
    static final int f1018g = ForkJoinPool.getCommonPoolParallelism() << 2;

    /* renamed from: a */
    protected final AbstractC3151y2 f1019a;

    /* renamed from: b */
    protected InterfaceC2853s f1020b;

    /* renamed from: c */
    protected long f1021c;

    /* renamed from: d */
    protected AbstractC3034f f1022d;

    /* renamed from: e */
    protected AbstractC3034f f1023e;

    /* renamed from: f */
    private Object f1024f;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3034f(AbstractC3034f abstractC3034f, InterfaceC2853s interfaceC2853s) {
        super(abstractC3034f);
        this.f1020b = interfaceC2853s;
        this.f1019a = abstractC3034f.f1019a;
        this.f1021c = abstractC3034f.f1021c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3034f(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        super(null);
        this.f1019a = abstractC3151y2;
        this.f1020b = interfaceC2853s;
        this.f1021c = 0L;
    }

    /* renamed from: h */
    public static long m402h(long j) {
        long j2 = j / f1018g;
        if (j2 > 0) {
            return j2;
        }
        return 1L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract Object mo372a();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public Object mo407b() {
        return this.f1024f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public AbstractC3034f m406c() {
        return (AbstractC3034f) getCompleter();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2853s trySplit;
        InterfaceC2853s interfaceC2853s = this.f1020b;
        long estimateSize = interfaceC2853s.estimateSize();
        long j = this.f1021c;
        if (j == 0) {
            j = m402h(estimateSize);
            this.f1021c = j;
        }
        boolean z = false;
        AbstractC3034f abstractC3034f = this;
        while (estimateSize > j && (trySplit = interfaceC2853s.trySplit()) != null) {
            AbstractC3034f mo371f = abstractC3034f.mo371f(trySplit);
            abstractC3034f.f1022d = mo371f;
            AbstractC3034f mo371f2 = abstractC3034f.mo371f(interfaceC2853s);
            abstractC3034f.f1023e = mo371f2;
            abstractC3034f.setPendingCount(1);
            if (z) {
                interfaceC2853s = trySplit;
                abstractC3034f = mo371f;
                mo371f = mo371f2;
            } else {
                abstractC3034f = mo371f2;
            }
            z = !z;
            mo371f.fork();
            estimateSize = interfaceC2853s.estimateSize();
        }
        abstractC3034f.mo403g(abstractC3034f.mo372a());
        abstractC3034f.tryComplete();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public boolean m405d() {
        return this.f1022d == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public boolean m404e() {
        return m406c() == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public abstract AbstractC3034f mo371f(InterfaceC2853s interfaceC2853s);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public void mo403g(Object obj) {
        this.f1024f = obj;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return this.f1024f;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        this.f1020b = null;
        this.f1023e = null;
        this.f1022d = null;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    protected void setRawResult(Object obj) {
        if (obj != null) {
            throw new IllegalStateException();
        }
    }
}
