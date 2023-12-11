package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2816e implements InterfaceC2817f {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2817f f784a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2817f f785b;

    public /* synthetic */ C2816e(InterfaceC2817f interfaceC2817f, InterfaceC2817f interfaceC2817f2) {
        this.f784a = interfaceC2817f;
        this.f785b = interfaceC2817f2;
    }

    @Override // p033j$.util.function.InterfaceC2817f
    public final void accept(double d) {
        InterfaceC2817f interfaceC2817f = this.f784a;
        InterfaceC2817f interfaceC2817f2 = this.f785b;
        interfaceC2817f.accept(d);
        interfaceC2817f2.accept(d);
    }

    @Override // p033j$.util.function.InterfaceC2817f
    /* renamed from: j */
    public InterfaceC2817f mo158j(InterfaceC2817f interfaceC2817f) {
        Objects.requireNonNull(interfaceC2817f);
        return new C2816e(this, interfaceC2817f);
    }
}
