package p034j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2704k implements InterfaceC2705l {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2705l f660a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2705l f661b;

    public /* synthetic */ C2704k(InterfaceC2705l interfaceC2705l, InterfaceC2705l interfaceC2705l2) {
        this.f660a = interfaceC2705l;
        this.f661b = interfaceC2705l2;
    }

    @Override // p034j$.util.function.InterfaceC2705l
    public final void accept(int i) {
        InterfaceC2705l interfaceC2705l = this.f660a;
        InterfaceC2705l interfaceC2705l2 = this.f661b;
        interfaceC2705l.accept(i);
        interfaceC2705l2.accept(i);
    }

    @Override // p034j$.util.function.InterfaceC2705l
    /* renamed from: l */
    public InterfaceC2705l mo165l(InterfaceC2705l interfaceC2705l) {
        Objects.requireNonNull(interfaceC2705l);
        return new C2704k(this, interfaceC2705l);
    }
}
