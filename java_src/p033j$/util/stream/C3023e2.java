package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2822l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.e2 */
/* loaded from: classes2.dex */
public final class C3023e2 extends C2979W3 implements InterfaceC3130w1, InterfaceC3094q1 {
    @Override // p033j$.util.stream.C2979W3
    /* renamed from: A */
    public Spliterator.InterfaceC2773b mo478A() {
        return super.spliterator();
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: B */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3082o1.m421b(this, num);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: C */
    public /* synthetic */ void mo385i(Integer[] numArr, int i) {
        AbstractC3082o1.m414i(this, numArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: D */
    public /* synthetic */ InterfaceC3130w1 mo381q(long j, long j2, IntFunction intFunction) {
        return AbstractC3082o1.m408o(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC3106s1
    /* renamed from: a */
    public InterfaceC2851A1 mo386a() {
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3094q1, p033j$.util.stream.InterfaceC3106s1
    /* renamed from: a */
    public InterfaceC3130w1 mo386a() {
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public /* synthetic */ void accept(double d) {
        AbstractC3082o1.m417f(this);
        throw null;
    }

    @Override // p033j$.util.stream.C2979W3, p033j$.util.function.InterfaceC2822l
    public void accept(int i) {
        super.accept(i);
    }

    @Override // p033j$.util.stream.InterfaceC3072m3, p033j$.util.stream.InterfaceC3066l3, p033j$.util.function.InterfaceC2826p
    public /* synthetic */ void accept(long j) {
        AbstractC3082o1.m418e(this);
        throw null;
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
        super.mo341d((int[]) obj, i);
    }

    @Override // p033j$.util.stream.AbstractC2994Z3, p033j$.util.stream.InterfaceC3148z1
    /* renamed from: e */
    public Object mo340e() {
        return (int[]) super.mo340e();
    }

    @Override // p033j$.util.stream.AbstractC2994Z3, p033j$.util.stream.InterfaceC3148z1
    /* renamed from: g */
    public void mo339g(Object obj) {
        super.mo339g((InterfaceC2822l) obj);
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

    @Override // p033j$.util.stream.C2979W3, p033j$.util.stream.AbstractC2994Z3, java.lang.Iterable, p033j$.lang.InterfaceC2670e
    public Spliterator.InterfaceC2775d spliterator() {
        return super.spliterator();
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2851A1 mo343b(int i) {
        mo343b(i);
        throw null;
    }

    @Override // p033j$.util.stream.C2979W3, p033j$.util.stream.AbstractC2994Z3, java.lang.Iterable, p033j$.lang.InterfaceC2670e
    public Spliterator spliterator() {
        return super.spliterator();
    }
}
