package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2825o;
import p033j$.util.function.InterfaceC2826p;
/* renamed from: j$.util.stream.W0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2976W0 implements InterfaceC2826p {

    /* renamed from: a */
    public final /* synthetic */ int f989a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f990b;

    @Override // p033j$.util.function.InterfaceC2826p
    public final void accept(long j) {
        switch (this.f989a) {
            case 0:
                ((InterfaceC3072m3) this.f990b).accept(j);
                return;
            default:
                ((C2991Z0) this.f990b).f1097a.accept(j);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2826p
    /* renamed from: f */
    public InterfaceC2826p mo212f(InterfaceC2826p interfaceC2826p) {
        switch (this.f989a) {
            case 0:
                Objects.requireNonNull(interfaceC2826p);
                return new C2825o(this, interfaceC2826p);
            default:
                Objects.requireNonNull(interfaceC2826p);
                return new C2825o(this, interfaceC2826p);
        }
    }
}
