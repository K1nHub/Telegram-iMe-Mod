package p033j$.wrappers;

import java.util.function.IntToLongFunction;
import p033j$.util.function.InterfaceC2828n;
/* renamed from: j$.wrappers.Z */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3206Z implements IntToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2828n f1250a;

    private /* synthetic */ C3206Z(InterfaceC2828n interfaceC2828n) {
        this.f1250a = interfaceC2828n;
    }

    /* renamed from: a */
    public static /* synthetic */ IntToLongFunction m155a(InterfaceC2828n interfaceC2828n) {
        if (interfaceC2828n == null) {
            return null;
        }
        return interfaceC2828n instanceof C3205Y ? ((C3205Y) interfaceC2828n).f1249a : new C3206Z(interfaceC2828n);
    }

    @Override // java.util.function.IntToLongFunction
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1250a.applyAsLong(i);
    }
}
