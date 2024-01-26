package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2820k;
import p033j$.util.function.InterfaceC2821l;
/* renamed from: j$.util.stream.B0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2855B0 implements InterfaceC2821l {

    /* renamed from: a */
    public final /* synthetic */ int f831a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f832b;

    @Override // p033j$.util.function.InterfaceC2821l
    public final void accept(int i) {
        switch (this.f831a) {
            case 0:
                ((InterfaceC3071m3) this.f832b).accept(i);
                return;
            default:
                ((C2879F0) this.f832b).f1092a.accept(i);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2821l
    /* renamed from: k */
    public InterfaceC2821l mo238k(InterfaceC2821l interfaceC2821l) {
        switch (this.f831a) {
            case 0:
                Objects.requireNonNull(interfaceC2821l);
                return new C2820k(this, interfaceC2821l);
            default:
                Objects.requireNonNull(interfaceC2821l);
                return new C2820k(this, interfaceC2821l);
        }
    }
}
