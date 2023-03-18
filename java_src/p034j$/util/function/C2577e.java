package p034j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2577e implements InterfaceC2578f {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2578f f651a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2578f f652b;

    public /* synthetic */ C2577e(InterfaceC2578f interfaceC2578f, InterfaceC2578f interfaceC2578f2) {
        this.f651a = interfaceC2578f;
        this.f652b = interfaceC2578f2;
    }

    @Override // p034j$.util.function.InterfaceC2578f
    public final void accept(double d) {
        InterfaceC2578f interfaceC2578f = this.f651a;
        InterfaceC2578f interfaceC2578f2 = this.f652b;
        interfaceC2578f.accept(d);
        interfaceC2578f2.accept(d);
    }

    @Override // p034j$.util.function.InterfaceC2578f
    /* renamed from: j */
    public InterfaceC2578f mo102j(InterfaceC2578f interfaceC2578f) {
        Objects.requireNonNull(interfaceC2578f);
        return new C2577e(this, interfaceC2578f);
    }
}
