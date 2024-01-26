package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2838k;
import p033j$.util.Spliterator;
import p033j$.util.function.C2814e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2815f;
/* renamed from: j$.util.stream.E4 */
/* loaded from: classes2.dex */
final class C2877E4 extends AbstractC2895H4 implements Spliterator.InterfaceC2771a, InterfaceC2815f {

    /* renamed from: e */
    double f866e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2877E4(Spliterator.InterfaceC2771a interfaceC2771a, long j, long j2) {
        super(interfaceC2771a, j, j2);
    }

    C2877E4(Spliterator.InterfaceC2771a interfaceC2771a, C2877E4 c2877e4) {
        super(interfaceC2771a, c2877e4);
    }

    @Override // p033j$.util.function.InterfaceC2815f
    public void accept(double d) {
        this.f866e = d;
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo182b(Consumer consumer) {
        return AbstractC2838k.m603f(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2838k.m608a(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2815f
    /* renamed from: j */
    public InterfaceC2815f mo161j(InterfaceC2815f interfaceC2815f) {
        Objects.requireNonNull(interfaceC2815f);
        return new C2814e(this, interfaceC2815f);
    }

    @Override // p033j$.util.stream.AbstractC2907J4
    /* renamed from: q */
    protected Spliterator mo566q(Spliterator spliterator) {
        return new C2877E4((Spliterator.InterfaceC2771a) spliterator, this);
    }

    @Override // p033j$.util.stream.AbstractC2895H4
    /* renamed from: s */
    protected void mo569s(Object obj) {
        ((InterfaceC2815f) obj).accept(this.f866e);
    }

    @Override // p033j$.util.stream.AbstractC2895H4
    /* renamed from: t */
    protected AbstractC3054j4 mo568t(int i) {
        return new C3036g4(i);
    }
}
