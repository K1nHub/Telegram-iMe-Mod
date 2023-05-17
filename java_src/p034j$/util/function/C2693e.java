package p034j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2693e implements InterfaceC2694f {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2694f f655a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2694f f656b;

    public /* synthetic */ C2693e(InterfaceC2694f interfaceC2694f, InterfaceC2694f interfaceC2694f2) {
        this.f655a = interfaceC2694f;
        this.f656b = interfaceC2694f2;
    }

    @Override // p034j$.util.function.InterfaceC2694f
    public final void accept(double d) {
        InterfaceC2694f interfaceC2694f = this.f655a;
        InterfaceC2694f interfaceC2694f2 = this.f656b;
        interfaceC2694f.accept(d);
        interfaceC2694f2.accept(d);
    }

    @Override // p034j$.util.function.InterfaceC2694f
    /* renamed from: j */
    public InterfaceC2694f mo87j(InterfaceC2694f interfaceC2694f) {
        Objects.requireNonNull(interfaceC2694f);
        return new C2693e(this, interfaceC2694f);
    }
}
