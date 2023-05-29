package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2699k;
import p034j$.util.function.InterfaceC2700l;
/* renamed from: j$.util.stream.B0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2738B0 implements InterfaceC2700l {

    /* renamed from: a */
    public final /* synthetic */ int f696a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f697b;

    @Override // p034j$.util.function.InterfaceC2700l
    public final void accept(int i) {
        switch (this.f696a) {
            case 0:
                ((InterfaceC2954m3) this.f697b).accept(i);
                return;
            default:
                ((C2762F0) this.f697b).f957a.accept(i);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2700l
    /* renamed from: l */
    public InterfaceC2700l mo165l(InterfaceC2700l interfaceC2700l) {
        switch (this.f696a) {
            case 0:
                Objects.requireNonNull(interfaceC2700l);
                return new C2699k(this, interfaceC2700l);
            default:
                Objects.requireNonNull(interfaceC2700l);
                return new C2699k(this, interfaceC2700l);
        }
    }
}
