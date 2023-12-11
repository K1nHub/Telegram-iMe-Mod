package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2822k implements InterfaceC2823l {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2823l f789a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2823l f790b;

    public /* synthetic */ C2822k(InterfaceC2823l interfaceC2823l, InterfaceC2823l interfaceC2823l2) {
        this.f789a = interfaceC2823l;
        this.f790b = interfaceC2823l2;
    }

    @Override // p033j$.util.function.InterfaceC2823l
    public final void accept(int i) {
        InterfaceC2823l interfaceC2823l = this.f789a;
        InterfaceC2823l interfaceC2823l2 = this.f790b;
        interfaceC2823l.accept(i);
        interfaceC2823l2.accept(i);
    }

    @Override // p033j$.util.function.InterfaceC2823l
    /* renamed from: k */
    public InterfaceC2823l mo235k(InterfaceC2823l interfaceC2823l) {
        Objects.requireNonNull(interfaceC2823l);
        return new C2822k(this, interfaceC2823l);
    }
}
