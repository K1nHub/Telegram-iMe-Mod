package p033j$.wrappers;

import java.util.function.DoubleToLongFunction;
import p033j$.util.function.InterfaceC2822h;
/* renamed from: j$.wrappers.H */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3177H implements DoubleToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2822h f1276a;

    private /* synthetic */ C3177H(InterfaceC2822h interfaceC2822h) {
        this.f1276a = interfaceC2822h;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleToLongFunction m278a(InterfaceC2822h interfaceC2822h) {
        if (interfaceC2822h == null) {
            return null;
        }
        return interfaceC2822h instanceof C3175G ? ((C3175G) interfaceC2822h).f1274a : new C3177H(interfaceC2822h);
    }

    @Override // java.util.function.DoubleToLongFunction
    public /* synthetic */ long applyAsLong(double d) {
        return this.f1276a.applyAsLong(d);
    }
}
