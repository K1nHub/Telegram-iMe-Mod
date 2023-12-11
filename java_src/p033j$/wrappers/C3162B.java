package p033j$.wrappers;

import java.util.function.DoubleFunction;
import p033j$.util.function.InterfaceC2818g;
/* renamed from: j$.wrappers.B */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3162B implements DoubleFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2818g f1264a;

    private /* synthetic */ C3162B(InterfaceC2818g interfaceC2818g) {
        this.f1264a = interfaceC2818g;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleFunction m295a(InterfaceC2818g interfaceC2818g) {
        if (interfaceC2818g == null) {
            return null;
        }
        return interfaceC2818g instanceof C3160A ? ((C3160A) interfaceC2818g).f1262a : new C3162B(interfaceC2818g);
    }

    @Override // java.util.function.DoubleFunction
    public /* synthetic */ Object apply(double d) {
        return this.f1264a.apply(d);
    }
}
