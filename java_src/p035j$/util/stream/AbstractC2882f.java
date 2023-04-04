package p035j$.util.stream;

import java.util.concurrent.CountedCompleter;
import java.util.concurrent.ForkJoinPool;
import p035j$.util.InterfaceC2701s;
/* renamed from: j$.util.stream.f */
/* loaded from: classes2.dex */
abstract class AbstractC2882f extends CountedCompleter {

    /* renamed from: g */
    static final int f938g = ForkJoinPool.getCommonPoolParallelism() << 2;

    /* renamed from: a */
    protected final AbstractC2999y2 f939a;

    /* renamed from: b */
    protected InterfaceC2701s f940b;

    /* renamed from: c */
    protected long f941c;

    /* renamed from: d */
    protected AbstractC2882f f942d;

    /* renamed from: e */
    protected AbstractC2882f f943e;

    /* renamed from: f */
    private Object f944f;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2882f(AbstractC2882f abstractC2882f, InterfaceC2701s interfaceC2701s) {
        super(abstractC2882f);
        this.f940b = interfaceC2701s;
        this.f939a = abstractC2882f.f939a;
        this.f941c = abstractC2882f.f941c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2882f(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s) {
        super(null);
        this.f939a = abstractC2999y2;
        this.f940b = interfaceC2701s;
        this.f941c = 0L;
    }

    /* renamed from: h */
    public static long m411h(long j) {
        long j2 = j / f938g;
        if (j2 > 0) {
            return j2;
        }
        return 1L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract Object mo381a();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public Object mo416b() {
        return this.f944f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public AbstractC2882f m415c() {
        return (AbstractC2882f) getCompleter();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2701s trySplit;
        InterfaceC2701s interfaceC2701s = this.f940b;
        long estimateSize = interfaceC2701s.estimateSize();
        long j = this.f941c;
        if (j == 0) {
            j = m411h(estimateSize);
            this.f941c = j;
        }
        boolean z = false;
        AbstractC2882f abstractC2882f = this;
        while (estimateSize > j && (trySplit = interfaceC2701s.trySplit()) != null) {
            AbstractC2882f mo380f = abstractC2882f.mo380f(trySplit);
            abstractC2882f.f942d = mo380f;
            AbstractC2882f mo380f2 = abstractC2882f.mo380f(interfaceC2701s);
            abstractC2882f.f943e = mo380f2;
            abstractC2882f.setPendingCount(1);
            if (z) {
                interfaceC2701s = trySplit;
                abstractC2882f = mo380f;
                mo380f = mo380f2;
            } else {
                abstractC2882f = mo380f2;
            }
            z = !z;
            mo380f.fork();
            estimateSize = interfaceC2701s.estimateSize();
        }
        abstractC2882f.mo412g(abstractC2882f.mo381a());
        abstractC2882f.tryComplete();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public boolean m414d() {
        return this.f942d == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public boolean m413e() {
        return m415c() == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public abstract AbstractC2882f mo380f(InterfaceC2701s interfaceC2701s);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public void mo412g(Object obj) {
        this.f944f = obj;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return this.f944f;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        this.f940b = null;
        this.f943e = null;
        this.f942d = null;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    protected void setRawResult(Object obj) {
        if (obj != null) {
            throw new IllegalStateException();
        }
    }
}
