package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2880k;
import p033j$.util.function.InterfaceC2881l;
/* renamed from: j$.util.stream.B0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2919B0 implements InterfaceC2881l {

    /* renamed from: a */
    public final /* synthetic */ int f782a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f783b;

    @Override // p033j$.util.function.InterfaceC2881l
    public final void accept(int i) {
        switch (this.f782a) {
            case 0:
                ((InterfaceC3135m3) this.f783b).accept(i);
                return;
            default:
                ((C2943F0) this.f783b).f1043a.accept(i);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2881l
    /* renamed from: l */
    public InterfaceC2881l mo183l(InterfaceC2881l interfaceC2881l) {
        switch (this.f782a) {
            case 0:
                Objects.requireNonNull(interfaceC2881l);
                return new C2880k(this, interfaceC2881l);
            default:
                Objects.requireNonNull(interfaceC2881l);
                return new C2880k(this, interfaceC2881l);
        }
    }
}
