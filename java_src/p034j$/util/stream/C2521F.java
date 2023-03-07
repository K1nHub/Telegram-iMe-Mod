package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2453e;
import p034j$.util.function.InterfaceC2454f;
/* renamed from: j$.util.stream.F */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2521F implements InterfaceC2454f {

    /* renamed from: a */
    public final /* synthetic */ int f723a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f724b;

    @Override // p034j$.util.function.InterfaceC2454f
    public final void accept(double d) {
        switch (this.f723a) {
            case 0:
                ((InterfaceC2714m3) this.f724b).accept(d);
                return;
            default:
                ((C2545J) this.f724b).f936a.accept(d);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2454f
    /* renamed from: j */
    public InterfaceC2454f mo102j(InterfaceC2454f interfaceC2454f) {
        switch (this.f723a) {
            case 0:
                Objects.requireNonNull(interfaceC2454f);
                return new C2453e(this, interfaceC2454f);
            default:
                Objects.requireNonNull(interfaceC2454f);
                return new C2453e(this, interfaceC2454f);
        }
    }
}
