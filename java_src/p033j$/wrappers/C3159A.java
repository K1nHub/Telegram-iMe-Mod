package p033j$.wrappers;

import java.util.function.DoubleFunction;
import p033j$.util.function.InterfaceC2817g;
/* renamed from: j$.wrappers.A */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3159A implements InterfaceC2817g {

    /* renamed from: a */
    final /* synthetic */ DoubleFunction f1262a;

    private /* synthetic */ C3159A(DoubleFunction doubleFunction) {
        this.f1262a = doubleFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2817g m296a(DoubleFunction doubleFunction) {
        if (doubleFunction == null) {
            return null;
        }
        return doubleFunction instanceof C3161B ? ((C3161B) doubleFunction).f1264a : new C3159A(doubleFunction);
    }

    @Override // p033j$.util.function.InterfaceC2817g
    public /* synthetic */ Object apply(double d) {
        return this.f1262a.apply(d);
    }
}
