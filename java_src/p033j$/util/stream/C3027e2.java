package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2826l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.e2 */
/* loaded from: classes2.dex */
public final class C3027e2 extends C2983W3 implements InterfaceC3134w1, InterfaceC3098q1 {
    @Override // p033j$.util.stream.C2983W3
    /* renamed from: A */
    public Spliterator.InterfaceC2777b mo479A() {
        return super.spliterator();
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: B */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3086o1.m422b(this, num);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: C */
    public /* synthetic */ void mo386i(Integer[] numArr, int i) {
        AbstractC3086o1.m415i(this, numArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: D */
    public /* synthetic */ InterfaceC3134w1 mo382q(long j, long j2, IntFunction intFunction) {
        return AbstractC3086o1.m409o(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC3110s1
    /* renamed from: a */
    public InterfaceC2855A1 mo387a() {
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3098q1, p033j$.util.stream.InterfaceC3110s1
    /* renamed from: a */
    public InterfaceC3134w1 mo387a() {
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public /* synthetic */ void accept(double d) {
        AbstractC3086o1.m418f(this);
        throw null;
    }

    @Override // p033j$.util.stream.C2983W3, p033j$.util.function.InterfaceC2826l
    public void accept(int i) {
        super.accept(i);
    }

    @Override // p033j$.util.stream.InterfaceC3076m3, p033j$.util.stream.InterfaceC3070l3, p033j$.util.function.InterfaceC2830p
    public /* synthetic */ void accept(long j) {
        AbstractC3086o1.m419e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3152z1, p033j$.util.stream.InterfaceC2855A1
    /* renamed from: b */
    public InterfaceC3152z1 mo344b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.AbstractC2998Z3, p033j$.util.stream.InterfaceC3152z1
    /* renamed from: d */
    public void mo342d(Object obj, int i) {
        super.mo342d((int[]) obj, i);
    }

    @Override // p033j$.util.stream.AbstractC2998Z3, p033j$.util.stream.InterfaceC3152z1
    /* renamed from: e */
    public Object mo341e() {
        return (int[]) super.mo341e();
    }

    @Override // p033j$.util.stream.AbstractC2998Z3, p033j$.util.stream.InterfaceC3152z1
    /* renamed from: g */
    public void mo340g(Object obj) {
        super.mo340g((InterfaceC2826l) obj);
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: l */
    public void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: m */
    public void mo361m(long j) {
        clear();
        m523w(j);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: n */
    public /* synthetic */ int mo384n() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: p */
    public /* synthetic */ Object[] mo383p(IntFunction intFunction) {
        return AbstractC3086o1.m417g(this, intFunction);
    }

    @Override // p033j$.util.stream.C2983W3, p033j$.util.stream.AbstractC2998Z3, java.lang.Iterable, p033j$.lang.InterfaceC2674e
    public Spliterator.InterfaceC2779d spliterator() {
        return super.spliterator();
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2855A1 mo344b(int i) {
        mo344b(i);
        throw null;
    }

    @Override // p033j$.util.stream.C2983W3, p033j$.util.stream.AbstractC2998Z3, java.lang.Iterable, p033j$.lang.InterfaceC2674e
    public Spliterator spliterator() {
        return super.spliterator();
    }
}
