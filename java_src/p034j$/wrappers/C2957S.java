package p034j$.wrappers;

import java.util.function.IntFunction;
import p034j$.util.function.InterfaceC2585m;
/* renamed from: j$.wrappers.S */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2957S implements InterfaceC2585m {

    /* renamed from: a */
    final /* synthetic */ IntFunction f1157a;

    private /* synthetic */ C2957S(IntFunction intFunction) {
        this.f1157a = intFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2585m m178a(IntFunction intFunction) {
        if (intFunction == null) {
            return null;
        }
        return intFunction instanceof C2958T ? ((C2958T) intFunction).f1158a : new C2957S(intFunction);
    }

    @Override // p034j$.util.function.InterfaceC2585m
    public /* synthetic */ Object apply(int i) {
        return this.f1157a.apply(i);
    }
}
