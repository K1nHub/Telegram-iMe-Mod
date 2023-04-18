package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2665p;
import p034j$.util.function.InterfaceC2666q;
/* renamed from: j$.util.stream.W0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2819W0 implements InterfaceC2666q {

    /* renamed from: a */
    public final /* synthetic */ int f851a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f852b;

    @Override // p034j$.util.function.InterfaceC2666q
    public final void accept(long j) {
        switch (this.f851a) {
            case 0:
                ((InterfaceC2915m3) this.f852b).accept(j);
                return;
            default:
                ((C2834Z0) this.f852b).f959a.accept(j);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2666q
    /* renamed from: f */
    public InterfaceC2666q mo135f(InterfaceC2666q interfaceC2666q) {
        switch (this.f851a) {
            case 0:
                Objects.requireNonNull(interfaceC2666q);
                return new C2665p(this, interfaceC2666q);
            default:
                Objects.requireNonNull(interfaceC2666q);
                return new C2665p(this, interfaceC2666q);
        }
    }
}
