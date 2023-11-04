package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2825k;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.util.stream.B0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2860B0 implements InterfaceC2826l {

    /* renamed from: a */
    public final /* synthetic */ int f831a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f832b;

    @Override // p033j$.util.function.InterfaceC2826l
    public final void accept(int i) {
        switch (this.f831a) {
            case 0:
                ((InterfaceC3076m3) this.f832b).accept(i);
                return;
            default:
                ((C2884F0) this.f832b).f1092a.accept(i);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: k */
    public InterfaceC2826l mo235k(InterfaceC2826l interfaceC2826l) {
        switch (this.f831a) {
            case 0:
                Objects.requireNonNull(interfaceC2826l);
                return new C2825k(this, interfaceC2826l);
            default:
                Objects.requireNonNull(interfaceC2826l);
                return new C2825k(this, interfaceC2826l);
        }
    }
}
