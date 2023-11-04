package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2819e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.util.j */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2842j implements InterfaceC2820f {

    /* renamed from: a */
    public final /* synthetic */ Consumer f808a;

    @Override // p033j$.util.function.InterfaceC2820f
    public final void accept(double d) {
        this.f808a.accept(Double.valueOf(d));
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo158j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }
}
