package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2840k;
import p033j$.util.Spliterator;
import p033j$.util.function.C2816e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2817f;
/* renamed from: j$.util.stream.E4 */
/* loaded from: classes2.dex */
final class C2879E4 extends AbstractC2897H4 implements Spliterator.InterfaceC2773a, InterfaceC2817f {

    /* renamed from: e */
    double f866e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2879E4(Spliterator.InterfaceC2773a interfaceC2773a, long j, long j2) {
        super(interfaceC2773a, j, j2);
    }

    C2879E4(Spliterator.InterfaceC2773a interfaceC2773a, C2879E4 c2879e4) {
        super(interfaceC2773a, c2879e4);
    }

    @Override // p033j$.util.function.InterfaceC2817f
    public void accept(double d) {
        this.f866e = d;
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2840k.m600f(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2840k.m605a(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2817f
    /* renamed from: j */
    public InterfaceC2817f mo158j(InterfaceC2817f interfaceC2817f) {
        Objects.requireNonNull(interfaceC2817f);
        return new C2816e(this, interfaceC2817f);
    }

    @Override // p033j$.util.stream.AbstractC2909J4
    /* renamed from: q */
    protected Spliterator mo563q(Spliterator spliterator) {
        return new C2879E4((Spliterator.InterfaceC2773a) spliterator, this);
    }

    @Override // p033j$.util.stream.AbstractC2897H4
    /* renamed from: s */
    protected void mo566s(Object obj) {
        ((InterfaceC2817f) obj).accept(this.f866e);
    }

    @Override // p033j$.util.stream.AbstractC2897H4
    /* renamed from: t */
    protected AbstractC3056j4 mo565t(int i) {
        return new C3038g4(i);
    }
}
