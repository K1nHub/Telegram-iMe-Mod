package p033j$.util.stream;

import java.util.concurrent.atomic.AtomicReference;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.d */
/* loaded from: classes2.dex */
abstract class AbstractC3018d extends AbstractC3030f {

    /* renamed from: h */
    protected final AtomicReference f1037h;

    /* renamed from: i */
    protected volatile boolean f1038i;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3018d(AbstractC3018d abstractC3018d, Spliterator spliterator) {
        super(abstractC3018d, spliterator);
        this.f1037h = abstractC3018d.f1037h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3018d(AbstractC3147y2 abstractC3147y2, Spliterator spliterator) {
        super(abstractC3147y2, spliterator);
        this.f1037h = new AtomicReference(null);
    }

    @Override // p033j$.util.stream.AbstractC3030f
    /* renamed from: b */
    public Object mo471b() {
        if (m468e()) {
            Object obj = this.f1037h.get();
            return obj == null ? mo434k() : obj;
        }
        return super.mo471b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x006b, code lost:
        r8 = r7.mo436a();
     */
    @Override // p033j$.util.stream.AbstractC3030f, java.util.concurrent.CountedCompleter
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
            long r3 = p033j$.util.stream.AbstractC3030f.m466h(r1)
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
            j$.util.stream.f r9 = r7.m470c()
        L27:
            j$.util.stream.d r9 = (p033j$.util.stream.AbstractC3018d) r9
            if (r8 != 0) goto L34
            if (r9 == 0) goto L34
            boolean r8 = r9.f1038i
            j$.util.stream.f r9 = r9.m470c()
            goto L27
        L34:
            if (r8 == 0) goto L3b
            java.lang.Object r8 = r7.mo434k()
            goto L6f
        L3b:
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 <= 0) goto L6b
            j$.util.Spliterator r1 = r0.trySplit()
            if (r1 != 0) goto L46
            goto L6b
        L46:
            j$.util.stream.f r2 = r7.mo435f(r1)
            j$.util.stream.d r2 = (p033j$.util.stream.AbstractC3018d) r2
            r7.f1075d = r2
            j$.util.stream.f r8 = r7.mo435f(r0)
            j$.util.stream.d r8 = (p033j$.util.stream.AbstractC3018d) r8
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
            java.lang.Object r8 = r7.mo436a()
        L6f:
            r7.mo467g(r8)
            r7.tryComplete()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.util.stream.AbstractC3018d.compute():void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3030f
    /* renamed from: g */
    public void mo467g(Object obj) {
        if (!m468e()) {
            super.mo467g(obj);
        } else if (obj != null) {
            this.f1037h.compareAndSet(null, obj);
        }
    }

    @Override // p033j$.util.stream.AbstractC3030f, java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return mo471b();
    }

    /* renamed from: i */
    protected void mo494i() {
        this.f1038i = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: j */
    public void m493j() {
        AbstractC3018d abstractC3018d = this;
        for (AbstractC3018d abstractC3018d2 = (AbstractC3018d) m470c(); abstractC3018d2 != null; abstractC3018d2 = (AbstractC3018d) abstractC3018d2.m470c()) {
            if (abstractC3018d2.f1075d == abstractC3018d) {
                AbstractC3018d abstractC3018d3 = (AbstractC3018d) abstractC3018d2.f1076e;
                if (!abstractC3018d3.f1038i) {
                    abstractC3018d3.mo494i();
                }
            }
            abstractC3018d = abstractC3018d2;
        }
    }

    /* renamed from: k */
    protected abstract Object mo434k();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: l */
    public void m492l(Object obj) {
        if (obj != null) {
            this.f1037h.compareAndSet(null, obj);
        }
    }
}
