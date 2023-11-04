package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2819e implements InterfaceC2820f {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2820f f784a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2820f f785b;

    public /* synthetic */ C2819e(InterfaceC2820f interfaceC2820f, InterfaceC2820f interfaceC2820f2) {
        this.f784a = interfaceC2820f;
        this.f785b = interfaceC2820f2;
    }

    @Override // p033j$.util.function.InterfaceC2820f
    public final void accept(double d) {
        InterfaceC2820f interfaceC2820f = this.f784a;
        InterfaceC2820f interfaceC2820f2 = this.f785b;
        interfaceC2820f.accept(d);
        interfaceC2820f2.accept(d);
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo158j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }
}
