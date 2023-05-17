package p034j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2699k implements InterfaceC2700l {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2700l f660a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2700l f661b;

    public /* synthetic */ C2699k(InterfaceC2700l interfaceC2700l, InterfaceC2700l interfaceC2700l2) {
        this.f660a = interfaceC2700l;
        this.f661b = interfaceC2700l2;
    }

    @Override // p034j$.util.function.InterfaceC2700l
    public final void accept(int i) {
        InterfaceC2700l interfaceC2700l = this.f660a;
        InterfaceC2700l interfaceC2700l2 = this.f661b;
        interfaceC2700l.accept(i);
        interfaceC2700l2.accept(i);
    }

    @Override // p034j$.util.function.InterfaceC2700l
    /* renamed from: l */
    public InterfaceC2700l mo165l(InterfaceC2700l interfaceC2700l) {
        Objects.requireNonNull(interfaceC2700l);
        return new C2699k(this, interfaceC2700l);
    }
}
