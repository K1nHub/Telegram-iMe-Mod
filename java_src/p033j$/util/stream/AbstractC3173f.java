package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import java.util.concurrent.ForkJoinPool;
import p033j$.util.InterfaceC2992s;
/* renamed from: j$.util.stream.f */
/* loaded from: classes2.dex */
abstract class AbstractC3173f extends CountedCompleter {

    /* renamed from: g */
    static final int f1031g = ForkJoinPool.getCommonPoolParallelism() << 2;

    /* renamed from: a */
    protected final AbstractC3290y2 f1032a;

    /* renamed from: b */
    protected InterfaceC2992s f1033b;

    /* renamed from: c */
    protected long f1034c;

    /* renamed from: d */
    protected AbstractC3173f f1035d;

    /* renamed from: e */
    protected AbstractC3173f f1036e;

    /* renamed from: f */
    private Object f1037f;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3173f(AbstractC3173f abstractC3173f, InterfaceC2992s interfaceC2992s) {
        super(abstractC3173f);
        this.f1033b = interfaceC2992s;
        this.f1032a = abstractC3173f.f1032a;
        this.f1034c = abstractC3173f.f1034c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3173f(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s) {
        super(null);
        this.f1032a = abstractC3290y2;
        this.f1033b = interfaceC2992s;
        this.f1034c = 0L;
    }

    /* renamed from: h */
    public static long m420h(long j) {
        long j2 = j / f1031g;
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
        return this.f1037f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public AbstractC3173f m424c() {
        return (AbstractC3173f) getCompleter();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2992s trySplit;
        InterfaceC2992s interfaceC2992s = this.f1033b;
        long estimateSize = interfaceC2992s.estimateSize();
        long j = this.f1034c;
        if (j == 0) {
            j = m420h(estimateSize);
            this.f1034c = j;
        }
        boolean z = false;
        AbstractC3173f abstractC3173f = this;
        while (estimateSize > j && (trySplit = interfaceC2992s.trySplit()) != null) {
            AbstractC3173f mo389f = abstractC3173f.mo389f(trySplit);
            abstractC3173f.f1035d = mo389f;
            AbstractC3173f mo389f2 = abstractC3173f.mo389f(interfaceC2992s);
            abstractC3173f.f1036e = mo389f2;
            abstractC3173f.setPendingCount(1);
            if (z) {
                interfaceC2992s = trySplit;
                abstractC3173f = mo389f;
                mo389f = mo389f2;
            } else {
                abstractC3173f = mo389f2;
            }
            z = !z;
            mo389f.fork();
            estimateSize = interfaceC2992s.estimateSize();
        }
        abstractC3173f.mo421g(abstractC3173f.mo390a());
        abstractC3173f.tryComplete();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public boolean m423d() {
        return this.f1035d == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public boolean m422e() {
        return m424c() == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public abstract AbstractC3173f mo389f(InterfaceC2992s interfaceC2992s);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public void mo421g(Object obj) {
        this.f1037f = obj;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return this.f1037f;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        this.f1033b = null;
        this.f1036e = null;
        this.f1035d = null;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    protected void setRawResult(Object obj) {
        if (obj != null) {
            throw new IllegalStateException();
        }
    }
}
