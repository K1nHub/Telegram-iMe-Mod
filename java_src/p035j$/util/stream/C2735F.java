package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.C2667e;
import p035j$.util.function.InterfaceC2668f;
/* renamed from: j$.util.stream.F */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2735F implements InterfaceC2668f {

    /* renamed from: a */
    public final /* synthetic */ int f734a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f735b;

    @Override // p035j$.util.function.InterfaceC2668f
    public final void accept(double d) {
        switch (this.f734a) {
            case 0:
                ((InterfaceC2928m3) this.f735b).accept(d);
                return;
            default:
                ((C2759J) this.f735b).f947a.accept(d);
                return;
        }
    }

    @Override // p035j$.util.function.InterfaceC2668f
    /* renamed from: j */
    public InterfaceC2668f mo96j(InterfaceC2668f interfaceC2668f) {
        switch (this.f734a) {
            case 0:
                Objects.requireNonNull(interfaceC2668f);
                return new C2667e(this, interfaceC2668f);
            default:
                Objects.requireNonNull(interfaceC2668f);
                return new C2667e(this, interfaceC2668f);
        }
    }
}
