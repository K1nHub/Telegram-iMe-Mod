package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2825k;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.util.stream.B0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2864B0 implements InterfaceC2826l {

    /* renamed from: a */
    public final /* synthetic */ int f781a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f782b;

    @Override // p033j$.util.function.InterfaceC2826l
    public final void accept(int i) {
        switch (this.f781a) {
            case 0:
                ((InterfaceC3080m3) this.f782b).accept(i);
                return;
            default:
                ((C2888F0) this.f782b).f1042a.accept(i);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: l */
    public InterfaceC2826l mo183l(InterfaceC2826l interfaceC2826l) {
        switch (this.f781a) {
            case 0:
                Objects.requireNonNull(interfaceC2826l);
                return new C2825k(this, interfaceC2826l);
            default:
                Objects.requireNonNull(interfaceC2826l);
                return new C2825k(this, interfaceC2826l);
        }
    }
}
