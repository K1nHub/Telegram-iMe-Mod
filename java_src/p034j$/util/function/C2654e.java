package p034j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2654e implements InterfaceC2655f {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2655f f652a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2655f f653b;

    public /* synthetic */ C2654e(InterfaceC2655f interfaceC2655f, InterfaceC2655f interfaceC2655f2) {
        this.f652a = interfaceC2655f;
        this.f653b = interfaceC2655f2;
    }

    @Override // p034j$.util.function.InterfaceC2655f
    public final void accept(double d) {
        InterfaceC2655f interfaceC2655f = this.f652a;
        InterfaceC2655f interfaceC2655f2 = this.f653b;
        interfaceC2655f.accept(d);
        interfaceC2655f2.accept(d);
    }

    @Override // p034j$.util.function.InterfaceC2655f
    /* renamed from: j */
    public InterfaceC2655f mo82j(InterfaceC2655f interfaceC2655f) {
        Objects.requireNonNull(interfaceC2655f);
        return new C2654e(this, interfaceC2655f);
    }
}
