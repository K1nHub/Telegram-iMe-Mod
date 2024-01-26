package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2820k implements InterfaceC2821l {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2821l f789a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2821l f790b;

    public /* synthetic */ C2820k(InterfaceC2821l interfaceC2821l, InterfaceC2821l interfaceC2821l2) {
        this.f789a = interfaceC2821l;
        this.f790b = interfaceC2821l2;
    }

    @Override // p033j$.util.function.InterfaceC2821l
    public final void accept(int i) {
        InterfaceC2821l interfaceC2821l = this.f789a;
        InterfaceC2821l interfaceC2821l2 = this.f790b;
        interfaceC2821l.accept(i);
        interfaceC2821l2.accept(i);
    }

    @Override // p033j$.util.function.InterfaceC2821l
    /* renamed from: k */
    public InterfaceC2821l mo238k(InterfaceC2821l interfaceC2821l) {
        Objects.requireNonNull(interfaceC2821l);
        return new C2820k(this, interfaceC2821l);
    }
}
