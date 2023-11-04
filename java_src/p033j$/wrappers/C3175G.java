package p033j$.wrappers;

import java.util.function.DoubleToLongFunction;
import p033j$.util.function.InterfaceC2822h;
/* renamed from: j$.wrappers.G */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3175G implements InterfaceC2822h {

    /* renamed from: a */
    final /* synthetic */ DoubleToLongFunction f1274a;

    private /* synthetic */ C3175G(DoubleToLongFunction doubleToLongFunction) {
        this.f1274a = doubleToLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2822h m279a(DoubleToLongFunction doubleToLongFunction) {
        if (doubleToLongFunction == null) {
            return null;
        }
        return doubleToLongFunction instanceof C3177H ? ((C3177H) doubleToLongFunction).f1276a : new C3175G(doubleToLongFunction);
    }

    @Override // p033j$.util.function.InterfaceC2822h
    public /* synthetic */ long applyAsLong(double d) {
        return this.f1274a.applyAsLong(d);
    }
}
