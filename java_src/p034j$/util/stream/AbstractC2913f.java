package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import java.util.concurrent.ForkJoinPool;
import p034j$.util.InterfaceC2732s;
/* renamed from: j$.util.stream.f */
/* loaded from: classes2.dex */
abstract class AbstractC2913f extends CountedCompleter {

    /* renamed from: g */
    static final int f936g = ForkJoinPool.getCommonPoolParallelism() << 2;

    /* renamed from: a */
    protected final AbstractC3030y2 f937a;

    /* renamed from: b */
    protected InterfaceC2732s f938b;

    /* renamed from: c */
    protected long f939c;

    /* renamed from: d */
    protected AbstractC2913f f940d;

    /* renamed from: e */
    protected AbstractC2913f f941e;

    /* renamed from: f */
    private Object f942f;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2913f(AbstractC2913f abstractC2913f, InterfaceC2732s interfaceC2732s) {
        super(abstractC2913f);
        this.f938b = interfaceC2732s;
        this.f937a = abstractC2913f.f937a;
        this.f939c = abstractC2913f.f939c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2913f(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s) {
        super(null);
        this.f937a = abstractC3030y2;
        this.f938b = interfaceC2732s;
        this.f939c = 0L;
    }

    /* renamed from: h */
    public static long m402h(long j) {
        long j2 = j / f936g;
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
        return this.f942f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public AbstractC2913f m406c() {
        return (AbstractC2913f) getCompleter();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2732s trySplit;
        InterfaceC2732s interfaceC2732s = this.f938b;
        long estimateSize = interfaceC2732s.estimateSize();
        long j = this.f939c;
        if (j == 0) {
            j = m402h(estimateSize);
            this.f939c = j;
        }
        boolean z = false;
        AbstractC2913f abstractC2913f = this;
        while (estimateSize > j && (trySplit = interfaceC2732s.trySplit()) != null) {
            AbstractC2913f mo371f = abstractC2913f.mo371f(trySplit);
            abstractC2913f.f940d = mo371f;
            AbstractC2913f mo371f2 = abstractC2913f.mo371f(interfaceC2732s);
            abstractC2913f.f941e = mo371f2;
            abstractC2913f.setPendingCount(1);
            if (z) {
                interfaceC2732s = trySplit;
                abstractC2913f = mo371f;
                mo371f = mo371f2;
            } else {
                abstractC2913f = mo371f2;
            }
            z = !z;
            mo371f.fork();
            estimateSize = interfaceC2732s.estimateSize();
        }
        abstractC2913f.mo403g(abstractC2913f.mo372a());
        abstractC2913f.tryComplete();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public boolean m405d() {
        return this.f940d == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public boolean m404e() {
        return m406c() == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public abstract AbstractC2913f mo371f(InterfaceC2732s interfaceC2732s);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public void mo403g(Object obj) {
        this.f942f = obj;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return this.f942f;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        this.f938b = null;
        this.f941e = null;
        this.f940d = null;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    protected void setRawResult(Object obj) {
        if (obj != null) {
            throw new IllegalStateException();
        }
    }
}
