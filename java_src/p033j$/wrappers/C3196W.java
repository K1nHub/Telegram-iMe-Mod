package p033j$.wrappers;

import java.util.function.IntToLongFunction;
import p033j$.util.function.InterfaceC2827m;
/* renamed from: j$.wrappers.W */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3196W implements InterfaceC2827m {

    /* renamed from: a */
    final /* synthetic */ IntToLongFunction f1295a;

    private /* synthetic */ C3196W(IntToLongFunction intToLongFunction) {
        this.f1295a = intToLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2827m m226a(IntToLongFunction intToLongFunction) {
        if (intToLongFunction == null) {
            return null;
        }
        return intToLongFunction instanceof C3197X ? ((C3197X) intToLongFunction).f1296a : new C3196W(intToLongFunction);
    }

    @Override // p033j$.util.function.InterfaceC2827m
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1295a.applyAsLong(i);
    }
}
