package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2822k;
import p033j$.util.function.InterfaceC2823l;
/* renamed from: j$.util.stream.B0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2857B0 implements InterfaceC2823l {

    /* renamed from: a */
    public final /* synthetic */ int f831a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f832b;

    @Override // p033j$.util.function.InterfaceC2823l
    public final void accept(int i) {
        switch (this.f831a) {
            case 0:
                ((InterfaceC3073m3) this.f832b).accept(i);
                return;
            default:
                ((C2881F0) this.f832b).f1092a.accept(i);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2823l
    /* renamed from: k */
    public InterfaceC2823l mo235k(InterfaceC2823l interfaceC2823l) {
        switch (this.f831a) {
            case 0:
                Objects.requireNonNull(interfaceC2823l);
                return new C2822k(this, interfaceC2823l);
            default:
                Objects.requireNonNull(interfaceC2823l);
                return new C2822k(this, interfaceC2823l);
        }
    }
}
