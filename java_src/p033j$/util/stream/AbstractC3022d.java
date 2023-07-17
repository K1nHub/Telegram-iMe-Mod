package p033j$.util.stream;

import java.util.concurrent.atomic.AtomicReference;
import p033j$.util.InterfaceC2853s;
/* renamed from: j$.util.stream.d */
/* loaded from: classes2.dex */
abstract class AbstractC3022d extends AbstractC3034f {

    /* renamed from: h */
    protected final AtomicReference f984h;

    /* renamed from: i */
    protected volatile boolean f985i;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3022d(AbstractC3022d abstractC3022d, InterfaceC2853s interfaceC2853s) {
        super(abstractC3022d, interfaceC2853s);
        this.f984h = abstractC3022d.f984h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3022d(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        super(abstractC3151y2, interfaceC2853s);
        this.f984h = new AtomicReference(null);
    }

    @Override // p033j$.util.stream.AbstractC3034f
    /* renamed from: b */
    public Object mo407b() {
        if (m404e()) {
            Object obj = this.f984h.get();
            return obj == null ? mo370k() : obj;
        }
        return super.mo407b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x006b, code lost:
        r8 = r7.mo372a();
     */
    @Override // p033j$.util.stream.AbstractC3034f, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void compute() {
        /*
            r10 = this;
            j$.util.s r0 = r10.f1020b
            long r1 = r0.estimateSize()
            long r3 = r10.f1021c
            r5 = 0
            int r5 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r5 == 0) goto Lf
            goto L15
        Lf:
            long r3 = p033j$.util.stream.AbstractC3034f.m402h(r1)
            r10.f1021c = r3
        L15:
            r5 = 0
            java.util.concurrent.atomic.AtomicReference r6 = r10.f984h
            r7 = r10
        L19:
            java.lang.Object r8 = r6.get()
            if (r8 != 0) goto L6f
            boolean r8 = r7.f985i
            if (r8 != 0) goto L34
            j$.util.stream.f r9 = r7.m406c()
        L27:
            j$.util.stream.d r9 = (p033j$.util.stream.AbstractC3022d) r9
            if (r8 != 0) goto L34
            if (r9 == 0) goto L34
            boolean r8 = r9.f985i
            j$.util.stream.f r9 = r9.m406c()
            goto L27
        L34:
            if (r8 == 0) goto L3b
            java.lang.Object r8 = r7.mo370k()
            goto L6f
        L3b:
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 <= 0) goto L6b
            j$.util.s r1 = r0.trySplit()
            if (r1 != 0) goto L46
            goto L6b
        L46:
            j$.util.stream.f r2 = r7.mo371f(r1)
            j$.util.stream.d r2 = (p033j$.util.stream.AbstractC3022d) r2
            r7.f1022d = r2
            j$.util.stream.f r8 = r7.mo371f(r0)
            j$.util.stream.d r8 = (p033j$.util.stream.AbstractC3022d) r8
            r7.f1023e = r8
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
            java.lang.Object r8 = r7.mo372a()
        L6f:
            r7.mo403g(r8)
            r7.tryComplete()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.util.stream.AbstractC3022d.compute():void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3034f
    /* renamed from: g */
    public void mo403g(Object obj) {
        if (!m404e()) {
            super.mo403g(obj);
        } else if (obj != null) {
            this.f984h.compareAndSet(null, obj);
        }
    }

    @Override // p033j$.util.stream.AbstractC3034f, java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return mo407b();
    }

    /* renamed from: i */
    protected void mo430i() {
        this.f985i = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: j */
    public void m429j() {
        AbstractC3022d abstractC3022d = this;
        for (AbstractC3022d abstractC3022d2 = (AbstractC3022d) m406c(); abstractC3022d2 != null; abstractC3022d2 = (AbstractC3022d) abstractC3022d2.m406c()) {
            if (abstractC3022d2.f1022d == abstractC3022d) {
                AbstractC3022d abstractC3022d3 = (AbstractC3022d) abstractC3022d2.f1023e;
                if (!abstractC3022d3.f985i) {
                    abstractC3022d3.mo430i();
                }
            }
            abstractC3022d = abstractC3022d2;
        }
    }

    /* renamed from: k */
    protected abstract Object mo370k();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: l */
    public void m428l(Object obj) {
        if (obj != null) {
            this.f984h.compareAndSet(null, obj);
        }
    }
}
