package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2874e implements InterfaceC2875f {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2875f f741a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2875f f742b;

    public /* synthetic */ C2874e(InterfaceC2875f interfaceC2875f, InterfaceC2875f interfaceC2875f2) {
        this.f741a = interfaceC2875f;
        this.f742b = interfaceC2875f2;
    }

    @Override // p033j$.util.function.InterfaceC2875f
    public final void accept(double d) {
        InterfaceC2875f interfaceC2875f = this.f741a;
        InterfaceC2875f interfaceC2875f2 = this.f742b;
        interfaceC2875f.accept(d);
        interfaceC2875f2.accept(d);
    }

    @Override // p033j$.util.function.InterfaceC2875f
    /* renamed from: j */
    public InterfaceC2875f mo105j(InterfaceC2875f interfaceC2875f) {
        Objects.requireNonNull(interfaceC2875f);
        return new C2874e(this, interfaceC2875f);
    }
}
