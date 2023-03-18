package p034j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2583k implements InterfaceC2584l {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2584l f656a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2584l f657b;

    public /* synthetic */ C2583k(InterfaceC2584l interfaceC2584l, InterfaceC2584l interfaceC2584l2) {
        this.f656a = interfaceC2584l;
        this.f657b = interfaceC2584l2;
    }

    @Override // p034j$.util.function.InterfaceC2584l
    public final void accept(int i) {
        InterfaceC2584l interfaceC2584l = this.f656a;
        InterfaceC2584l interfaceC2584l2 = this.f657b;
        interfaceC2584l.accept(i);
        interfaceC2584l2.accept(i);
    }

    @Override // p034j$.util.function.InterfaceC2584l
    /* renamed from: l */
    public InterfaceC2584l mo180l(InterfaceC2584l interfaceC2584l) {
        Objects.requireNonNull(interfaceC2584l);
        return new C2583k(this, interfaceC2584l);
    }
}
