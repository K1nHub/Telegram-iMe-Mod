package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2660k;
import p034j$.util.function.InterfaceC2661l;
/* renamed from: j$.util.stream.B0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2699B0 implements InterfaceC2661l {

    /* renamed from: a */
    public final /* synthetic */ int f693a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f694b;

    @Override // p034j$.util.function.InterfaceC2661l
    public final void accept(int i) {
        switch (this.f693a) {
            case 0:
                ((InterfaceC2915m3) this.f694b).accept(i);
                return;
            default:
                ((C2723F0) this.f694b).f954a.accept(i);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2661l
    /* renamed from: l */
    public InterfaceC2661l mo160l(InterfaceC2661l interfaceC2661l) {
        switch (this.f693a) {
            case 0:
                Objects.requireNonNull(interfaceC2661l);
                return new C2660k(this, interfaceC2661l);
            default:
                Objects.requireNonNull(interfaceC2661l);
                return new C2660k(this, interfaceC2661l);
        }
    }
}
