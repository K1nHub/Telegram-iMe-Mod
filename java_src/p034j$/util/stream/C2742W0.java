package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2588p;
import p034j$.util.function.InterfaceC2589q;
/* renamed from: j$.util.stream.W0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2742W0 implements InterfaceC2589q {

    /* renamed from: a */
    public final /* synthetic */ int f850a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f851b;

    @Override // p034j$.util.function.InterfaceC2589q
    public final void accept(long j) {
        switch (this.f850a) {
            case 0:
                ((InterfaceC2838m3) this.f851b).accept(j);
                return;
            default:
                ((C2757Z0) this.f851b).f958a.accept(j);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2589q
    /* renamed from: f */
    public InterfaceC2589q mo155f(InterfaceC2589q interfaceC2589q) {
        switch (this.f850a) {
            case 0:
                Objects.requireNonNull(interfaceC2589q);
                return new C2588p(this, interfaceC2589q);
            default:
                Objects.requireNonNull(interfaceC2589q);
                return new C2588p(this, interfaceC2589q);
        }
    }
}
