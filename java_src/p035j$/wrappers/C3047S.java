package p035j$.wrappers;

import java.util.function.IntFunction;
import p035j$.util.function.InterfaceC2675m;
/* renamed from: j$.wrappers.S */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3047S implements InterfaceC2675m {

    /* renamed from: a */
    final /* synthetic */ IntFunction f1163a;

    private /* synthetic */ C3047S(IntFunction intFunction) {
        this.f1163a = intFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2675m m172a(IntFunction intFunction) {
        if (intFunction == null) {
            return null;
        }
        return intFunction instanceof C3048T ? ((C3048T) intFunction).f1164a : new C3047S(intFunction);
    }

    @Override // p035j$.util.function.InterfaceC2675m
    public /* synthetic */ Object apply(int i) {
        return this.f1163a.apply(i);
    }
}
