package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2704p;
import p034j$.util.function.InterfaceC2705q;
/* renamed from: j$.util.stream.W0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2858W0 implements InterfaceC2705q {

    /* renamed from: a */
    public final /* synthetic */ int f854a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f855b;

    @Override // p034j$.util.function.InterfaceC2705q
    public final void accept(long j) {
        switch (this.f854a) {
            case 0:
                ((InterfaceC2954m3) this.f855b).accept(j);
                return;
            default:
                ((C2873Z0) this.f855b).f962a.accept(j);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2705q
    /* renamed from: f */
    public InterfaceC2705q mo140f(InterfaceC2705q interfaceC2705q) {
        switch (this.f854a) {
            case 0:
                Objects.requireNonNull(interfaceC2705q);
                return new C2704p(this, interfaceC2705q);
            default:
                Objects.requireNonNull(interfaceC2705q);
                return new C2704p(this, interfaceC2705q);
        }
    }
}
