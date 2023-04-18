package p034j$.wrappers;

import java.util.function.IntToLongFunction;
import p034j$.util.function.InterfaceC2663n;
/* renamed from: j$.wrappers.Y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3040Y implements InterfaceC2663n {

    /* renamed from: a */
    final /* synthetic */ IntToLongFunction f1164a;

    private /* synthetic */ C3040Y(IntToLongFunction intToLongFunction) {
        this.f1164a = intToLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2663n m151a(IntToLongFunction intToLongFunction) {
        if (intToLongFunction == null) {
            return null;
        }
        return intToLongFunction instanceof C3041Z ? ((C3041Z) intToLongFunction).f1165a : new C3040Y(intToLongFunction);
    }

    @Override // p034j$.util.function.InterfaceC2663n
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1164a.applyAsLong(i);
    }
}
