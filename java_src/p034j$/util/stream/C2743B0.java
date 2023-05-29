package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2704k;
import p034j$.util.function.InterfaceC2705l;
/* renamed from: j$.util.stream.B0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2743B0 implements InterfaceC2705l {

    /* renamed from: a */
    public final /* synthetic */ int f696a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f697b;

    @Override // p034j$.util.function.InterfaceC2705l
    public final void accept(int i) {
        switch (this.f696a) {
            case 0:
                ((InterfaceC2959m3) this.f697b).accept(i);
                return;
            default:
                ((C2767F0) this.f697b).f957a.accept(i);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2705l
    /* renamed from: l */
    public InterfaceC2705l mo165l(InterfaceC2705l interfaceC2705l) {
        switch (this.f696a) {
            case 0:
                Objects.requireNonNull(interfaceC2705l);
                return new C2704k(this, interfaceC2705l);
            default:
                Objects.requireNonNull(interfaceC2705l);
                return new C2704k(this, interfaceC2705l);
        }
    }
}
