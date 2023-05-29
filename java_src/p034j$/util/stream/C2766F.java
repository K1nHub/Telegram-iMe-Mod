package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2698e;
import p034j$.util.function.InterfaceC2699f;
/* renamed from: j$.util.stream.F */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2766F implements InterfaceC2699f {

    /* renamed from: a */
    public final /* synthetic */ int f732a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f733b;

    @Override // p034j$.util.function.InterfaceC2699f
    public final void accept(double d) {
        switch (this.f732a) {
            case 0:
                ((InterfaceC2959m3) this.f733b).accept(d);
                return;
            default:
                ((C2790J) this.f733b).f945a.accept(d);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2699f
    /* renamed from: j */
    public InterfaceC2699f mo87j(InterfaceC2699f interfaceC2699f) {
        switch (this.f732a) {
            case 0:
                Objects.requireNonNull(interfaceC2699f);
                return new C2698e(this, interfaceC2699f);
            default:
                Objects.requireNonNull(interfaceC2699f);
                return new C2698e(this, interfaceC2699f);
        }
    }
}
