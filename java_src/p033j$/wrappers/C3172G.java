package p033j$.wrappers;

import java.util.function.DoubleToLongFunction;
import p033j$.util.function.InterfaceC2819h;
/* renamed from: j$.wrappers.G */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3172G implements InterfaceC2819h {

    /* renamed from: a */
    final /* synthetic */ DoubleToLongFunction f1274a;

    private /* synthetic */ C3172G(DoubleToLongFunction doubleToLongFunction) {
        this.f1274a = doubleToLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2819h m279a(DoubleToLongFunction doubleToLongFunction) {
        if (doubleToLongFunction == null) {
            return null;
        }
        return doubleToLongFunction instanceof C3174H ? ((C3174H) doubleToLongFunction).f1276a : new C3172G(doubleToLongFunction);
    }

    @Override // p033j$.util.function.InterfaceC2819h
    public /* synthetic */ long applyAsLong(double d) {
        return this.f1274a.applyAsLong(d);
    }
}
