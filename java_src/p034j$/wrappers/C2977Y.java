package p034j$.wrappers;

import java.util.function.IntToLongFunction;
import p034j$.util.function.InterfaceC2600n;
/* renamed from: j$.wrappers.Y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2977Y implements InterfaceC2600n {

    /* renamed from: a */
    final /* synthetic */ IntToLongFunction f1164a;

    private /* synthetic */ C2977Y(IntToLongFunction intToLongFunction) {
        this.f1164a = intToLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2600n m170a(IntToLongFunction intToLongFunction) {
        if (intToLongFunction == null) {
            return null;
        }
        return intToLongFunction instanceof C2978Z ? ((C2978Z) intToLongFunction).f1165a : new C2977Y(intToLongFunction);
    }

    @Override // p034j$.util.function.InterfaceC2600n
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1164a.applyAsLong(i);
    }
}
