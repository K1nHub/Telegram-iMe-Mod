package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2958e implements InterfaceC2959f {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2959f f750a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2959f f751b;

    public /* synthetic */ C2958e(InterfaceC2959f interfaceC2959f, InterfaceC2959f interfaceC2959f2) {
        this.f750a = interfaceC2959f;
        this.f751b = interfaceC2959f2;
    }

    @Override // p033j$.util.function.InterfaceC2959f
    public final void accept(double d) {
        InterfaceC2959f interfaceC2959f = this.f750a;
        InterfaceC2959f interfaceC2959f2 = this.f751b;
        interfaceC2959f.accept(d);
        interfaceC2959f2.accept(d);
    }

    @Override // p033j$.util.function.InterfaceC2959f
    /* renamed from: j */
    public InterfaceC2959f mo105j(InterfaceC2959f interfaceC2959f) {
        Objects.requireNonNull(interfaceC2959f);
        return new C2958e(this, interfaceC2959f);
    }
}
