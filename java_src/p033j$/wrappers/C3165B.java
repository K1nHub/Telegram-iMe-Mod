package p033j$.wrappers;

import java.util.function.DoubleFunction;
import p033j$.util.function.InterfaceC2821g;
/* renamed from: j$.wrappers.B */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3165B implements DoubleFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2821g f1264a;

    private /* synthetic */ C3165B(InterfaceC2821g interfaceC2821g) {
        this.f1264a = interfaceC2821g;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleFunction m295a(InterfaceC2821g interfaceC2821g) {
        if (interfaceC2821g == null) {
            return null;
        }
        return interfaceC2821g instanceof C3163A ? ((C3163A) interfaceC2821g).f1262a : new C3165B(interfaceC2821g);
    }

    @Override // java.util.function.DoubleFunction
    public /* synthetic */ Object apply(double d) {
        return this.f1264a.apply(d);
    }
}
