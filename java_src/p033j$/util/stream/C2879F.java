package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2815e;
import p033j$.util.function.InterfaceC2816f;
/* renamed from: j$.util.stream.F */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2879F implements InterfaceC2816f {

    /* renamed from: a */
    public final /* synthetic */ int f867a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f868b;

    @Override // p033j$.util.function.InterfaceC2816f
    public final void accept(double d) {
        switch (this.f867a) {
            case 0:
                ((InterfaceC3072m3) this.f868b).accept(d);
                return;
            default:
                ((C2903J) this.f868b).f1080a.accept(d);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2816f
    /* renamed from: j */
    public InterfaceC2816f mo156j(InterfaceC2816f interfaceC2816f) {
        switch (this.f867a) {
            case 0:
                Objects.requireNonNull(interfaceC2816f);
                return new C2815e(this, interfaceC2816f);
            default:
                Objects.requireNonNull(interfaceC2816f);
                return new C2815e(this, interfaceC2816f);
        }
    }
}
