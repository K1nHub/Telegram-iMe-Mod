package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2885p;
import p033j$.util.function.InterfaceC2886q;
/* renamed from: j$.util.stream.W0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3039W0 implements InterfaceC2886q {

    /* renamed from: a */
    public final /* synthetic */ int f940a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f941b;

    @Override // p033j$.util.function.InterfaceC2886q
    public final void accept(long j) {
        switch (this.f940a) {
            case 0:
                ((InterfaceC3135m3) this.f941b).accept(j);
                return;
            default:
                ((C3054Z0) this.f941b).f1048a.accept(j);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2886q
    /* renamed from: f */
    public InterfaceC2886q mo158f(InterfaceC2886q interfaceC2886q) {
        switch (this.f940a) {
            case 0:
                Objects.requireNonNull(interfaceC2886q);
                return new C2885p(this, interfaceC2886q);
            default:
                Objects.requireNonNull(interfaceC2886q);
                return new C2885p(this, interfaceC2886q);
        }
    }
}
