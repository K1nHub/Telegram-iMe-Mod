package p034j$.wrappers;

import java.util.function.IntToLongFunction;
import p034j$.util.function.InterfaceC2707n;
/* renamed from: j$.wrappers.Y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3084Y implements InterfaceC2707n {

    /* renamed from: a */
    final /* synthetic */ IntToLongFunction f1167a;

    private /* synthetic */ C3084Y(IntToLongFunction intToLongFunction) {
        this.f1167a = intToLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2707n m156a(IntToLongFunction intToLongFunction) {
        if (intToLongFunction == null) {
            return null;
        }
        return intToLongFunction instanceof C3085Z ? ((C3085Z) intToLongFunction).f1168a : new C3084Y(intToLongFunction);
    }

    @Override // p034j$.util.function.InterfaceC2707n
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1167a.applyAsLong(i);
    }
}
