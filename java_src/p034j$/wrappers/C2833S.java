package p034j$.wrappers;

import java.util.function.IntFunction;
import p034j$.util.function.InterfaceC2461m;
/* renamed from: j$.wrappers.S */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2833S implements InterfaceC2461m {

    /* renamed from: a */
    final /* synthetic */ IntFunction f1152a;

    private /* synthetic */ C2833S(IntFunction intFunction) {
        this.f1152a = intFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2461m m178a(IntFunction intFunction) {
        if (intFunction == null) {
            return null;
        }
        return intFunction instanceof C2834T ? ((C2834T) intFunction).f1153a : new C2833S(intFunction);
    }

    @Override // p034j$.util.function.InterfaceC2461m
    public /* synthetic */ Object apply(int i) {
        return this.f1152a.apply(i);
    }
}
