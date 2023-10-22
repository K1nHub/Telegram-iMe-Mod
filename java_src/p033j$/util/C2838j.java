package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2815e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816f;
/* renamed from: j$.util.j */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2838j implements InterfaceC2816f {

    /* renamed from: a */
    public final /* synthetic */ Consumer f808a;

    @Override // p033j$.util.function.InterfaceC2816f
    public final void accept(double d) {
        this.f808a.accept(Double.valueOf(d));
    }

    @Override // p033j$.util.function.InterfaceC2816f
    /* renamed from: j */
    public InterfaceC2816f mo156j(InterfaceC2816f interfaceC2816f) {
        Objects.requireNonNull(interfaceC2816f);
        return new C2815e(this, interfaceC2816f);
    }
}
