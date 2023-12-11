package p033j$.wrappers;

import java.util.function.IntToLongFunction;
import p033j$.util.function.InterfaceC2824m;
/* renamed from: j$.wrappers.W */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3193W implements InterfaceC2824m {

    /* renamed from: a */
    final /* synthetic */ IntToLongFunction f1295a;

    private /* synthetic */ C3193W(IntToLongFunction intToLongFunction) {
        this.f1295a = intToLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2824m m226a(IntToLongFunction intToLongFunction) {
        if (intToLongFunction == null) {
            return null;
        }
        return intToLongFunction instanceof C3194X ? ((C3194X) intToLongFunction).f1296a : new C3193W(intToLongFunction);
    }

    @Override // p033j$.util.function.InterfaceC2824m
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1295a.applyAsLong(i);
    }
}
