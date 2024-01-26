package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2814e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2815f;
/* renamed from: j$.util.j */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2837j implements InterfaceC2815f {

    /* renamed from: a */
    public final /* synthetic */ Consumer f808a;

    @Override // p033j$.util.function.InterfaceC2815f
    public final void accept(double d) {
        this.f808a.accept(Double.valueOf(d));
    }

    @Override // p033j$.util.function.InterfaceC2815f
    /* renamed from: j */
    public InterfaceC2815f mo161j(InterfaceC2815f interfaceC2815f) {
        Objects.requireNonNull(interfaceC2815f);
        return new C2814e(this, interfaceC2815f);
    }
}
