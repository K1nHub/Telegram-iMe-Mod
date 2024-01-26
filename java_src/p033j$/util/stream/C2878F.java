package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2814e;
import p033j$.util.function.InterfaceC2815f;
/* renamed from: j$.util.stream.F */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2878F implements InterfaceC2815f {

    /* renamed from: a */
    public final /* synthetic */ int f867a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f868b;

    @Override // p033j$.util.function.InterfaceC2815f
    public final void accept(double d) {
        switch (this.f867a) {
            case 0:
                ((InterfaceC3071m3) this.f868b).accept(d);
                return;
            default:
                ((C2902J) this.f868b).f1080a.accept(d);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2815f
    /* renamed from: j */
    public InterfaceC2815f mo161j(InterfaceC2815f interfaceC2815f) {
        switch (this.f867a) {
            case 0:
                Objects.requireNonNull(interfaceC2815f);
                return new C2814e(this, interfaceC2815f);
            default:
                Objects.requireNonNull(interfaceC2815f);
                return new C2814e(this, interfaceC2815f);
        }
    }
}
