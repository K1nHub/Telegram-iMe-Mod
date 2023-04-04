package p035j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2667e implements InterfaceC2668f {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2668f f657a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2668f f658b;

    public /* synthetic */ C2667e(InterfaceC2668f interfaceC2668f, InterfaceC2668f interfaceC2668f2) {
        this.f657a = interfaceC2668f;
        this.f658b = interfaceC2668f2;
    }

    @Override // p035j$.util.function.InterfaceC2668f
    public final void accept(double d) {
        InterfaceC2668f interfaceC2668f = this.f657a;
        InterfaceC2668f interfaceC2668f2 = this.f658b;
        interfaceC2668f.accept(d);
        interfaceC2668f2.accept(d);
    }

    @Override // p035j$.util.function.InterfaceC2668f
    /* renamed from: j */
    public InterfaceC2668f mo96j(InterfaceC2668f interfaceC2668f) {
        Objects.requireNonNull(interfaceC2668f);
        return new C2667e(this, interfaceC2668f);
    }
}
