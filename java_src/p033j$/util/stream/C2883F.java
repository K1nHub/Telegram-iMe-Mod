package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2819e;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.util.stream.F */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2883F implements InterfaceC2820f {

    /* renamed from: a */
    public final /* synthetic */ int f867a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f868b;

    @Override // p033j$.util.function.InterfaceC2820f
    public final void accept(double d) {
        switch (this.f867a) {
            case 0:
                ((InterfaceC3076m3) this.f868b).accept(d);
                return;
            default:
                ((C2907J) this.f868b).f1080a.accept(d);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo158j(InterfaceC2820f interfaceC2820f) {
        switch (this.f867a) {
            case 0:
                Objects.requireNonNull(interfaceC2820f);
                return new C2819e(this, interfaceC2820f);
            default:
                Objects.requireNonNull(interfaceC2820f);
                return new C2819e(this, interfaceC2820f);
        }
    }
}
