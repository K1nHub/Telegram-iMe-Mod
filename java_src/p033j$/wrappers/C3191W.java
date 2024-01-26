package p033j$.wrappers;

import java.util.function.IntToLongFunction;
import p033j$.util.function.InterfaceC2822m;
/* renamed from: j$.wrappers.W */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3191W implements InterfaceC2822m {

    /* renamed from: a */
    final /* synthetic */ IntToLongFunction f1295a;

    private /* synthetic */ C3191W(IntToLongFunction intToLongFunction) {
        this.f1295a = intToLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2822m m229a(IntToLongFunction intToLongFunction) {
        if (intToLongFunction == null) {
            return null;
        }
        return intToLongFunction instanceof C3192X ? ((C3192X) intToLongFunction).f1296a : new C3191W(intToLongFunction);
    }

    @Override // p033j$.util.function.InterfaceC2822m
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1295a.applyAsLong(i);
    }
}
