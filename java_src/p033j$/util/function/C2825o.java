package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2825o implements InterfaceC2826p {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2826p f791a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2826p f792b;

    public /* synthetic */ C2825o(InterfaceC2826p interfaceC2826p, InterfaceC2826p interfaceC2826p2) {
        this.f791a = interfaceC2826p;
        this.f792b = interfaceC2826p2;
    }

    @Override // p033j$.util.function.InterfaceC2826p
    public final void accept(long j) {
        InterfaceC2826p interfaceC2826p = this.f791a;
        InterfaceC2826p interfaceC2826p2 = this.f792b;
        interfaceC2826p.accept(j);
        interfaceC2826p2.accept(j);
    }

    @Override // p033j$.util.function.InterfaceC2826p
    /* renamed from: f */
    public InterfaceC2826p mo212f(InterfaceC2826p interfaceC2826p) {
        Objects.requireNonNull(interfaceC2826p);
        return new C2825o(this, interfaceC2826p);
    }
}
