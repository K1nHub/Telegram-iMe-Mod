package p034j$.wrappers;

import java.util.function.IntFunction;
import p034j$.util.function.InterfaceC2599m;
/* renamed from: j$.wrappers.S */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2971S implements InterfaceC2599m {

    /* renamed from: a */
    final /* synthetic */ IntFunction f1158a;

    private /* synthetic */ C2971S(IntFunction intFunction) {
        this.f1158a = intFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2599m m177a(IntFunction intFunction) {
        if (intFunction == null) {
            return null;
        }
        return intFunction instanceof C2972T ? ((C2972T) intFunction).f1159a : new C2971S(intFunction);
    }

    @Override // p034j$.util.function.InterfaceC2599m
    public /* synthetic */ Object apply(int i) {
        return this.f1158a.apply(i);
    }
}
