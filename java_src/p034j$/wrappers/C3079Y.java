package p034j$.wrappers;

import java.util.function.IntToLongFunction;
import p034j$.util.function.InterfaceC2702n;
/* renamed from: j$.wrappers.Y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3079Y implements InterfaceC2702n {

    /* renamed from: a */
    final /* synthetic */ IntToLongFunction f1167a;

    private /* synthetic */ C3079Y(IntToLongFunction intToLongFunction) {
        this.f1167a = intToLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2702n m156a(IntToLongFunction intToLongFunction) {
        if (intToLongFunction == null) {
            return null;
        }
        return intToLongFunction instanceof C3080Z ? ((C3080Z) intToLongFunction).f1168a : new C3079Y(intToLongFunction);
    }

    @Override // p034j$.util.function.InterfaceC2702n
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1167a.applyAsLong(i);
    }
}
