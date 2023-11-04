package p033j$.wrappers;

import java.util.function.DoubleFunction;
import p033j$.util.function.InterfaceC2821g;
/* renamed from: j$.wrappers.A */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3163A implements InterfaceC2821g {

    /* renamed from: a */
    final /* synthetic */ DoubleFunction f1262a;

    private /* synthetic */ C3163A(DoubleFunction doubleFunction) {
        this.f1262a = doubleFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2821g m297a(DoubleFunction doubleFunction) {
        if (doubleFunction == null) {
            return null;
        }
        return doubleFunction instanceof C3165B ? ((C3165B) doubleFunction).f1264a : new C3163A(doubleFunction);
    }

    @Override // p033j$.util.function.InterfaceC2821g
    public /* synthetic */ Object apply(double d) {
        return this.f1262a.apply(d);
    }
}
