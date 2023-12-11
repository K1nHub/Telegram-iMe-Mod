package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2826o;
import p033j$.util.function.InterfaceC2827p;
/* renamed from: j$.util.stream.W0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2977W0 implements InterfaceC2827p {

    /* renamed from: a */
    public final /* synthetic */ int f989a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f990b;

    @Override // p033j$.util.function.InterfaceC2827p
    public final void accept(long j) {
        switch (this.f989a) {
            case 0:
                ((InterfaceC3073m3) this.f990b).accept(j);
                return;
            default:
                ((C2992Z0) this.f990b).f1097a.accept(j);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2827p
    /* renamed from: f */
    public InterfaceC2827p mo213f(InterfaceC2827p interfaceC2827p) {
        switch (this.f989a) {
            case 0:
                Objects.requireNonNull(interfaceC2827p);
                return new C2826o(this, interfaceC2827p);
            default:
                Objects.requireNonNull(interfaceC2827p);
                return new C2826o(this, interfaceC2827p);
        }
    }
}
