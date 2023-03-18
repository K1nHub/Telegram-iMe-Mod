package p034j$.util.stream;

import java.util.concurrent.atomic.AtomicReference;
import p034j$.util.InterfaceC2611s;
/* renamed from: j$.util.stream.d */
/* loaded from: classes2.dex */
abstract class AbstractC2780d extends AbstractC2792f {

    /* renamed from: h */
    protected final AtomicReference f898h;

    /* renamed from: i */
    protected volatile boolean f899i;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2780d(AbstractC2780d abstractC2780d, InterfaceC2611s interfaceC2611s) {
        super(abstractC2780d, interfaceC2611s);
        this.f898h = abstractC2780d.f898h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2780d(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s) {
        super(abstractC2909y2, interfaceC2611s);
        this.f898h = new AtomicReference(null);
    }

    @Override // p034j$.util.stream.AbstractC2792f
    /* renamed from: b */
    public Object mo422b() {
        if (m419e()) {
            Object obj = this.f898h.get();
            return obj == null ? mo385k() : obj;
        }
        return super.mo422b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x006b, code lost:
        r8 = r7.mo387a();
     */
    @Override // p034j$.util.stream.AbstractC2792f, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void compute() {
        /*
            r10 = this;
            j$.util.s r0 = r10.f934b
            long r1 = r0.estimateSize()
            long r3 = r10.f935c
            r5 = 0
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto Lf
            goto L15
        Lf:
            long r3 = p034j$.util.stream.AbstractC2792f.m417h(r1)
            r10.f935c = r3
        L15:
            r5 = 0
            java.util.concurrent.atomic.AtomicReference r6 = r10.f898h
            r7 = r10
        L19:
            java.lang.Object r8 = r6.get()
            if (r8 != 0) goto L6f
            boolean r8 = r7.f899i
            if (r8 != 0) goto L34
            j$.util.stream.f r9 = r7.m421c()
        L27:
            j$.util.stream.d r9 = (p034j$.util.stream.AbstractC2780d) r9
            if (r8 != 0) goto L34
            if (r9 == 0) goto L34
            boolean r8 = r9.f899i
            j$.util.stream.f r9 = r9.m421c()
            goto L27
        L34:
            if (r8 == 0) goto L3b
            java.lang.Object r8 = r7.mo385k()
            goto L6f
        L3b:
            int r8 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r8 <= 0) goto L6b
            j$.util.s r1 = r0.trySplit()
            if (r1 != 0) goto L46
            goto L6b
        L46:
            j$.util.stream.f r2 = r7.mo386f(r1)
            j$.util.stream.d r2 = (p034j$.util.stream.AbstractC2780d) r2
            r7.f936d = r2
            j$.util.stream.f r8 = r7.mo386f(r0)
            j$.util.stream.d r8 = (p034j$.util.stream.AbstractC2780d) r8
            r7.f937e = r8
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
            java.lang.Object r8 = r7.mo387a()
        L6f:
            r7.mo418g(r8)
            r7.tryComplete()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p034j$.util.stream.AbstractC2780d.compute():void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2792f
    /* renamed from: g */
    public void mo418g(Object obj) {
        if (!m419e()) {
            super.mo418g(obj);
        } else if (obj != null) {
            this.f898h.compareAndSet(null, obj);
        }
    }

    @Override // p034j$.util.stream.AbstractC2792f, java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return mo422b();
    }

    /* renamed from: i */
    protected void mo445i() {
        this.f899i = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: j */
    public void m444j() {
        AbstractC2780d abstractC2780d = this;
        for (AbstractC2780d abstractC2780d2 = (AbstractC2780d) m421c(); abstractC2780d2 != null; abstractC2780d2 = (AbstractC2780d) abstractC2780d2.m421c()) {
            if (abstractC2780d2.f936d == abstractC2780d) {
                AbstractC2780d abstractC2780d3 = (AbstractC2780d) abstractC2780d2.f937e;
                if (!abstractC2780d3.f899i) {
                    abstractC2780d3.mo445i();
                }
            }
            abstractC2780d = abstractC2780d2;
        }
    }

    /* renamed from: k */
    protected abstract Object mo385k();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: l */
    public void m443l(Object obj) {
        if (obj != null) {
            this.f898h.compareAndSet(null, obj);
        }
    }
}
