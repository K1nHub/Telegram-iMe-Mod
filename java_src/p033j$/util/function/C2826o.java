package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2826o implements InterfaceC2827p {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2827p f791a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2827p f792b;

    public /* synthetic */ C2826o(InterfaceC2827p interfaceC2827p, InterfaceC2827p interfaceC2827p2) {
        this.f791a = interfaceC2827p;
        this.f792b = interfaceC2827p2;
    }

    @Override // p033j$.util.function.InterfaceC2827p
    public final void accept(long j) {
        InterfaceC2827p interfaceC2827p = this.f791a;
        InterfaceC2827p interfaceC2827p2 = this.f792b;
        interfaceC2827p.accept(j);
        interfaceC2827p2.accept(j);
    }

    @Override // p033j$.util.function.InterfaceC2827p
    /* renamed from: f */
    public InterfaceC2827p mo213f(InterfaceC2827p interfaceC2827p) {
        Objects.requireNonNull(interfaceC2827p);
        return new C2826o(this, interfaceC2827p);
    }
}
