package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2459k;
import p034j$.util.function.InterfaceC2460l;
/* renamed from: j$.util.stream.B0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2498B0 implements InterfaceC2460l {

    /* renamed from: a */
    public final /* synthetic */ int f687a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f688b;

    @Override // p034j$.util.function.InterfaceC2460l
    public final void accept(int i) {
        switch (this.f687a) {
            case 0:
                ((InterfaceC2714m3) this.f688b).accept(i);
                return;
            default:
                ((C2522F0) this.f688b).f948a.accept(i);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2460l
    /* renamed from: l */
    public InterfaceC2460l mo180l(InterfaceC2460l interfaceC2460l) {
        switch (this.f687a) {
            case 0:
                Objects.requireNonNull(interfaceC2460l);
                return new C2459k(this, interfaceC2460l);
            default:
                Objects.requireNonNull(interfaceC2460l);
                return new C2459k(this, interfaceC2460l);
        }
    }
}
