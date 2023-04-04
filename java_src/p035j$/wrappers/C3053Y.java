package p035j$.wrappers;

import java.util.function.IntToLongFunction;
import p035j$.util.function.InterfaceC2676n;
/* renamed from: j$.wrappers.Y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3053Y implements InterfaceC2676n {

    /* renamed from: a */
    final /* synthetic */ IntToLongFunction f1169a;

    private /* synthetic */ C3053Y(IntToLongFunction intToLongFunction) {
        this.f1169a = intToLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2676n m165a(IntToLongFunction intToLongFunction) {
        if (intToLongFunction == null) {
            return null;
        }
        return intToLongFunction instanceof C3054Z ? ((C3054Z) intToLongFunction).f1170a : new C3053Y(intToLongFunction);
    }

    @Override // p035j$.util.function.InterfaceC2676n
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1169a.applyAsLong(i);
    }
}
