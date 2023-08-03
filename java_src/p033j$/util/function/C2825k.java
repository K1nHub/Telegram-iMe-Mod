package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2825k implements InterfaceC2826l {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2826l f745a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2826l f746b;

    public /* synthetic */ C2825k(InterfaceC2826l interfaceC2826l, InterfaceC2826l interfaceC2826l2) {
        this.f745a = interfaceC2826l;
        this.f746b = interfaceC2826l2;
    }

    @Override // p033j$.util.function.InterfaceC2826l
    public final void accept(int i) {
        InterfaceC2826l interfaceC2826l = this.f745a;
        InterfaceC2826l interfaceC2826l2 = this.f746b;
        interfaceC2826l.accept(i);
        interfaceC2826l2.accept(i);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: l */
    public InterfaceC2826l mo183l(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }
}
