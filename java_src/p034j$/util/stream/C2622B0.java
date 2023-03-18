package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2583k;
import p034j$.util.function.InterfaceC2584l;
/* renamed from: j$.util.stream.B0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2622B0 implements InterfaceC2584l {

    /* renamed from: a */
    public final /* synthetic */ int f692a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f693b;

    @Override // p034j$.util.function.InterfaceC2584l
    public final void accept(int i) {
        switch (this.f692a) {
            case 0:
                ((InterfaceC2838m3) this.f693b).accept(i);
                return;
            default:
                ((C2646F0) this.f693b).f953a.accept(i);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2584l
    /* renamed from: l */
    public InterfaceC2584l mo180l(InterfaceC2584l interfaceC2584l) {
        switch (this.f692a) {
            case 0:
                Objects.requireNonNull(interfaceC2584l);
                return new C2583k(this, interfaceC2584l);
            default:
                Objects.requireNonNull(interfaceC2584l);
                return new C2583k(this, interfaceC2584l);
        }
    }
}
