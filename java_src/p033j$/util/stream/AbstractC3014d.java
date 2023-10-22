package p033j$.util.stream;

import java.util.concurrent.atomic.AtomicReference;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.d */
/* loaded from: classes2.dex */
abstract class AbstractC3014d extends AbstractC3026f {

    /* renamed from: h */
    protected final AtomicReference f1037h;

    /* renamed from: i */
    protected volatile boolean f1038i;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3014d(AbstractC3014d abstractC3014d, Spliterator spliterator) {
        super(abstractC3014d, spliterator);
        this.f1037h = abstractC3014d.f1037h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3014d(AbstractC3143y2 abstractC3143y2, Spliterator spliterator) {
        super(abstractC3143y2, spliterator);
        this.f1037h = new AtomicReference(null);
    }

    @Override // p033j$.util.stream.AbstractC3026f
    /* renamed from: b */
    public Object mo470b() {
        if (m467e()) {
            Object obj = this.f1037h.get();
            return obj == null ? mo433k() : obj;
        }
        return super.mo470b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x006b, code lost:
        r8 = r7.mo435a();
     */
    @Override // p033j$.util.stream.AbstractC3026f, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void compute() {
        /*
            r10 = this;
            j$.util.Spliterator r0 = r10.f1073b
            long r1 = r0.estimateSize()
            long r3 = r10.f1074c
            r5 = 0
            int r5 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r5 == 0) goto Lf
            goto L15
        Lf:
            long r3 = p033j$.util.stream.AbstractC3026f.m465h(r1)
            r10.f1074c = r3
        L15:
            r5 = 0
            java.util.concurrent.atomic.AtomicReference r6 = r10.f1037h
            r7 = r10
        L19:
            java.lang.Object r8 = r6.get()
            if (r8 != 0) goto L6f
            boolean r8 = r7.f1038i
            if (r8 != 0) goto L34
            j$.util.stream.f r9 = r7.m469c()
        L27:
            j$.util.stream.d r9 = (p033j$.util.stream.AbstractC3014d) r9
            if (r8 != 0) goto L34
            if (r9 == 0) goto L34
            boolean r8 = r9.f1038i
            j$.util.stream.f r9 = r9.m469c()
            goto L27
        L34:
            if (r8 == 0) goto L3b
            java.lang.Object r8 = r7.mo433k()
            goto L6f
        L3b:
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 <= 0) goto L6b
            j$.util.Spliterator r1 = r0.trySplit()
            if (r1 != 0) goto L46
            goto L6b
        L46:
            j$.util.stream.f r2 = r7.mo434f(r1)
            j$.util.stream.d r2 = (p033j$.util.stream.AbstractC3014d) r2
            r7.f1075d = r2
            j$.util.stream.f r8 = r7.mo434f(r0)
            j$.util.stream.d r8 = (p033j$.util.stream.AbstractC3014d) r8
            r7.f1076e = r8
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
            java.lang.Object r8 = r7.mo435a()
        L6f:
            r7.mo466g(r8)
            r7.tryComplete()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.util.stream.AbstractC3014d.compute():void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3026f
    /* renamed from: g */
    public void mo466g(Object obj) {
        if (!m467e()) {
            super.mo466g(obj);
        } else if (obj != null) {
            this.f1037h.compareAndSet(null, obj);
        }
    }

    @Override // p033j$.util.stream.AbstractC3026f, java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return mo470b();
    }

    /* renamed from: i */
    protected void mo493i() {
        this.f1038i = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: j */
    public void m492j() {
        AbstractC3014d abstractC3014d = this;
        for (AbstractC3014d abstractC3014d2 = (AbstractC3014d) m469c(); abstractC3014d2 != null; abstractC3014d2 = (AbstractC3014d) abstractC3014d2.m469c()) {
            if (abstractC3014d2.f1075d == abstractC3014d) {
                AbstractC3014d abstractC3014d3 = (AbstractC3014d) abstractC3014d2.f1076e;
                if (!abstractC3014d3.f1038i) {
                    abstractC3014d3.mo493i();
                }
            }
            abstractC3014d = abstractC3014d2;
        }
    }

    /* renamed from: k */
    protected abstract Object mo433k();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: l */
    public void m491l(Object obj) {
        if (obj != null) {
            this.f1037h.compareAndSet(null, obj);
        }
    }
}
