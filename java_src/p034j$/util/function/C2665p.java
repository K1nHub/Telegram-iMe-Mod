package p034j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2665p implements InterfaceC2666q {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2666q f659a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2666q f660b;

    public /* synthetic */ C2665p(InterfaceC2666q interfaceC2666q, InterfaceC2666q interfaceC2666q2) {
        this.f659a = interfaceC2666q;
        this.f660b = interfaceC2666q2;
    }

    @Override // p034j$.util.function.InterfaceC2666q
    public final void accept(long j) {
        InterfaceC2666q interfaceC2666q = this.f659a;
        InterfaceC2666q interfaceC2666q2 = this.f660b;
        interfaceC2666q.accept(j);
        interfaceC2666q2.accept(j);
    }

    @Override // p034j$.util.function.InterfaceC2666q
    /* renamed from: f */
    public InterfaceC2666q mo135f(InterfaceC2666q interfaceC2666q) {
        Objects.requireNonNull(interfaceC2666q);
        return new C2665p(this, interfaceC2666q);
    }
}
