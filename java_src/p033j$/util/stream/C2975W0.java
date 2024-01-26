package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2824o;
import p033j$.util.function.InterfaceC2825p;
/* renamed from: j$.util.stream.W0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2975W0 implements InterfaceC2825p {

    /* renamed from: a */
    public final /* synthetic */ int f989a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f990b;

    @Override // p033j$.util.function.InterfaceC2825p
    public final void accept(long j) {
        switch (this.f989a) {
            case 0:
                ((InterfaceC3071m3) this.f990b).accept(j);
                return;
            default:
                ((C2990Z0) this.f990b).f1097a.accept(j);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2825p
    /* renamed from: f */
    public InterfaceC2825p mo216f(InterfaceC2825p interfaceC2825p) {
        switch (this.f989a) {
            case 0:
                Objects.requireNonNull(interfaceC2825p);
                return new C2824o(this, interfaceC2825p);
            default:
                Objects.requireNonNull(interfaceC2825p);
                return new C2824o(this, interfaceC2825p);
        }
    }
}
