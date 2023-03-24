package p034j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2597k implements InterfaceC2598l {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2598l f657a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2598l f658b;

    public /* synthetic */ C2597k(InterfaceC2598l interfaceC2598l, InterfaceC2598l interfaceC2598l2) {
        this.f657a = interfaceC2598l;
        this.f658b = interfaceC2598l2;
    }

    @Override // p034j$.util.function.InterfaceC2598l
    public final void accept(int i) {
        InterfaceC2598l interfaceC2598l = this.f657a;
        InterfaceC2598l interfaceC2598l2 = this.f658b;
        interfaceC2598l.accept(i);
        interfaceC2598l2.accept(i);
    }

    @Override // p034j$.util.function.InterfaceC2598l
    /* renamed from: l */
    public InterfaceC2598l mo179l(InterfaceC2598l interfaceC2598l) {
        Objects.requireNonNull(interfaceC2598l);
        return new C2597k(this, interfaceC2598l);
    }
}
