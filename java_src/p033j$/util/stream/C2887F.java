package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2819e;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.util.stream.F */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2887F implements InterfaceC2820f {

    /* renamed from: a */
    public final /* synthetic */ int f814a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f815b;

    @Override // p033j$.util.function.InterfaceC2820f
    public final void accept(double d) {
        switch (this.f814a) {
            case 0:
                ((InterfaceC3080m3) this.f815b).accept(d);
                return;
            default:
                ((C2911J) this.f815b).f1027a.accept(d);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo87j(InterfaceC2820f interfaceC2820f) {
        switch (this.f814a) {
            case 0:
                Objects.requireNonNull(interfaceC2820f);
                return new C2819e(this, interfaceC2820f);
            default:
                Objects.requireNonNull(interfaceC2820f);
                return new C2819e(this, interfaceC2820f);
        }
    }
}
