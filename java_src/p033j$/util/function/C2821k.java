package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2821k implements InterfaceC2822l {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2822l f789a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2822l f790b;

    public /* synthetic */ C2821k(InterfaceC2822l interfaceC2822l, InterfaceC2822l interfaceC2822l2) {
        this.f789a = interfaceC2822l;
        this.f790b = interfaceC2822l2;
    }

    @Override // p033j$.util.function.InterfaceC2822l
    public final void accept(int i) {
        InterfaceC2822l interfaceC2822l = this.f789a;
        InterfaceC2822l interfaceC2822l2 = this.f790b;
        interfaceC2822l.accept(i);
        interfaceC2822l2.accept(i);
    }

    @Override // p033j$.util.function.InterfaceC2822l
    /* renamed from: k */
    public InterfaceC2822l mo234k(InterfaceC2822l interfaceC2822l) {
        Objects.requireNonNull(interfaceC2822l);
        return new C2821k(this, interfaceC2822l);
    }
}
