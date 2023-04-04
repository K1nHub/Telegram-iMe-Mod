package p035j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2673k implements InterfaceC2674l {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2674l f662a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2674l f663b;

    public /* synthetic */ C2673k(InterfaceC2674l interfaceC2674l, InterfaceC2674l interfaceC2674l2) {
        this.f662a = interfaceC2674l;
        this.f663b = interfaceC2674l2;
    }

    @Override // p035j$.util.function.InterfaceC2674l
    public final void accept(int i) {
        InterfaceC2674l interfaceC2674l = this.f662a;
        InterfaceC2674l interfaceC2674l2 = this.f663b;
        interfaceC2674l.accept(i);
        interfaceC2674l2.accept(i);
    }

    @Override // p035j$.util.function.InterfaceC2674l
    /* renamed from: l */
    public InterfaceC2674l mo174l(InterfaceC2674l interfaceC2674l) {
        Objects.requireNonNull(interfaceC2674l);
        return new C2673k(this, interfaceC2674l);
    }
}
