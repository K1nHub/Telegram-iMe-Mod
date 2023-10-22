package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2821k;
import p033j$.util.function.InterfaceC2822l;
/* renamed from: j$.util.stream.B0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2856B0 implements InterfaceC2822l {

    /* renamed from: a */
    public final /* synthetic */ int f831a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f832b;

    @Override // p033j$.util.function.InterfaceC2822l
    public final void accept(int i) {
        switch (this.f831a) {
            case 0:
                ((InterfaceC3072m3) this.f832b).accept(i);
                return;
            default:
                ((C2880F0) this.f832b).f1092a.accept(i);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2822l
    /* renamed from: k */
    public InterfaceC2822l mo234k(InterfaceC2822l interfaceC2822l) {
        switch (this.f831a) {
            case 0:
                Objects.requireNonNull(interfaceC2822l);
                return new C2821k(this, interfaceC2822l);
            default:
                Objects.requireNonNull(interfaceC2822l);
                return new C2821k(this, interfaceC2822l);
        }
    }
}
