package p034j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2453e implements InterfaceC2454f {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2454f f646a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2454f f647b;

    public /* synthetic */ C2453e(InterfaceC2454f interfaceC2454f, InterfaceC2454f interfaceC2454f2) {
        this.f646a = interfaceC2454f;
        this.f647b = interfaceC2454f2;
    }

    @Override // p034j$.util.function.InterfaceC2454f
    public final void accept(double d) {
        InterfaceC2454f interfaceC2454f = this.f646a;
        InterfaceC2454f interfaceC2454f2 = this.f647b;
        interfaceC2454f.accept(d);
        interfaceC2454f2.accept(d);
    }

    @Override // p034j$.util.function.InterfaceC2454f
    /* renamed from: j */
    public InterfaceC2454f mo102j(InterfaceC2454f interfaceC2454f) {
        Objects.requireNonNull(interfaceC2454f);
        return new C2453e(this, interfaceC2454f);
    }
}
