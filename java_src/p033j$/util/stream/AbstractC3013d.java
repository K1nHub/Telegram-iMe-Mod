package p033j$.util.stream;

import java.util.concurrent.atomic.AtomicReference;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.d */
/* loaded from: classes2.dex */
abstract class AbstractC3013d extends AbstractC3025f {

    /* renamed from: h */
    protected final AtomicReference f1037h;

    /* renamed from: i */
    protected volatile boolean f1038i;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3013d(AbstractC3013d abstractC3013d, Spliterator spliterator) {
        super(abstractC3013d, spliterator);
        this.f1037h = abstractC3013d.f1037h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3013d(AbstractC3142y2 abstractC3142y2, Spliterator spliterator) {
        super(abstractC3142y2, spliterator);
        this.f1037h = new AtomicReference(null);
    }

    @Override // p033j$.util.stream.AbstractC3025f
    /* renamed from: b */
    public Object mo474b() {
        if (m471e()) {
            Object obj = this.f1037h.get();
            return obj == null ? mo437k() : obj;
        }
        return super.mo474b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x006b, code lost:
        r8 = r7.mo439a();
     */
    @Override // p033j$.util.stream.AbstractC3025f, java.util.concurrent.CountedCompleter
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
            long r3 = p033j$.util.stream.AbstractC3025f.m469h(r1)
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
            j$.util.stream.f r9 = r7.m473c()
        L27:
            j$.util.stream.d r9 = (p033j$.util.stream.AbstractC3013d) r9
            if (r8 != 0) goto L34
            if (r9 == 0) goto L34
            boolean r8 = r9.f1038i
            j$.util.stream.f r9 = r9.m473c()
            goto L27
        L34:
            if (r8 == 0) goto L3b
            java.lang.Object r8 = r7.mo437k()
            goto L6f
        L3b:
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 <= 0) goto L6b
            j$.util.Spliterator r1 = r0.trySplit()
            if (r1 != 0) goto L46
            goto L6b
        L46:
            j$.util.stream.f r2 = r7.mo438f(r1)
            j$.util.stream.d r2 = (p033j$.util.stream.AbstractC3013d) r2
            r7.f1075d = r2
            j$.util.stream.f r8 = r7.mo438f(r0)
            j$.util.stream.d r8 = (p033j$.util.stream.AbstractC3013d) r8
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
            java.lang.Object r8 = r7.mo439a()
        L6f:
            r7.mo470g(r8)
            r7.tryComplete()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.util.stream.AbstractC3013d.compute():void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3025f
    /* renamed from: g */
    public void mo470g(Object obj) {
        if (!m471e()) {
            super.mo470g(obj);
        } else if (obj != null) {
            this.f1037h.compareAndSet(null, obj);
        }
    }

    @Override // p033j$.util.stream.AbstractC3025f, java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return mo474b();
    }

    /* renamed from: i */
    protected void mo497i() {
        this.f1038i = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: j */
    public void m496j() {
        AbstractC3013d abstractC3013d = this;
        for (AbstractC3013d abstractC3013d2 = (AbstractC3013d) m473c(); abstractC3013d2 != null; abstractC3013d2 = (AbstractC3013d) abstractC3013d2.m473c()) {
            if (abstractC3013d2.f1075d == abstractC3013d) {
                AbstractC3013d abstractC3013d3 = (AbstractC3013d) abstractC3013d2.f1076e;
                if (!abstractC3013d3.f1038i) {
                    abstractC3013d3.mo497i();
                }
            }
            abstractC3013d = abstractC3013d2;
        }
    }

    /* renamed from: k */
    protected abstract Object mo437k();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: l */
    public void m495l(Object obj) {
        if (obj != null) {
            this.f1037h.compareAndSet(null, obj);
        }
    }
}
