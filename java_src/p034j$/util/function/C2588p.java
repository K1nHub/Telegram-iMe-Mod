package p034j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2588p implements InterfaceC2589q {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2589q f658a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2589q f659b;

    public /* synthetic */ C2588p(InterfaceC2589q interfaceC2589q, InterfaceC2589q interfaceC2589q2) {
        this.f658a = interfaceC2589q;
        this.f659b = interfaceC2589q2;
    }

    @Override // p034j$.util.function.InterfaceC2589q
    public final void accept(long j) {
        InterfaceC2589q interfaceC2589q = this.f658a;
        InterfaceC2589q interfaceC2589q2 = this.f659b;
        interfaceC2589q.accept(j);
        interfaceC2589q2.accept(j);
    }

    @Override // p034j$.util.function.InterfaceC2589q
    /* renamed from: f */
    public InterfaceC2589q mo155f(InterfaceC2589q interfaceC2589q) {
        Objects.requireNonNull(interfaceC2589q);
        return new C2588p(this, interfaceC2589q);
    }
}
