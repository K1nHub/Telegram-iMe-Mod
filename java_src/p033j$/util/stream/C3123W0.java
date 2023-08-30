package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2969p;
import p033j$.util.function.InterfaceC2970q;
/* renamed from: j$.util.stream.W0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3123W0 implements InterfaceC2970q {

    /* renamed from: a */
    public final /* synthetic */ int f949a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f950b;

    @Override // p033j$.util.function.InterfaceC2970q
    public final void accept(long j) {
        switch (this.f949a) {
            case 0:
                ((InterfaceC3219m3) this.f950b).accept(j);
                return;
            default:
                ((C3138Z0) this.f950b).f1057a.accept(j);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2970q
    /* renamed from: f */
    public InterfaceC2970q mo158f(InterfaceC2970q interfaceC2970q) {
        switch (this.f949a) {
            case 0:
                Objects.requireNonNull(interfaceC2970q);
                return new C2969p(this, interfaceC2970q);
            default:
                Objects.requireNonNull(interfaceC2970q);
                return new C2969p(this, interfaceC2970q);
        }
    }
}
