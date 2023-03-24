package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2597k;
import p034j$.util.function.InterfaceC2598l;
/* renamed from: j$.util.stream.B0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2636B0 implements InterfaceC2598l {

    /* renamed from: a */
    public final /* synthetic */ int f693a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f694b;

    @Override // p034j$.util.function.InterfaceC2598l
    public final void accept(int i) {
        switch (this.f693a) {
            case 0:
                ((InterfaceC2852m3) this.f694b).accept(i);
                return;
            default:
                ((C2660F0) this.f694b).f954a.accept(i);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2598l
    /* renamed from: l */
    public InterfaceC2598l mo179l(InterfaceC2598l interfaceC2598l) {
        switch (this.f693a) {
            case 0:
                Objects.requireNonNull(interfaceC2598l);
                return new C2597k(this, interfaceC2598l);
            default:
                Objects.requireNonNull(interfaceC2598l);
                return new C2597k(this, interfaceC2598l);
        }
    }
}
