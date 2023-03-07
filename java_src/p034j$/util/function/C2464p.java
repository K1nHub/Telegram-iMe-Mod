package p034j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2464p implements InterfaceC2465q {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2465q f653a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2465q f654b;

    public /* synthetic */ C2464p(InterfaceC2465q interfaceC2465q, InterfaceC2465q interfaceC2465q2) {
        this.f653a = interfaceC2465q;
        this.f654b = interfaceC2465q2;
    }

    @Override // p034j$.util.function.InterfaceC2465q
    public final void accept(long j) {
        InterfaceC2465q interfaceC2465q = this.f653a;
        InterfaceC2465q interfaceC2465q2 = this.f654b;
        interfaceC2465q.accept(j);
        interfaceC2465q2.accept(j);
    }

    @Override // p034j$.util.function.InterfaceC2465q
    /* renamed from: f */
    public InterfaceC2465q mo155f(InterfaceC2465q interfaceC2465q) {
        Objects.requireNonNull(interfaceC2465q);
        return new C2464p(this, interfaceC2465q);
    }
}
