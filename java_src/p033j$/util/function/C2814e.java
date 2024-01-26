package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2814e implements InterfaceC2815f {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2815f f784a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2815f f785b;

    public /* synthetic */ C2814e(InterfaceC2815f interfaceC2815f, InterfaceC2815f interfaceC2815f2) {
        this.f784a = interfaceC2815f;
        this.f785b = interfaceC2815f2;
    }

    @Override // p033j$.util.function.InterfaceC2815f
    public final void accept(double d) {
        InterfaceC2815f interfaceC2815f = this.f784a;
        InterfaceC2815f interfaceC2815f2 = this.f785b;
        interfaceC2815f.accept(d);
        interfaceC2815f2.accept(d);
    }

    @Override // p033j$.util.function.InterfaceC2815f
    /* renamed from: j */
    public InterfaceC2815f mo161j(InterfaceC2815f interfaceC2815f) {
        Objects.requireNonNull(interfaceC2815f);
        return new C2814e(this, interfaceC2815f);
    }
}
