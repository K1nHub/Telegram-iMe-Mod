package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2819e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.util.l */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2845l implements InterfaceC2820f {

    /* renamed from: a */
    public final /* synthetic */ Consumer f764a;

    @Override // p033j$.util.function.InterfaceC2820f
    public final void accept(double d) {
        this.f764a.accept(Double.valueOf(d));
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo105j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }
}
