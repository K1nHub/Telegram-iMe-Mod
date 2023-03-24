package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2591e;
import p034j$.util.function.InterfaceC2592f;
/* renamed from: j$.util.stream.F */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2659F implements InterfaceC2592f {

    /* renamed from: a */
    public final /* synthetic */ int f729a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f730b;

    @Override // p034j$.util.function.InterfaceC2592f
    public final void accept(double d) {
        switch (this.f729a) {
            case 0:
                ((InterfaceC2852m3) this.f730b).accept(d);
                return;
            default:
                ((C2683J) this.f730b).f942a.accept(d);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2592f
    /* renamed from: j */
    public InterfaceC2592f mo101j(InterfaceC2592f interfaceC2592f) {
        switch (this.f729a) {
            case 0:
                Objects.requireNonNull(interfaceC2592f);
                return new C2591e(this, interfaceC2592f);
            default:
                Objects.requireNonNull(interfaceC2592f);
                return new C2591e(this, interfaceC2592f);
        }
    }
}
