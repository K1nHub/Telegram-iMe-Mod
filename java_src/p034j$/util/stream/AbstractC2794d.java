package p034j$.util.stream;

import java.util.concurrent.atomic.AtomicReference;
import p034j$.util.InterfaceC2625s;
/* renamed from: j$.util.stream.d */
/* loaded from: classes2.dex */
abstract class AbstractC2794d extends AbstractC2806f {

    /* renamed from: h */
    protected final AtomicReference f899h;

    /* renamed from: i */
    protected volatile boolean f900i;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2794d(AbstractC2794d abstractC2794d, InterfaceC2625s interfaceC2625s) {
        super(abstractC2794d, interfaceC2625s);
        this.f899h = abstractC2794d.f899h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2794d(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s) {
        super(abstractC2923y2, interfaceC2625s);
        this.f899h = new AtomicReference(null);
    }

    @Override // p034j$.util.stream.AbstractC2806f
    /* renamed from: b */
    public Object mo421b() {
        if (m418e()) {
            Object obj = this.f899h.get();
            return obj == null ? mo384k() : obj;
        }
        return super.mo421b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x006b, code lost:
        r8 = r7.mo386a();
     */
    @Override // p034j$.util.stream.AbstractC2806f, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void compute() {
        /*
            r10 = this;
            j$.util.s r0 = r10.f935b
            long r1 = r0.estimateSize()
            long r3 = r10.f936c
            r5 = 0
            int r5 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r5 == 0) goto Lf
            goto L15
        Lf:
            long r3 = p034j$.util.stream.AbstractC2806f.m416h(r1)
            r10.f936c = r3
        L15:
            r5 = 0
            java.util.concurrent.atomic.AtomicReference r6 = r10.f899h
            r7 = r10
        L19:
            java.lang.Object r8 = r6.get()
            if (r8 != 0) goto L6f
            boolean r8 = r7.f900i
            if (r8 != 0) goto L34
            j$.util.stream.f r9 = r7.m420c()
        L27:
            j$.util.stream.d r9 = (p034j$.util.stream.AbstractC2794d) r9
            if (r8 != 0) goto L34
            if (r9 == 0) goto L34
            boolean r8 = r9.f900i
            j$.util.stream.f r9 = r9.m420c()
            goto L27
        L34:
            if (r8 == 0) goto L3b
            java.lang.Object r8 = r7.mo384k()
            goto L6f
        L3b:
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 <= 0) goto L6b
            j$.util.s r1 = r0.trySplit()
            if (r1 != 0) goto L46
            goto L6b
        L46:
            j$.util.stream.f r2 = r7.mo385f(r1)
            j$.util.stream.d r2 = (p034j$.util.stream.AbstractC2794d) r2
            r7.f937d = r2
            j$.util.stream.f r8 = r7.mo385f(r0)
            j$.util.stream.d r8 = (p034j$.util.stream.AbstractC2794d) r8
            r7.f938e = r8
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
            java.lang.Object r8 = r7.mo386a()
        L6f:
            r7.mo417g(r8)
            r7.tryComplete()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p034j$.util.stream.AbstractC2794d.compute():void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2806f
    /* renamed from: g */
    public void mo417g(Object obj) {
        if (!m418e()) {
            super.mo417g(obj);
        } else if (obj != null) {
            this.f899h.compareAndSet(null, obj);
        }
    }

    @Override // p034j$.util.stream.AbstractC2806f, java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return mo421b();
    }

    /* renamed from: i */
    protected void mo444i() {
        this.f900i = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: j */
    public void m443j() {
        AbstractC2794d abstractC2794d = this;
        for (AbstractC2794d abstractC2794d2 = (AbstractC2794d) m420c(); abstractC2794d2 != null; abstractC2794d2 = (AbstractC2794d) abstractC2794d2.m420c()) {
            if (abstractC2794d2.f937d == abstractC2794d) {
                AbstractC2794d abstractC2794d3 = (AbstractC2794d) abstractC2794d2.f938e;
                if (!abstractC2794d3.f900i) {
                    abstractC2794d3.mo444i();
                }
            }
            abstractC2794d = abstractC2794d2;
        }
    }

    /* renamed from: k */
    protected abstract Object mo384k();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: l */
    public void m442l(Object obj) {
        if (obj != null) {
            this.f899h.compareAndSet(null, obj);
        }
    }
}
