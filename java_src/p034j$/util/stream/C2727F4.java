package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2615a;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.C2660k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2661l;
/* renamed from: j$.util.stream.F4 */
/* loaded from: classes2.dex */
final class C2727F4 extends AbstractC2739H4 implements InterfaceC2688s.InterfaceC2690b, InterfaceC2661l {

    /* renamed from: e */
    int f739e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2727F4(InterfaceC2688s.InterfaceC2690b interfaceC2690b, long j, long j2) {
        super(interfaceC2690b, j, j2);
    }

    C2727F4(InterfaceC2688s.InterfaceC2690b interfaceC2690b, C2727F4 c2727f4) {
        super(interfaceC2690b, c2727f4);
    }

    @Override // p034j$.util.function.InterfaceC2661l
    public void accept(int i) {
        this.f739e = i;
    }

    @Override // p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public /* synthetic */ boolean mo108b(Consumer consumer) {
        return AbstractC2615a.m596k(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2615a.m604c(this, consumer);
    }

    @Override // p034j$.util.function.InterfaceC2661l
    /* renamed from: l */
    public InterfaceC2661l mo160l(InterfaceC2661l interfaceC2661l) {
        Objects.requireNonNull(interfaceC2661l);
        return new C2660k(this, interfaceC2661l);
    }

    @Override // p034j$.util.stream.AbstractC2751J4
    /* renamed from: q */
    protected InterfaceC2688s mo494q(InterfaceC2688s interfaceC2688s) {
        return new C2727F4((InterfaceC2688s.InterfaceC2690b) interfaceC2688s, this);
    }

    @Override // p034j$.util.stream.AbstractC2739H4
    /* renamed from: s */
    protected void mo497s(Object obj) {
        ((InterfaceC2661l) obj).accept(this.f739e);
    }

    @Override // p034j$.util.stream.AbstractC2739H4
    /* renamed from: t */
    protected AbstractC2898j4 mo496t(int i) {
        return new C2886h4(i);
    }
}
