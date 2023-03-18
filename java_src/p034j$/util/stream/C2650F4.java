package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2538a;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.C2583k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2584l;
/* renamed from: j$.util.stream.F4 */
/* loaded from: classes2.dex */
final class C2650F4 extends AbstractC2662H4 implements InterfaceC2611s.InterfaceC2613b, InterfaceC2584l {

    /* renamed from: e */
    int f738e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2650F4(InterfaceC2611s.InterfaceC2613b interfaceC2613b, long j, long j2) {
        super(interfaceC2613b, j, j2);
    }

    C2650F4(InterfaceC2611s.InterfaceC2613b interfaceC2613b, C2650F4 c2650f4) {
        super(interfaceC2613b, c2650f4);
    }

    @Override // p034j$.util.function.InterfaceC2584l
    public void accept(int i) {
        this.f738e = i;
    }

    @Override // p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2538a.m616k(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2538a.m624c(this, consumer);
    }

    @Override // p034j$.util.function.InterfaceC2584l
    /* renamed from: l */
    public InterfaceC2584l mo180l(InterfaceC2584l interfaceC2584l) {
        Objects.requireNonNull(interfaceC2584l);
        return new C2583k(this, interfaceC2584l);
    }

    @Override // p034j$.util.stream.AbstractC2674J4
    /* renamed from: q */
    protected InterfaceC2611s mo514q(InterfaceC2611s interfaceC2611s) {
        return new C2650F4((InterfaceC2611s.InterfaceC2613b) interfaceC2611s, this);
    }

    @Override // p034j$.util.stream.AbstractC2662H4
    /* renamed from: s */
    protected void mo517s(Object obj) {
        ((InterfaceC2584l) obj).accept(this.f738e);
    }

    @Override // p034j$.util.stream.AbstractC2662H4
    /* renamed from: t */
    protected AbstractC2821j4 mo516t(int i) {
        return new C2809h4(i);
    }
}
