package p033j$.wrappers;

import java.util.function.IntToLongFunction;
import p033j$.util.function.InterfaceC2828n;
/* renamed from: j$.wrappers.Y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3205Y implements InterfaceC2828n {

    /* renamed from: a */
    final /* synthetic */ IntToLongFunction f1252a;

    private /* synthetic */ C3205Y(IntToLongFunction intToLongFunction) {
        this.f1252a = intToLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2828n m174a(IntToLongFunction intToLongFunction) {
        if (intToLongFunction == null) {
            return null;
        }
        return intToLongFunction instanceof C3206Z ? ((C3206Z) intToLongFunction).f1253a : new C3205Y(intToLongFunction);
    }

    @Override // p033j$.util.function.InterfaceC2828n
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1252a.applyAsLong(i);
    }
}
