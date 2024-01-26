package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2824o implements InterfaceC2825p {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2825p f791a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2825p f792b;

    public /* synthetic */ C2824o(InterfaceC2825p interfaceC2825p, InterfaceC2825p interfaceC2825p2) {
        this.f791a = interfaceC2825p;
        this.f792b = interfaceC2825p2;
    }

    @Override // p033j$.util.function.InterfaceC2825p
    public final void accept(long j) {
        InterfaceC2825p interfaceC2825p = this.f791a;
        InterfaceC2825p interfaceC2825p2 = this.f792b;
        interfaceC2825p.accept(j);
        interfaceC2825p2.accept(j);
    }

    @Override // p033j$.util.function.InterfaceC2825p
    /* renamed from: f */
    public InterfaceC2825p mo216f(InterfaceC2825p interfaceC2825p) {
        Objects.requireNonNull(interfaceC2825p);
        return new C2824o(this, interfaceC2825p);
    }
}
