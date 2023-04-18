package p034j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2660k implements InterfaceC2661l {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2661l f657a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2661l f658b;

    public /* synthetic */ C2660k(InterfaceC2661l interfaceC2661l, InterfaceC2661l interfaceC2661l2) {
        this.f657a = interfaceC2661l;
        this.f658b = interfaceC2661l2;
    }

    @Override // p034j$.util.function.InterfaceC2661l
    public final void accept(int i) {
        InterfaceC2661l interfaceC2661l = this.f657a;
        InterfaceC2661l interfaceC2661l2 = this.f658b;
        interfaceC2661l.accept(i);
        interfaceC2661l2.accept(i);
    }

    @Override // p034j$.util.function.InterfaceC2661l
    /* renamed from: l */
    public InterfaceC2661l mo160l(InterfaceC2661l interfaceC2661l) {
        Objects.requireNonNull(interfaceC2661l);
        return new C2660k(this, interfaceC2661l);
    }
}
