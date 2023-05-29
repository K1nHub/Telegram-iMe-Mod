package p034j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2709p implements InterfaceC2710q {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2710q f662a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2710q f663b;

    public /* synthetic */ C2709p(InterfaceC2710q interfaceC2710q, InterfaceC2710q interfaceC2710q2) {
        this.f662a = interfaceC2710q;
        this.f663b = interfaceC2710q2;
    }

    @Override // p034j$.util.function.InterfaceC2710q
    public final void accept(long j) {
        InterfaceC2710q interfaceC2710q = this.f662a;
        InterfaceC2710q interfaceC2710q2 = this.f663b;
        interfaceC2710q.accept(j);
        interfaceC2710q2.accept(j);
    }

    @Override // p034j$.util.function.InterfaceC2710q
    /* renamed from: f */
    public InterfaceC2710q mo140f(InterfaceC2710q interfaceC2710q) {
        Objects.requireNonNull(interfaceC2710q);
        return new C2709p(this, interfaceC2710q);
    }
}
