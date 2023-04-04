package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.C2673k;
import p035j$.util.function.InterfaceC2674l;
/* renamed from: j$.util.stream.B0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2712B0 implements InterfaceC2674l {

    /* renamed from: a */
    public final /* synthetic */ int f698a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f699b;

    @Override // p035j$.util.function.InterfaceC2674l
    public final void accept(int i) {
        switch (this.f698a) {
            case 0:
                ((InterfaceC2928m3) this.f699b).accept(i);
                return;
            default:
                ((C2736F0) this.f699b).f959a.accept(i);
                return;
        }
    }

    @Override // p035j$.util.function.InterfaceC2674l
    /* renamed from: l */
    public InterfaceC2674l mo174l(InterfaceC2674l interfaceC2674l) {
        switch (this.f698a) {
            case 0:
                Objects.requireNonNull(interfaceC2674l);
                return new C2673k(this, interfaceC2674l);
            default:
                Objects.requireNonNull(interfaceC2674l);
                return new C2673k(this, interfaceC2674l);
        }
    }
}
