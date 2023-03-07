package p034j$.wrappers;

import java.util.function.IntToLongFunction;
import p034j$.util.function.InterfaceC2462n;
/* renamed from: j$.wrappers.Y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2839Y implements InterfaceC2462n {

    /* renamed from: a */
    final /* synthetic */ IntToLongFunction f1158a;

    private /* synthetic */ C2839Y(IntToLongFunction intToLongFunction) {
        this.f1158a = intToLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2462n m171a(IntToLongFunction intToLongFunction) {
        if (intToLongFunction == null) {
            return null;
        }
        return intToLongFunction instanceof C2840Z ? ((C2840Z) intToLongFunction).f1159a : new C2839Y(intToLongFunction);
    }

    @Override // p034j$.util.function.InterfaceC2462n
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1158a.applyAsLong(i);
    }
}
