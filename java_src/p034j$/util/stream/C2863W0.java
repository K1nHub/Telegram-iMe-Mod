package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2709p;
import p034j$.util.function.InterfaceC2710q;
/* renamed from: j$.util.stream.W0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2863W0 implements InterfaceC2710q {

    /* renamed from: a */
    public final /* synthetic */ int f854a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f855b;

    @Override // p034j$.util.function.InterfaceC2710q
    public final void accept(long j) {
        switch (this.f854a) {
            case 0:
                ((InterfaceC2959m3) this.f855b).accept(j);
                return;
            default:
                ((C2878Z0) this.f855b).f962a.accept(j);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2710q
    /* renamed from: f */
    public InterfaceC2710q mo140f(InterfaceC2710q interfaceC2710q) {
        switch (this.f854a) {
            case 0:
                Objects.requireNonNull(interfaceC2710q);
                return new C2709p(this, interfaceC2710q);
            default:
                Objects.requireNonNull(interfaceC2710q);
                return new C2709p(this, interfaceC2710q);
        }
    }
}
