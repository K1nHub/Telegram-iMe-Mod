package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import java.util.concurrent.ForkJoinPool;
import p033j$.util.InterfaceC2908s;
/* renamed from: j$.util.stream.f */
/* loaded from: classes2.dex */
abstract class AbstractC3089f extends CountedCompleter {

    /* renamed from: g */
    static final int f1022g = ForkJoinPool.getCommonPoolParallelism() << 2;

    /* renamed from: a */
    protected final AbstractC3206y2 f1023a;

    /* renamed from: b */
    protected InterfaceC2908s f1024b;

    /* renamed from: c */
    protected long f1025c;

    /* renamed from: d */
    protected AbstractC3089f f1026d;

    /* renamed from: e */
    protected AbstractC3089f f1027e;

    /* renamed from: f */
    private Object f1028f;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3089f(AbstractC3089f abstractC3089f, InterfaceC2908s interfaceC2908s) {
        super(abstractC3089f);
        this.f1024b = interfaceC2908s;
        this.f1023a = abstractC3089f.f1023a;
        this.f1025c = abstractC3089f.f1025c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3089f(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s) {
        super(null);
        this.f1023a = abstractC3206y2;
        this.f1024b = interfaceC2908s;
        this.f1025c = 0L;
    }

    /* renamed from: h */
    public static long m420h(long j) {
        long j2 = j / f1022g;
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
        return this.f1028f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public AbstractC3089f m424c() {
        return (AbstractC3089f) getCompleter();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2908s trySplit;
        InterfaceC2908s interfaceC2908s = this.f1024b;
        long estimateSize = interfaceC2908s.estimateSize();
        long j = this.f1025c;
        if (j == 0) {
            j = m420h(estimateSize);
            this.f1025c = j;
        }
        boolean z = false;
        AbstractC3089f abstractC3089f = this;
        while (estimateSize > j && (trySplit = interfaceC2908s.trySplit()) != null) {
            AbstractC3089f mo389f = abstractC3089f.mo389f(trySplit);
            abstractC3089f.f1026d = mo389f;
            AbstractC3089f mo389f2 = abstractC3089f.mo389f(interfaceC2908s);
            abstractC3089f.f1027e = mo389f2;
            abstractC3089f.setPendingCount(1);
            if (z) {
                interfaceC2908s = trySplit;
                abstractC3089f = mo389f;
                mo389f = mo389f2;
            } else {
                abstractC3089f = mo389f2;
            }
            z = !z;
            mo389f.fork();
            estimateSize = interfaceC2908s.estimateSize();
        }
        abstractC3089f.mo421g(abstractC3089f.mo390a());
        abstractC3089f.tryComplete();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public boolean m423d() {
        return this.f1026d == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public boolean m422e() {
        return m424c() == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public abstract AbstractC3089f mo389f(InterfaceC2908s interfaceC2908s);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public void mo421g(Object obj) {
        this.f1028f = obj;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return this.f1028f;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        this.f1024b = null;
        this.f1027e = null;
        this.f1026d = null;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    protected void setRawResult(Object obj) {
        if (obj != null) {
            throw new IllegalStateException();
        }
    }
}
