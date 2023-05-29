package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import java.util.concurrent.ForkJoinPool;
import p034j$.util.InterfaceC2727s;
/* renamed from: j$.util.stream.f */
/* loaded from: classes2.dex */
abstract class AbstractC2908f extends CountedCompleter {

    /* renamed from: g */
    static final int f936g = ForkJoinPool.getCommonPoolParallelism() << 2;

    /* renamed from: a */
    protected final AbstractC3025y2 f937a;

    /* renamed from: b */
    protected InterfaceC2727s f938b;

    /* renamed from: c */
    protected long f939c;

    /* renamed from: d */
    protected AbstractC2908f f940d;

    /* renamed from: e */
    protected AbstractC2908f f941e;

    /* renamed from: f */
    private Object f942f;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2908f(AbstractC2908f abstractC2908f, InterfaceC2727s interfaceC2727s) {
        super(abstractC2908f);
        this.f938b = interfaceC2727s;
        this.f937a = abstractC2908f.f937a;
        this.f939c = abstractC2908f.f939c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2908f(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s) {
        super(null);
        this.f937a = abstractC3025y2;
        this.f938b = interfaceC2727s;
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
    public AbstractC2908f m406c() {
        return (AbstractC2908f) getCompleter();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2727s trySplit;
        InterfaceC2727s interfaceC2727s = this.f938b;
        long estimateSize = interfaceC2727s.estimateSize();
        long j = this.f939c;
        if (j == 0) {
            j = m402h(estimateSize);
            this.f939c = j;
        }
        boolean z = false;
        AbstractC2908f abstractC2908f = this;
        while (estimateSize > j && (trySplit = interfaceC2727s.trySplit()) != null) {
            AbstractC2908f mo371f = abstractC2908f.mo371f(trySplit);
            abstractC2908f.f940d = mo371f;
            AbstractC2908f mo371f2 = abstractC2908f.mo371f(interfaceC2727s);
            abstractC2908f.f941e = mo371f2;
            abstractC2908f.setPendingCount(1);
            if (z) {
                interfaceC2727s = trySplit;
                abstractC2908f = mo371f;
                mo371f = mo371f2;
            } else {
                abstractC2908f = mo371f2;
            }
            z = !z;
            mo371f.fork();
            estimateSize = interfaceC2727s.estimateSize();
        }
        abstractC2908f.mo403g(abstractC2908f.mo372a());
        abstractC2908f.tryComplete();
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
    public abstract AbstractC2908f mo371f(InterfaceC2727s interfaceC2727s);

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
