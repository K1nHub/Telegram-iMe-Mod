package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2821l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.e2 */
/* loaded from: classes2.dex */
public final class C3022e2 extends C2978W3 implements InterfaceC3129w1, InterfaceC3093q1 {
    @Override // p033j$.util.stream.C2978W3
    /* renamed from: A */
    public Spliterator.InterfaceC2772b mo482A() {
        return super.spliterator();
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: B */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3081o1.m425b(this, num);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: C */
    public /* synthetic */ void mo389i(Integer[] numArr, int i) {
        AbstractC3081o1.m418i(this, numArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: D */
    public /* synthetic */ InterfaceC3129w1 mo385q(long j, long j2, IntFunction intFunction) {
        return AbstractC3081o1.m412o(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC3105s1
    /* renamed from: a */
    public InterfaceC2850A1 mo390a() {
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3093q1, p033j$.util.stream.InterfaceC3105s1
    /* renamed from: a */
    public InterfaceC3129w1 mo390a() {
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public /* synthetic */ void accept(double d) {
        AbstractC3081o1.m421f(this);
        throw null;
    }

    @Override // p033j$.util.stream.C2978W3, p033j$.util.function.InterfaceC2821l
    public void accept(int i) {
        super.accept(i);
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
        super.mo345d((int[]) obj, i);
    }

    @Override // p033j$.util.stream.AbstractC2993Z3, p033j$.util.stream.InterfaceC3147z1
    /* renamed from: e */
    public Object mo344e() {
        return (int[]) super.mo344e();
    }

    @Override // p033j$.util.stream.AbstractC2993Z3, p033j$.util.stream.InterfaceC3147z1
    /* renamed from: g */
    public void mo343g(Object obj) {
        super.mo343g((InterfaceC2821l) obj);
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

    @Override // p033j$.util.stream.C2978W3, p033j$.util.stream.AbstractC2993Z3, java.lang.Iterable, p033j$.lang.InterfaceC2669e
    public Spliterator.InterfaceC2774d spliterator() {
        return super.spliterator();
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2850A1 mo347b(int i) {
        mo347b(i);
        throw null;
    }

    @Override // p033j$.util.stream.C2978W3, p033j$.util.stream.AbstractC2993Z3, java.lang.Iterable, p033j$.lang.InterfaceC2669e
    public Spliterator spliterator() {
        return super.spliterator();
    }
}
