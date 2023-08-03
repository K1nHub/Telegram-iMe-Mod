package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2830p implements InterfaceC2831q {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2831q f747a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2831q f748b;

    public /* synthetic */ C2830p(InterfaceC2831q interfaceC2831q, InterfaceC2831q interfaceC2831q2) {
        this.f747a = interfaceC2831q;
        this.f748b = interfaceC2831q2;
    }

    @Override // p033j$.util.function.InterfaceC2831q
    public final void accept(long j) {
        InterfaceC2831q interfaceC2831q = this.f747a;
        InterfaceC2831q interfaceC2831q2 = this.f748b;
        interfaceC2831q.accept(j);
        interfaceC2831q2.accept(j);
    }

    @Override // p033j$.util.function.InterfaceC2831q
    /* renamed from: f */
    public InterfaceC2831q mo158f(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        return new C2830p(this, interfaceC2831q);
    }
}
