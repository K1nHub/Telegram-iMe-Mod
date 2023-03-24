package p034j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2602p implements InterfaceC2603q {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2603q f659a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2603q f660b;

    public /* synthetic */ C2602p(InterfaceC2603q interfaceC2603q, InterfaceC2603q interfaceC2603q2) {
        this.f659a = interfaceC2603q;
        this.f660b = interfaceC2603q2;
    }

    @Override // p034j$.util.function.InterfaceC2603q
    public final void accept(long j) {
        InterfaceC2603q interfaceC2603q = this.f659a;
        InterfaceC2603q interfaceC2603q2 = this.f660b;
        interfaceC2603q.accept(j);
        interfaceC2603q2.accept(j);
    }

    @Override // p034j$.util.function.InterfaceC2603q
    /* renamed from: f */
    public InterfaceC2603q mo154f(InterfaceC2603q interfaceC2603q) {
        Objects.requireNonNull(interfaceC2603q);
        return new C2602p(this, interfaceC2603q);
    }
}
