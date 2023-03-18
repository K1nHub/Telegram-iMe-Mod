package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2577e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2578f;
/* renamed from: j$.util.l */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2603l implements InterfaceC2578f {

    /* renamed from: a */
    public final /* synthetic */ Consumer f675a;

    @Override // p034j$.util.function.InterfaceC2578f
    public final void accept(double d) {
        this.f675a.accept(Double.valueOf(d));
    }

    @Override // p034j$.util.function.InterfaceC2578f
    /* renamed from: j */
    public InterfaceC2578f mo102j(InterfaceC2578f interfaceC2578f) {
        Objects.requireNonNull(interfaceC2578f);
        return new C2577e(this, interfaceC2578f);
    }
}
