package p034j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2591e implements InterfaceC2592f {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2592f f652a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2592f f653b;

    public /* synthetic */ C2591e(InterfaceC2592f interfaceC2592f, InterfaceC2592f interfaceC2592f2) {
        this.f652a = interfaceC2592f;
        this.f653b = interfaceC2592f2;
    }

    @Override // p034j$.util.function.InterfaceC2592f
    public final void accept(double d) {
        InterfaceC2592f interfaceC2592f = this.f652a;
        InterfaceC2592f interfaceC2592f2 = this.f653b;
        interfaceC2592f.accept(d);
        interfaceC2592f2.accept(d);
    }

    @Override // p034j$.util.function.InterfaceC2592f
    /* renamed from: j */
    public InterfaceC2592f mo101j(InterfaceC2592f interfaceC2592f) {
        Objects.requireNonNull(interfaceC2592f);
        return new C2591e(this, interfaceC2592f);
    }
}
