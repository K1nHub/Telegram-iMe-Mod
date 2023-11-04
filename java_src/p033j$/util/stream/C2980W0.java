package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2829o;
import p033j$.util.function.InterfaceC2830p;
/* renamed from: j$.util.stream.W0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2980W0 implements InterfaceC2830p {

    /* renamed from: a */
    public final /* synthetic */ int f989a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f990b;

    @Override // p033j$.util.function.InterfaceC2830p
    public final void accept(long j) {
        switch (this.f989a) {
            case 0:
                ((InterfaceC3076m3) this.f990b).accept(j);
                return;
            default:
                ((C2995Z0) this.f990b).f1097a.accept(j);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2830p
    /* renamed from: f */
    public InterfaceC2830p mo213f(InterfaceC2830p interfaceC2830p) {
        switch (this.f989a) {
            case 0:
                Objects.requireNonNull(interfaceC2830p);
                return new C2829o(this, interfaceC2830p);
            default:
                Objects.requireNonNull(interfaceC2830p);
                return new C2829o(this, interfaceC2830p);
        }
    }
}
