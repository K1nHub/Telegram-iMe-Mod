package p034j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2698e implements InterfaceC2699f {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2699f f655a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2699f f656b;

    public /* synthetic */ C2698e(InterfaceC2699f interfaceC2699f, InterfaceC2699f interfaceC2699f2) {
        this.f655a = interfaceC2699f;
        this.f656b = interfaceC2699f2;
    }

    @Override // p034j$.util.function.InterfaceC2699f
    public final void accept(double d) {
        InterfaceC2699f interfaceC2699f = this.f655a;
        InterfaceC2699f interfaceC2699f2 = this.f656b;
        interfaceC2699f.accept(d);
        interfaceC2699f2.accept(d);
    }

    @Override // p034j$.util.function.InterfaceC2699f
    /* renamed from: j */
    public InterfaceC2699f mo87j(InterfaceC2699f interfaceC2699f) {
        Objects.requireNonNull(interfaceC2699f);
        return new C2698e(this, interfaceC2699f);
    }
}
