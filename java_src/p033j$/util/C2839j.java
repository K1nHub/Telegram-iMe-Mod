package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2816e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2817f;
/* renamed from: j$.util.j */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2839j implements InterfaceC2817f {

    /* renamed from: a */
    public final /* synthetic */ Consumer f808a;

    @Override // p033j$.util.function.InterfaceC2817f
    public final void accept(double d) {
        this.f808a.accept(Double.valueOf(d));
    }

    @Override // p033j$.util.function.InterfaceC2817f
    /* renamed from: j */
    public InterfaceC2817f mo158j(InterfaceC2817f interfaceC2817f) {
        Objects.requireNonNull(interfaceC2817f);
        return new C2816e(this, interfaceC2817f);
    }
}
