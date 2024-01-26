package p033j$.wrappers;

import java.util.function.DoubleFunction;
import p033j$.util.function.InterfaceC2816g;
/* renamed from: j$.wrappers.A */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3158A implements InterfaceC2816g {

    /* renamed from: a */
    final /* synthetic */ DoubleFunction f1262a;

    private /* synthetic */ C3158A(DoubleFunction doubleFunction) {
        this.f1262a = doubleFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2816g m300a(DoubleFunction doubleFunction) {
        if (doubleFunction == null) {
            return null;
        }
        return doubleFunction instanceof C3160B ? ((C3160B) doubleFunction).f1264a : new C3158A(doubleFunction);
    }

    @Override // p033j$.util.function.InterfaceC2816g
    public /* synthetic */ Object apply(double d) {
        return this.f1262a.apply(d);
    }
}
