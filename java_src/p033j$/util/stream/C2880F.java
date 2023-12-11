package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2816e;
import p033j$.util.function.InterfaceC2817f;
/* renamed from: j$.util.stream.F */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2880F implements InterfaceC2817f {

    /* renamed from: a */
    public final /* synthetic */ int f867a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f868b;

    @Override // p033j$.util.function.InterfaceC2817f
    public final void accept(double d) {
        switch (this.f867a) {
            case 0:
                ((InterfaceC3073m3) this.f868b).accept(d);
                return;
            default:
                ((C2904J) this.f868b).f1080a.accept(d);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2817f
    /* renamed from: j */
    public InterfaceC2817f mo158j(InterfaceC2817f interfaceC2817f) {
        switch (this.f867a) {
            case 0:
                Objects.requireNonNull(interfaceC2817f);
                return new C2816e(this, interfaceC2817f);
            default:
                Objects.requireNonNull(interfaceC2817f);
                return new C2816e(this, interfaceC2817f);
        }
    }
}
