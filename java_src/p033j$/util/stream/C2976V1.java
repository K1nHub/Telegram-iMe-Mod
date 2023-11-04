package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2820f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.V1 */
/* loaded from: classes2.dex */
public final class C2976V1 extends C2973U3 implements InterfaceC3122u1, InterfaceC3092p1 {
    @Override // p033j$.util.stream.C2973U3
    /* renamed from: A */
    public Spliterator.InterfaceC2776a mo538A() {
        return super.spliterator();
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: B */
    public /* synthetic */ void accept(Double d) {
        AbstractC3086o1.m423a(this, d);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: C */
    public /* synthetic */ void mo386i(Double[] dArr, int i) {
        AbstractC3086o1.m416h(this, dArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: D */
    public /* synthetic */ InterfaceC3122u1 mo382q(long j, long j2, IntFunction intFunction) {
        return AbstractC3086o1.m410n(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC3110s1
    /* renamed from: a */
    public InterfaceC2855A1 mo387a() {
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3092p1, p033j$.util.stream.InterfaceC3110s1
    /* renamed from: a */
    public InterfaceC3122u1 mo387a() {
        return this;
    }

    @Override // p033j$.util.stream.C2973U3, p033j$.util.function.InterfaceC2820f
    public void accept(double d) {
        super.accept(d);
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public /* synthetic */ void accept(int i) {
        AbstractC3086o1.m420d(this);
        throw null;
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
        super.mo342d((double[]) obj, i);
    }

    @Override // p033j$.util.stream.AbstractC2998Z3, p033j$.util.stream.InterfaceC3152z1
    /* renamed from: e */
    public Object mo341e() {
        return (double[]) super.mo341e();
    }

    @Override // p033j$.util.stream.AbstractC2998Z3, p033j$.util.stream.InterfaceC3152z1
    /* renamed from: g */
    public void mo340g(Object obj) {
        super.mo340g((InterfaceC2820f) obj);
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

    @Override // p033j$.util.stream.C2973U3, p033j$.util.stream.AbstractC2998Z3, java.lang.Iterable, p033j$.lang.InterfaceC2674e
    public Spliterator.InterfaceC2779d spliterator() {
        return super.spliterator();
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2855A1 mo344b(int i) {
        mo344b(i);
        throw null;
    }

    @Override // p033j$.util.stream.C2973U3, p033j$.util.stream.AbstractC2998Z3, java.lang.Iterable, p033j$.lang.InterfaceC2674e
    public Spliterator spliterator() {
        return super.spliterator();
    }
}
