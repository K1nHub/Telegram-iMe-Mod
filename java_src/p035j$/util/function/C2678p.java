package p035j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2678p implements InterfaceC2679q {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2679q f664a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2679q f665b;

    public /* synthetic */ C2678p(InterfaceC2679q interfaceC2679q, InterfaceC2679q interfaceC2679q2) {
        this.f664a = interfaceC2679q;
        this.f665b = interfaceC2679q2;
    }

    @Override // p035j$.util.function.InterfaceC2679q
    public final void accept(long j) {
        InterfaceC2679q interfaceC2679q = this.f664a;
        InterfaceC2679q interfaceC2679q2 = this.f665b;
        interfaceC2679q.accept(j);
        interfaceC2679q2.accept(j);
    }

    @Override // p035j$.util.function.InterfaceC2679q
    /* renamed from: f */
    public InterfaceC2679q mo149f(InterfaceC2679q interfaceC2679q) {
        Objects.requireNonNull(interfaceC2679q);
        return new C2678p(this, interfaceC2679q);
    }
}
