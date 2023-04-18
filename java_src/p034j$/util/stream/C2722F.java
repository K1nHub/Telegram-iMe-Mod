package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2654e;
import p034j$.util.function.InterfaceC2655f;
/* renamed from: j$.util.stream.F */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2722F implements InterfaceC2655f {

    /* renamed from: a */
    public final /* synthetic */ int f729a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f730b;

    @Override // p034j$.util.function.InterfaceC2655f
    public final void accept(double d) {
        switch (this.f729a) {
            case 0:
                ((InterfaceC2915m3) this.f730b).accept(d);
                return;
            default:
                ((C2746J) this.f730b).f942a.accept(d);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2655f
    /* renamed from: j */
    public InterfaceC2655f mo82j(InterfaceC2655f interfaceC2655f) {
        switch (this.f729a) {
            case 0:
                Objects.requireNonNull(interfaceC2655f);
                return new C2654e(this, interfaceC2655f);
            default:
                Objects.requireNonNull(interfaceC2655f);
                return new C2654e(this, interfaceC2655f);
        }
    }
}
