package p034j$.wrappers;

import java.util.function.IntFunction;
import p034j$.util.function.InterfaceC2662m;
/* renamed from: j$.wrappers.S */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3034S implements InterfaceC2662m {

    /* renamed from: a */
    final /* synthetic */ IntFunction f1158a;

    private /* synthetic */ C3034S(IntFunction intFunction) {
        this.f1158a = intFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2662m m158a(IntFunction intFunction) {
        if (intFunction == null) {
            return null;
        }
        return intFunction instanceof C3035T ? ((C3035T) intFunction).f1159a : new C3034S(intFunction);
    }

    @Override // p034j$.util.function.InterfaceC2662m
    public /* synthetic */ Object apply(int i) {
        return this.f1158a.apply(i);
    }
}
