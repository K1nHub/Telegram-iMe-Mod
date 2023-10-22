package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2826p;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.n2 */
/* loaded from: classes2.dex */
public final class C3077n2 extends C2989Y3 implements InterfaceC3142y1, InterfaceC3100r1 {
    @Override // p033j$.util.stream.C2989Y3
    /* renamed from: A */
    public Spliterator.InterfaceC2774c mo430A() {
        return super.spliterator();
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: B */
    public /* synthetic */ void accept(Long l) {
        AbstractC3082o1.m420c(this, l);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: C */
    public /* synthetic */ void mo385i(Long[] lArr, int i) {
        AbstractC3082o1.m413j(this, lArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: D */
    public /* synthetic */ InterfaceC3142y1 mo381q(long j, long j2, IntFunction intFunction) {
        return AbstractC3082o1.m407p(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC3106s1
    /* renamed from: a */
    public InterfaceC2851A1 mo386a() {
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3100r1, p033j$.util.stream.InterfaceC3106s1
    /* renamed from: a */
    public InterfaceC3142y1 mo386a() {
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public /* synthetic */ void accept(double d) {
        AbstractC3082o1.m417f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public /* synthetic */ void accept(int i) {
        AbstractC3082o1.m419d(this);
        throw null;
    }

    @Override // p033j$.util.stream.C2989Y3, p033j$.util.function.InterfaceC2826p
    public void accept(long j) {
        super.accept(j);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3148z1, p033j$.util.stream.InterfaceC2851A1
    /* renamed from: b */
    public InterfaceC3148z1 mo343b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.AbstractC2994Z3, p033j$.util.stream.InterfaceC3148z1
    /* renamed from: d */
    public void mo341d(Object obj, int i) {
        super.mo341d((long[]) obj, i);
    }

    @Override // p033j$.util.stream.AbstractC2994Z3, p033j$.util.stream.InterfaceC3148z1
    /* renamed from: e */
    public Object mo340e() {
        return (long[]) super.mo340e();
    }

    @Override // p033j$.util.stream.AbstractC2994Z3, p033j$.util.stream.InterfaceC3148z1
    /* renamed from: g */
    public void mo339g(Object obj) {
        super.mo339g((InterfaceC2826p) obj);
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: l */
    public void mo384l() {
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public void mo360m(long j) {
        clear();
        m522w(j);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: n */
    public /* synthetic */ int mo383n() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: o */
    public /* synthetic */ boolean mo359o() {
        return false;
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: p */
    public /* synthetic */ Object[] mo382p(IntFunction intFunction) {
        return AbstractC3082o1.m416g(this, intFunction);
    }

    @Override // p033j$.util.stream.C2989Y3, p033j$.util.stream.AbstractC2994Z3, java.lang.Iterable, p033j$.lang.InterfaceC2670e
    public Spliterator.InterfaceC2775d spliterator() {
        return super.spliterator();
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2851A1 mo343b(int i) {
        mo343b(i);
        throw null;
    }

    @Override // p033j$.util.stream.C2989Y3, p033j$.util.stream.AbstractC2994Z3, java.lang.Iterable, p033j$.lang.InterfaceC2670e
    public Spliterator spliterator() {
        return super.spliterator();
    }
}
