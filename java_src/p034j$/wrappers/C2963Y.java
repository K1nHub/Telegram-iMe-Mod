package p034j$.wrappers;

import java.util.function.IntToLongFunction;
import p034j$.util.function.InterfaceC2586n;
/* renamed from: j$.wrappers.Y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2963Y implements InterfaceC2586n {

    /* renamed from: a */
    final /* synthetic */ IntToLongFunction f1163a;

    private /* synthetic */ C2963Y(IntToLongFunction intToLongFunction) {
        this.f1163a = intToLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2586n m171a(IntToLongFunction intToLongFunction) {
        if (intToLongFunction == null) {
            return null;
        }
        return intToLongFunction instanceof C2964Z ? ((C2964Z) intToLongFunction).f1164a : new C2963Y(intToLongFunction);
    }

    @Override // p034j$.util.function.InterfaceC2586n
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1163a.applyAsLong(i);
    }
}
