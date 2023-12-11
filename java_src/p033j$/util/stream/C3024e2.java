package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2823l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.e2 */
/* loaded from: classes2.dex */
public final class C3024e2 extends C2980W3 implements InterfaceC3131w1, InterfaceC3095q1 {
    @Override // p033j$.util.stream.C2980W3
    /* renamed from: A */
    public Spliterator.InterfaceC2774b mo479A() {
        return super.spliterator();
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: B */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3083o1.m422b(this, num);
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    /* renamed from: C */
    public /* synthetic */ void mo386i(Integer[] numArr, int i) {
        AbstractC3083o1.m415i(this, numArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    /* renamed from: D */
    public /* synthetic */ InterfaceC3131w1 mo382q(long j, long j2, IntFunction intFunction) {
        return AbstractC3083o1.m409o(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC3107s1
    /* renamed from: a */
    public InterfaceC2852A1 mo387a() {
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3095q1, p033j$.util.stream.InterfaceC3107s1
    /* renamed from: a */
    public InterfaceC3131w1 mo387a() {
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    public /* synthetic */ void accept(double d) {
        AbstractC3083o1.m418f(this);
        throw null;
    }

    @Override // p033j$.util.stream.C2980W3, p033j$.util.function.InterfaceC2823l
    public void accept(int i) {
        super.accept(i);
    }

    @Override // p033j$.util.stream.InterfaceC3073m3, p033j$.util.stream.InterfaceC3067l3, p033j$.util.function.InterfaceC2827p
    public /* synthetic */ void accept(long j) {
        AbstractC3083o1.m419e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3149z1, p033j$.util.stream.InterfaceC2852A1
    /* renamed from: b */
    public InterfaceC3149z1 mo344b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.AbstractC2995Z3, p033j$.util.stream.InterfaceC3149z1
    /* renamed from: d */
    public void mo342d(Object obj, int i) {
        super.mo342d((int[]) obj, i);
    }

    @Override // p033j$.util.stream.AbstractC2995Z3, p033j$.util.stream.InterfaceC3149z1
    /* renamed from: e */
    public Object mo341e() {
        return (int[]) super.mo341e();
    }

    @Override // p033j$.util.stream.AbstractC2995Z3, p033j$.util.stream.InterfaceC3149z1
    /* renamed from: g */
    public void mo340g(Object obj) {
        super.mo340g((InterfaceC2823l) obj);
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: l */
    public void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public void mo361m(long j) {
        clear();
        m523w(j);
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    /* renamed from: n */
    public /* synthetic */ int mo384n() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    /* renamed from: p */
    public /* synthetic */ Object[] mo383p(IntFunction intFunction) {
        return AbstractC3083o1.m417g(this, intFunction);
    }

    @Override // p033j$.util.stream.C2980W3, p033j$.util.stream.AbstractC2995Z3, java.lang.Iterable, p033j$.lang.InterfaceC2671e
    public Spliterator.InterfaceC2776d spliterator() {
        return super.spliterator();
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2852A1 mo344b(int i) {
        mo344b(i);
        throw null;
    }

    @Override // p033j$.util.stream.C2980W3, p033j$.util.stream.AbstractC2995Z3, java.lang.Iterable, p033j$.lang.InterfaceC2671e
    public Spliterator spliterator() {
        return super.spliterator();
    }
}
