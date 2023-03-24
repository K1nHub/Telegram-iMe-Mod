package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2552a;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.C2597k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2598l;
/* renamed from: j$.util.stream.F4 */
/* loaded from: classes2.dex */
final class C2664F4 extends AbstractC2676H4 implements InterfaceC2625s.InterfaceC2627b, InterfaceC2598l {

    /* renamed from: e */
    int f739e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2664F4(InterfaceC2625s.InterfaceC2627b interfaceC2627b, long j, long j2) {
        super(interfaceC2627b, j, j2);
    }

    C2664F4(InterfaceC2625s.InterfaceC2627b interfaceC2627b, C2664F4 c2664f4) {
        super(interfaceC2627b, c2664f4);
    }

    @Override // p034j$.util.function.InterfaceC2598l
    public void accept(int i) {
        this.f739e = i;
    }

    @Override // p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public /* synthetic */ boolean mo127b(Consumer consumer) {
        return AbstractC2552a.m615k(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2552a.m623c(this, consumer);
    }

    @Override // p034j$.util.function.InterfaceC2598l
    /* renamed from: l */
    public InterfaceC2598l mo179l(InterfaceC2598l interfaceC2598l) {
        Objects.requireNonNull(interfaceC2598l);
        return new C2597k(this, interfaceC2598l);
    }

    @Override // p034j$.util.stream.AbstractC2688J4
    /* renamed from: q */
    protected InterfaceC2625s mo513q(InterfaceC2625s interfaceC2625s) {
        return new C2664F4((InterfaceC2625s.InterfaceC2627b) interfaceC2625s, this);
    }

    @Override // p034j$.util.stream.AbstractC2676H4
    /* renamed from: s */
    protected void mo516s(Object obj) {
        ((InterfaceC2598l) obj).accept(this.f739e);
    }

    @Override // p034j$.util.stream.AbstractC2676H4
    /* renamed from: t */
    protected AbstractC2835j4 mo515t(int i) {
        return new C2823h4(i);
    }
}
