package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2815e implements InterfaceC2816f {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2816f f784a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2816f f785b;

    public /* synthetic */ C2815e(InterfaceC2816f interfaceC2816f, InterfaceC2816f interfaceC2816f2) {
        this.f784a = interfaceC2816f;
        this.f785b = interfaceC2816f2;
    }

    @Override // p033j$.util.function.InterfaceC2816f
    public final void accept(double d) {
        InterfaceC2816f interfaceC2816f = this.f784a;
        InterfaceC2816f interfaceC2816f2 = this.f785b;
        interfaceC2816f.accept(d);
        interfaceC2816f2.accept(d);
    }

    @Override // p033j$.util.function.InterfaceC2816f
    /* renamed from: j */
    public InterfaceC2816f mo156j(InterfaceC2816f interfaceC2816f) {
        Objects.requireNonNull(interfaceC2816f);
        return new C2815e(this, interfaceC2816f);
    }
}
