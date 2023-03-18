package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2577e;
import p034j$.util.function.InterfaceC2578f;
/* renamed from: j$.util.stream.F */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2645F implements InterfaceC2578f {

    /* renamed from: a */
    public final /* synthetic */ int f728a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f729b;

    @Override // p034j$.util.function.InterfaceC2578f
    public final void accept(double d) {
        switch (this.f728a) {
            case 0:
                ((InterfaceC2838m3) this.f729b).accept(d);
                return;
            default:
                ((C2669J) this.f729b).f941a.accept(d);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2578f
    /* renamed from: j */
    public InterfaceC2578f mo102j(InterfaceC2578f interfaceC2578f) {
        switch (this.f728a) {
            case 0:
                Objects.requireNonNull(interfaceC2578f);
                return new C2577e(this, interfaceC2578f);
            default:
                Objects.requireNonNull(interfaceC2578f);
                return new C2577e(this, interfaceC2578f);
        }
    }
}
