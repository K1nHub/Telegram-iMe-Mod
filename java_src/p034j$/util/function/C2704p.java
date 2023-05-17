package p034j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2704p implements InterfaceC2705q {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2705q f662a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2705q f663b;

    public /* synthetic */ C2704p(InterfaceC2705q interfaceC2705q, InterfaceC2705q interfaceC2705q2) {
        this.f662a = interfaceC2705q;
        this.f663b = interfaceC2705q2;
    }

    @Override // p034j$.util.function.InterfaceC2705q
    public final void accept(long j) {
        InterfaceC2705q interfaceC2705q = this.f662a;
        InterfaceC2705q interfaceC2705q2 = this.f663b;
        interfaceC2705q.accept(j);
        interfaceC2705q2.accept(j);
    }

    @Override // p034j$.util.function.InterfaceC2705q
    /* renamed from: f */
    public InterfaceC2705q mo140f(InterfaceC2705q interfaceC2705q) {
        Objects.requireNonNull(interfaceC2705q);
        return new C2704p(this, interfaceC2705q);
    }
}
