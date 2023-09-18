package p033j$.wrappers;

import java.util.function.IntToLongFunction;
import p033j$.util.function.InterfaceC2883n;
/* renamed from: j$.wrappers.Y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3260Y implements InterfaceC2883n {

    /* renamed from: a */
    final /* synthetic */ IntToLongFunction f1253a;

    private /* synthetic */ C3260Y(IntToLongFunction intToLongFunction) {
        this.f1253a = intToLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2883n m174a(IntToLongFunction intToLongFunction) {
        if (intToLongFunction == null) {
            return null;
        }
        return intToLongFunction instanceof C3261Z ? ((C3261Z) intToLongFunction).f1254a : new C3260Y(intToLongFunction);
    }

    @Override // p033j$.util.function.InterfaceC2883n
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1253a.applyAsLong(i);
    }
}
