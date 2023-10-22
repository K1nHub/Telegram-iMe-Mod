package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2839k;
import p033j$.util.Spliterator;
import p033j$.util.function.C2815e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816f;
/* renamed from: j$.util.stream.E4 */
/* loaded from: classes2.dex */
final class C2878E4 extends AbstractC2896H4 implements Spliterator.InterfaceC2772a, InterfaceC2816f {

    /* renamed from: e */
    double f866e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2878E4(Spliterator.InterfaceC2772a interfaceC2772a, long j, long j2) {
        super(interfaceC2772a, j, j2);
    }

    C2878E4(Spliterator.InterfaceC2772a interfaceC2772a, C2878E4 c2878e4) {
        super(interfaceC2772a, c2878e4);
    }

    @Override // p033j$.util.function.InterfaceC2816f
    public void accept(double d) {
        this.f866e = d;
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo178b(Consumer consumer) {
        return AbstractC2839k.m599f(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2839k.m604a(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2816f
    /* renamed from: j */
    public InterfaceC2816f mo156j(InterfaceC2816f interfaceC2816f) {
        Objects.requireNonNull(interfaceC2816f);
        return new C2815e(this, interfaceC2816f);
    }

    @Override // p033j$.util.stream.AbstractC2908J4
    /* renamed from: q */
    protected Spliterator mo562q(Spliterator spliterator) {
        return new C2878E4((Spliterator.InterfaceC2772a) spliterator, this);
    }

    @Override // p033j$.util.stream.AbstractC2896H4
    /* renamed from: s */
    protected void mo565s(Object obj) {
        ((InterfaceC2816f) obj).accept(this.f866e);
    }

    @Override // p033j$.util.stream.AbstractC2896H4
    /* renamed from: t */
    protected AbstractC3055j4 mo564t(int i) {
        return new C3037g4(i);
    }
}
