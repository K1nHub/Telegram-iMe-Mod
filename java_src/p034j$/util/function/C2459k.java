package p034j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2459k implements InterfaceC2460l {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2460l f651a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2460l f652b;

    public /* synthetic */ C2459k(InterfaceC2460l interfaceC2460l, InterfaceC2460l interfaceC2460l2) {
        this.f651a = interfaceC2460l;
        this.f652b = interfaceC2460l2;
    }

    @Override // p034j$.util.function.InterfaceC2460l
    public final void accept(int i) {
        InterfaceC2460l interfaceC2460l = this.f651a;
        InterfaceC2460l interfaceC2460l2 = this.f652b;
        interfaceC2460l.accept(i);
        interfaceC2460l2.accept(i);
    }

    @Override // p034j$.util.function.InterfaceC2460l
    /* renamed from: l */
    public InterfaceC2460l mo180l(InterfaceC2460l interfaceC2460l) {
        Objects.requireNonNull(interfaceC2460l);
        return new C2459k(this, interfaceC2460l);
    }
}
