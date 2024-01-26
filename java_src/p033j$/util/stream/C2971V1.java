package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2815f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.V1 */
/* loaded from: classes2.dex */
public final class C2971V1 extends C2968U3 implements InterfaceC3117u1, InterfaceC3087p1 {
    @Override // p033j$.util.stream.C2968U3
    /* renamed from: A */
    public Spliterator.InterfaceC2771a mo541A() {
        return super.spliterator();
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: B */
    public /* synthetic */ void accept(Double d) {
        AbstractC3081o1.m426a(this, d);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: C */
    public /* synthetic */ void mo389i(Double[] dArr, int i) {
        AbstractC3081o1.m419h(this, dArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: D */
    public /* synthetic */ InterfaceC3117u1 mo385q(long j, long j2, IntFunction intFunction) {
        return AbstractC3081o1.m413n(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC3105s1
    /* renamed from: a */
    public InterfaceC2850A1 mo390a() {
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3087p1, p033j$.util.stream.InterfaceC3105s1
    /* renamed from: a */
    public InterfaceC3117u1 mo390a() {
        return this;
    }

    @Override // p033j$.util.stream.C2968U3, p033j$.util.function.InterfaceC2815f
    public void accept(double d) {
        super.accept(d);
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public /* synthetic */ void accept(int i) {
        AbstractC3081o1.m423d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3, p033j$.util.stream.InterfaceC3065l3, p033j$.util.function.InterfaceC2825p
    public /* synthetic */ void accept(long j) {
        AbstractC3081o1.m422e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3147z1, p033j$.util.stream.InterfaceC2850A1
    /* renamed from: b */
    public InterfaceC3147z1 mo347b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.AbstractC2993Z3, p033j$.util.stream.InterfaceC3147z1
    /* renamed from: d */
    public void mo345d(Object obj, int i) {
        super.mo345d((double[]) obj, i);
    }

    @Override // p033j$.util.stream.AbstractC2993Z3, p033j$.util.stream.InterfaceC3147z1
    /* renamed from: e */
    public Object mo344e() {
        return (double[]) super.mo344e();
    }

    @Override // p033j$.util.stream.AbstractC2993Z3, p033j$.util.stream.InterfaceC3147z1
    /* renamed from: g */
    public void mo343g(Object obj) {
        super.mo343g((InterfaceC2815f) obj);
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: l */
    public void mo388l() {
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public void mo364m(long j) {
        clear();
        m526w(j);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: n */
    public /* synthetic */ int mo387n() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: o */
    public /* synthetic */ boolean mo363o() {
        return false;
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: p */
    public /* synthetic */ Object[] mo386p(IntFunction intFunction) {
        return AbstractC3081o1.m420g(this, intFunction);
    }

    @Override // p033j$.util.stream.C2968U3, p033j$.util.stream.AbstractC2993Z3, java.lang.Iterable, p033j$.lang.InterfaceC2669e
    public Spliterator.InterfaceC2774d spliterator() {
        return super.spliterator();
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2850A1 mo347b(int i) {
        mo347b(i);
        throw null;
    }

    @Override // p033j$.util.stream.C2968U3, p033j$.util.stream.AbstractC2993Z3, java.lang.Iterable, p033j$.lang.InterfaceC2669e
    public Spliterator spliterator() {
        return super.spliterator();
    }
}
