package p033j$.wrappers;

import java.util.function.IntToLongFunction;
import p033j$.util.function.InterfaceC2967n;
/* renamed from: j$.wrappers.Y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3344Y implements InterfaceC2967n {

    /* renamed from: a */
    final /* synthetic */ IntToLongFunction f1262a;

    private /* synthetic */ C3344Y(IntToLongFunction intToLongFunction) {
        this.f1262a = intToLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2967n m174a(IntToLongFunction intToLongFunction) {
        if (intToLongFunction == null) {
            return null;
        }
        return intToLongFunction instanceof C3345Z ? ((C3345Z) intToLongFunction).f1263a : new C3344Y(intToLongFunction);
    }

    @Override // p033j$.util.function.InterfaceC2967n
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1262a.applyAsLong(i);
    }
}
