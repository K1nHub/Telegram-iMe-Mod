package p033j$.wrappers;

import java.util.function.IntFunction;
import p033j$.util.function.InterfaceC2882m;
/* renamed from: j$.wrappers.S */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3254S implements InterfaceC2882m {

    /* renamed from: a */
    final /* synthetic */ IntFunction f1247a;

    private /* synthetic */ C3254S(IntFunction intFunction) {
        this.f1247a = intFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2882m m181a(IntFunction intFunction) {
        if (intFunction == null) {
            return null;
        }
        return intFunction instanceof C3255T ? ((C3255T) intFunction).f1248a : new C3254S(intFunction);
    }

    @Override // p033j$.util.function.InterfaceC2882m
    public /* synthetic */ Object apply(int i) {
        return this.f1247a.apply(i);
    }
}
