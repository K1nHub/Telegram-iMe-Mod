package p035j$.util.stream;

import java.util.concurrent.atomic.AtomicReference;
import p035j$.util.InterfaceC2701s;
/* renamed from: j$.util.stream.d */
/* loaded from: classes2.dex */
abstract class AbstractC2870d extends AbstractC2882f {

    /* renamed from: h */
    protected final AtomicReference f904h;

    /* renamed from: i */
    protected volatile boolean f905i;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2870d(AbstractC2870d abstractC2870d, InterfaceC2701s interfaceC2701s) {
        super(abstractC2870d, interfaceC2701s);
        this.f904h = abstractC2870d.f904h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2870d(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s) {
        super(abstractC2999y2, interfaceC2701s);
        this.f904h = new AtomicReference(null);
    }

    @Override // p035j$.util.stream.AbstractC2882f
    /* renamed from: b */
    public Object mo416b() {
        if (m413e()) {
            Object obj = this.f904h.get();
            return obj == null ? mo379k() : obj;
        }
        return super.mo416b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x006b, code lost:
        r8 = r7.mo381a();
     */
    @Override // p035j$.util.stream.AbstractC2882f, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void compute() {
        /*
            r10 = this;
            j$.util.s r0 = r10.f940b
            long r1 = r0.estimateSize()
            long r3 = r10.f941c
            r5 = 0
            int r5 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r5 == 0) goto Lf
            goto L15
        Lf:
            long r3 = p035j$.util.stream.AbstractC2882f.m411h(r1)
            r10.f941c = r3
        L15:
            r5 = 0
            java.util.concurrent.atomic.AtomicReference r6 = r10.f904h
            r7 = r10
        L19:
            java.lang.Object r8 = r6.get()
            if (r8 != 0) goto L6f
            boolean r8 = r7.f905i
            if (r8 != 0) goto L34
            j$.util.stream.f r9 = r7.m415c()
        L27:
            j$.util.stream.d r9 = (p035j$.util.stream.AbstractC2870d) r9
            if (r8 != 0) goto L34
            if (r9 == 0) goto L34
            boolean r8 = r9.f905i
            j$.util.stream.f r9 = r9.m415c()
            goto L27
        L34:
            if (r8 == 0) goto L3b
            java.lang.Object r8 = r7.mo379k()
            goto L6f
        L3b:
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 <= 0) goto L6b
            j$.util.s r1 = r0.trySplit()
            if (r1 != 0) goto L46
            goto L6b
        L46:
            j$.util.stream.f r2 = r7.mo380f(r1)
            j$.util.stream.d r2 = (p035j$.util.stream.AbstractC2870d) r2
            r7.f942d = r2
            j$.util.stream.f r8 = r7.mo380f(r0)
            j$.util.stream.d r8 = (p035j$.util.stream.AbstractC2870d) r8
            r7.f943e = r8
            r9 = 1
            r7.setPendingCount(r9)
            if (r5 == 0) goto L60
            r0 = r1
            r7 = r2
            r2 = r8
            goto L61
        L60:
            r7 = r8
        L61:
            r5 = r5 ^ 1
            r2.fork()
            long r1 = r0.estimateSize()
            goto L19
        L6b:
            java.lang.Object r8 = r7.mo381a()
        L6f:
            r7.mo412g(r8)
            r7.tryComplete()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p035j$.util.stream.AbstractC2870d.compute():void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p035j$.util.stream.AbstractC2882f
    /* renamed from: g */
    public void mo412g(Object obj) {
        if (!m413e()) {
            super.mo412g(obj);
        } else if (obj != null) {
            this.f904h.compareAndSet(null, obj);
        }
    }

    @Override // p035j$.util.stream.AbstractC2882f, java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return mo416b();
    }

    /* renamed from: i */
    protected void mo439i() {
        this.f905i = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: j */
    public void m438j() {
        AbstractC2870d abstractC2870d = this;
        for (AbstractC2870d abstractC2870d2 = (AbstractC2870d) m415c(); abstractC2870d2 != null; abstractC2870d2 = (AbstractC2870d) abstractC2870d2.m415c()) {
            if (abstractC2870d2.f942d == abstractC2870d) {
                AbstractC2870d abstractC2870d3 = (AbstractC2870d) abstractC2870d2.f943e;
                if (!abstractC2870d3.f905i) {
                    abstractC2870d3.mo439i();
                }
            }
            abstractC2870d = abstractC2870d2;
        }
    }

    /* renamed from: k */
    protected abstract Object mo379k();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: l */
    public void m437l(Object obj) {
        if (obj != null) {
            this.f904h.compareAndSet(null, obj);
        }
    }
}
