package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2693e;
import p034j$.util.function.InterfaceC2694f;
/* renamed from: j$.util.stream.F */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2761F implements InterfaceC2694f {

    /* renamed from: a */
    public final /* synthetic */ int f732a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f733b;

    @Override // p034j$.util.function.InterfaceC2694f
    public final void accept(double d) {
        switch (this.f732a) {
            case 0:
                ((InterfaceC2954m3) this.f733b).accept(d);
                return;
            default:
                ((C2785J) this.f733b).f945a.accept(d);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2694f
    /* renamed from: j */
    public InterfaceC2694f mo87j(InterfaceC2694f interfaceC2694f) {
        switch (this.f732a) {
            case 0:
                Objects.requireNonNull(interfaceC2694f);
                return new C2693e(this, interfaceC2694f);
            default:
                Objects.requireNonNull(interfaceC2694f);
                return new C2693e(this, interfaceC2694f);
        }
    }
}
