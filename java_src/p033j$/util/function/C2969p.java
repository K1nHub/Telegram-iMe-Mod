package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2969p implements InterfaceC2970q {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2970q f757a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2970q f758b;

    public /* synthetic */ C2969p(InterfaceC2970q interfaceC2970q, InterfaceC2970q interfaceC2970q2) {
        this.f757a = interfaceC2970q;
        this.f758b = interfaceC2970q2;
    }

    @Override // p033j$.util.function.InterfaceC2970q
    public final void accept(long j) {
        InterfaceC2970q interfaceC2970q = this.f757a;
        InterfaceC2970q interfaceC2970q2 = this.f758b;
        interfaceC2970q.accept(j);
        interfaceC2970q2.accept(j);
    }

    @Override // p033j$.util.function.InterfaceC2970q
    /* renamed from: f */
    public InterfaceC2970q mo158f(InterfaceC2970q interfaceC2970q) {
        Objects.requireNonNull(interfaceC2970q);
        return new C2969p(this, interfaceC2970q);
    }
}
