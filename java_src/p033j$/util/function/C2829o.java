package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2829o implements InterfaceC2830p {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2830p f791a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2830p f792b;

    public /* synthetic */ C2829o(InterfaceC2830p interfaceC2830p, InterfaceC2830p interfaceC2830p2) {
        this.f791a = interfaceC2830p;
        this.f792b = interfaceC2830p2;
    }

    @Override // p033j$.util.function.InterfaceC2830p
    public final void accept(long j) {
        InterfaceC2830p interfaceC2830p = this.f791a;
        InterfaceC2830p interfaceC2830p2 = this.f792b;
        interfaceC2830p.accept(j);
        interfaceC2830p2.accept(j);
    }

    @Override // p033j$.util.function.InterfaceC2830p
    /* renamed from: f */
    public InterfaceC2830p mo213f(InterfaceC2830p interfaceC2830p) {
        Objects.requireNonNull(interfaceC2830p);
        return new C2829o(this, interfaceC2830p);
    }
}
