package p033j$.util.stream;

import java.util.concurrent.atomic.AtomicReference;
import p033j$.util.InterfaceC2908s;
/* renamed from: j$.util.stream.d */
/* loaded from: classes2.dex */
abstract class AbstractC3077d extends AbstractC3089f {

    /* renamed from: h */
    protected final AtomicReference f988h;

    /* renamed from: i */
    protected volatile boolean f989i;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3077d(AbstractC3077d abstractC3077d, InterfaceC2908s interfaceC2908s) {
        super(abstractC3077d, interfaceC2908s);
        this.f988h = abstractC3077d.f988h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3077d(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s) {
        super(abstractC3206y2, interfaceC2908s);
        this.f988h = new AtomicReference(null);
    }

    @Override // p033j$.util.stream.AbstractC3089f
    /* renamed from: b */
    public Object mo425b() {
        if (m422e()) {
            Object obj = this.f988h.get();
            return obj == null ? mo388k() : obj;
        }
        return super.mo425b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x006b, code lost:
        r8 = r7.mo390a();
     */
    @Override // p033j$.util.stream.AbstractC3089f, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void compute() {
        /*
            r10 = this;
            j$.util.s r0 = r10.f1024b
            long r1 = r0.estimateSize()
            long r3 = r10.f1025c
            r5 = 0
            int r5 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r5 == 0) goto Lf
            goto L15
        Lf:
            long r3 = p033j$.util.stream.AbstractC3089f.m420h(r1)
            r10.f1025c = r3
        L15:
            r5 = 0
            java.util.concurrent.atomic.AtomicReference r6 = r10.f988h
            r7 = r10
        L19:
            java.lang.Object r8 = r6.get()
            if (r8 != 0) goto L6f
            boolean r8 = r7.f989i
            if (r8 != 0) goto L34
            j$.util.stream.f r9 = r7.m424c()
        L27:
            j$.util.stream.d r9 = (p033j$.util.stream.AbstractC3077d) r9
            if (r8 != 0) goto L34
            if (r9 == 0) goto L34
            boolean r8 = r9.f989i
            j$.util.stream.f r9 = r9.m424c()
            goto L27
        L34:
            if (r8 == 0) goto L3b
            java.lang.Object r8 = r7.mo388k()
            goto L6f
        L3b:
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 <= 0) goto L6b
            j$.util.s r1 = r0.trySplit()
            if (r1 != 0) goto L46
            goto L6b
        L46:
            j$.util.stream.f r2 = r7.mo389f(r1)
            j$.util.stream.d r2 = (p033j$.util.stream.AbstractC3077d) r2
            r7.f1026d = r2
            j$.util.stream.f r8 = r7.mo389f(r0)
            j$.util.stream.d r8 = (p033j$.util.stream.AbstractC3077d) r8
            r7.f1027e = r8
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
            java.lang.Object r8 = r7.mo390a()
        L6f:
            r7.mo421g(r8)
            r7.tryComplete()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.util.stream.AbstractC3077d.compute():void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3089f
    /* renamed from: g */
    public void mo421g(Object obj) {
        if (!m422e()) {
            super.mo421g(obj);
        } else if (obj != null) {
            this.f988h.compareAndSet(null, obj);
        }
    }

    @Override // p033j$.util.stream.AbstractC3089f, java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return mo425b();
    }

    /* renamed from: i */
    protected void mo448i() {
        this.f989i = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: j */
    public void m447j() {
        AbstractC3077d abstractC3077d = this;
        for (AbstractC3077d abstractC3077d2 = (AbstractC3077d) m424c(); abstractC3077d2 != null; abstractC3077d2 = (AbstractC3077d) abstractC3077d2.m424c()) {
            if (abstractC3077d2.f1026d == abstractC3077d) {
                AbstractC3077d abstractC3077d3 = (AbstractC3077d) abstractC3077d2.f1027e;
                if (!abstractC3077d3.f989i) {
                    abstractC3077d3.mo448i();
                }
            }
            abstractC3077d = abstractC3077d2;
        }
    }

    /* renamed from: k */
    protected abstract Object mo388k();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: l */
    public void m446l(Object obj) {
        if (obj != null) {
            this.f988h.compareAndSet(null, obj);
        }
    }
}
