package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2552a;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.C2591e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2592f;
/* renamed from: j$.util.stream.E4 */
/* loaded from: classes2.dex */
final class C2658E4 extends AbstractC2676H4 implements InterfaceC2625s.InterfaceC2626a, InterfaceC2592f {

    /* renamed from: e */
    double f728e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2658E4(InterfaceC2625s.InterfaceC2626a interfaceC2626a, long j, long j2) {
        super(interfaceC2626a, j, j2);
    }

    C2658E4(InterfaceC2625s.InterfaceC2626a interfaceC2626a, C2658E4 c2658e4) {
        super(interfaceC2626a, c2658e4);
    }

    @Override // p034j$.util.function.InterfaceC2592f
    public void accept(double d) {
        this.f728e = d;
    }

    @Override // p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public /* synthetic */ boolean mo127b(Consumer consumer) {
        return AbstractC2552a.m616j(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2552a.m624b(this, consumer);
    }

    @Override // p034j$.util.function.InterfaceC2592f
    /* renamed from: j */
    public InterfaceC2592f mo101j(InterfaceC2592f interfaceC2592f) {
        Objects.requireNonNull(interfaceC2592f);
        return new C2591e(this, interfaceC2592f);
    }

    @Override // p034j$.util.stream.AbstractC2688J4
    /* renamed from: q */
    protected InterfaceC2625s mo513q(InterfaceC2625s interfaceC2625s) {
        return new C2658E4((InterfaceC2625s.InterfaceC2626a) interfaceC2625s, this);
    }

    @Override // p034j$.util.stream.AbstractC2676H4
    /* renamed from: s */
    protected void mo516s(Object obj) {
        ((InterfaceC2592f) obj).accept(this.f728e);
    }

    @Override // p034j$.util.stream.AbstractC2676H4
    /* renamed from: t */
    protected AbstractC2835j4 mo515t(int i) {
        return new C2817g4(i);
    }
}
