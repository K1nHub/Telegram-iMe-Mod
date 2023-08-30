package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2958e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2959f;
/* renamed from: j$.util.l */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2984l implements InterfaceC2959f {

    /* renamed from: a */
    public final /* synthetic */ Consumer f774a;

    @Override // p033j$.util.function.InterfaceC2959f
    public final void accept(double d) {
        this.f774a.accept(Double.valueOf(d));
    }

    @Override // p033j$.util.function.InterfaceC2959f
    /* renamed from: j */
    public InterfaceC2959f mo105j(InterfaceC2959f interfaceC2959f) {
        Objects.requireNonNull(interfaceC2959f);
        return new C2958e(this, interfaceC2959f);
    }
}
