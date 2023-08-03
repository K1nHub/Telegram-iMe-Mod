package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import java.util.concurrent.ForkJoinPool;
import p033j$.util.InterfaceC2853s;
/* renamed from: j$.util.stream.f */
/* loaded from: classes2.dex */
abstract class AbstractC3034f extends CountedCompleter {

    /* renamed from: g */
    static final int f1021g = ForkJoinPool.getCommonPoolParallelism() << 2;

    /* renamed from: a */
    protected final AbstractC3151y2 f1022a;

    /* renamed from: b */
    protected InterfaceC2853s f1023b;

    /* renamed from: c */
    protected long f1024c;

    /* renamed from: d */
    protected AbstractC3034f f1025d;

    /* renamed from: e */
    protected AbstractC3034f f1026e;

    /* renamed from: f */
    private Object f1027f;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3034f(AbstractC3034f abstractC3034f, InterfaceC2853s interfaceC2853s) {
        super(abstractC3034f);
        this.f1023b = interfaceC2853s;
        this.f1022a = abstractC3034f.f1022a;
        this.f1024c = abstractC3034f.f1024c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3034f(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        super(null);
        this.f1022a = abstractC3151y2;
        this.f1023b = interfaceC2853s;
        this.f1024c = 0L;
    }

    /* renamed from: h */
    public static long m420h(long j) {
        long j2 = j / f1021g;
        if (j2 > 0) {
            return j2;
        }
        return 1L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract Object mo390a();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public Object mo425b() {
        return this.f1027f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public AbstractC3034f m424c() {
        return (AbstractC3034f) getCompleter();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2853s trySplit;
        InterfaceC2853s interfaceC2853s = this.f1023b;
        long estimateSize = interfaceC2853s.estimateSize();
        long j = this.f1024c;
        if (j == 0) {
            j = m420h(estimateSize);
            this.f1024c = j;
        }
        boolean z = false;
        AbstractC3034f abstractC3034f = this;
        while (estimateSize > j && (trySplit = interfaceC2853s.trySplit()) != null) {
            AbstractC3034f mo389f = abstractC3034f.mo389f(trySplit);
            abstractC3034f.f1025d = mo389f;
            AbstractC3034f mo389f2 = abstractC3034f.mo389f(interfaceC2853s);
            abstractC3034f.f1026e = mo389f2;
            abstractC3034f.setPendingCount(1);
            if (z) {
                interfaceC2853s = trySplit;
                abstractC3034f = mo389f;
                mo389f = mo389f2;
            } else {
                abstractC3034f = mo389f2;
            }
            z = !z;
            mo389f.fork();
            estimateSize = interfaceC2853s.estimateSize();
        }
        abstractC3034f.mo421g(abstractC3034f.mo390a());
        abstractC3034f.tryComplete();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public boolean m423d() {
        return this.f1025d == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public boolean m422e() {
        return m424c() == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public abstract AbstractC3034f mo389f(InterfaceC2853s interfaceC2853s);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public void mo421g(Object obj) {
        this.f1027f = obj;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return this.f1027f;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        this.f1023b = null;
        this.f1026e = null;
        this.f1025d = null;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    protected void setRawResult(Object obj) {
        if (obj != null) {
            throw new IllegalStateException();
        }
    }
}
