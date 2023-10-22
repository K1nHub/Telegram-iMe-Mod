package p033j$.wrappers;

import java.util.function.IntToLongFunction;
import p033j$.util.function.InterfaceC2823m;
/* renamed from: j$.wrappers.W */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3192W implements InterfaceC2823m {

    /* renamed from: a */
    final /* synthetic */ IntToLongFunction f1295a;

    private /* synthetic */ C3192W(IntToLongFunction intToLongFunction) {
        this.f1295a = intToLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2823m m225a(IntToLongFunction intToLongFunction) {
        if (intToLongFunction == null) {
            return null;
        }
        return intToLongFunction instanceof C3193X ? ((C3193X) intToLongFunction).f1296a : new C3192W(intToLongFunction);
    }

    @Override // p033j$.util.function.InterfaceC2823m
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1295a.applyAsLong(i);
    }
}
