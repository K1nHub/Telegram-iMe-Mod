package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2880k implements InterfaceC2881l {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2881l f746a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2881l f747b;

    public /* synthetic */ C2880k(InterfaceC2881l interfaceC2881l, InterfaceC2881l interfaceC2881l2) {
        this.f746a = interfaceC2881l;
        this.f747b = interfaceC2881l2;
    }

    @Override // p033j$.util.function.InterfaceC2881l
    public final void accept(int i) {
        InterfaceC2881l interfaceC2881l = this.f746a;
        InterfaceC2881l interfaceC2881l2 = this.f747b;
        interfaceC2881l.accept(i);
        interfaceC2881l2.accept(i);
    }

    @Override // p033j$.util.function.InterfaceC2881l
    /* renamed from: l */
    public InterfaceC2881l mo183l(InterfaceC2881l interfaceC2881l) {
        Objects.requireNonNull(interfaceC2881l);
        return new C2880k(this, interfaceC2881l);
    }
}
