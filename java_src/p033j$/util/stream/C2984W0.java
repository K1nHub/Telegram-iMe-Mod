package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2830p;
import p033j$.util.function.InterfaceC2831q;
/* renamed from: j$.util.stream.W0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2984W0 implements InterfaceC2831q {

    /* renamed from: a */
    public final /* synthetic */ int f936a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f937b;

    @Override // p033j$.util.function.InterfaceC2831q
    public final void accept(long j) {
        switch (this.f936a) {
            case 0:
                ((InterfaceC3080m3) this.f937b).accept(j);
                return;
            default:
                ((C2999Z0) this.f937b).f1044a.accept(j);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2831q
    /* renamed from: f */
    public InterfaceC2831q mo140f(InterfaceC2831q interfaceC2831q) {
        switch (this.f936a) {
            case 0:
                Objects.requireNonNull(interfaceC2831q);
                return new C2830p(this, interfaceC2831q);
            default:
                Objects.requireNonNull(interfaceC2831q);
                return new C2830p(this, interfaceC2831q);
        }
    }
}