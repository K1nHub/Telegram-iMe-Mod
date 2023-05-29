package p034j$.wrappers;

import java.util.function.IntFunction;
import p034j$.util.function.InterfaceC2706m;
/* renamed from: j$.wrappers.S */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3078S implements InterfaceC2706m {

    /* renamed from: a */
    final /* synthetic */ IntFunction f1161a;

    private /* synthetic */ C3078S(IntFunction intFunction) {
        this.f1161a = intFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2706m m163a(IntFunction intFunction) {
        if (intFunction == null) {
            return null;
        }
        return intFunction instanceof C3079T ? ((C3079T) intFunction).f1162a : new C3078S(intFunction);
    }

    @Override // p034j$.util.function.InterfaceC2706m
    public /* synthetic */ Object apply(int i) {
        return this.f1161a.apply(i);
    }
}
