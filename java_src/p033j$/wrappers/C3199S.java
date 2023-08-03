package p033j$.wrappers;

import java.util.function.IntFunction;
import p033j$.util.function.InterfaceC2827m;
/* renamed from: j$.wrappers.S */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3199S implements InterfaceC2827m {

    /* renamed from: a */
    final /* synthetic */ IntFunction f1246a;

    private /* synthetic */ C3199S(IntFunction intFunction) {
        this.f1246a = intFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2827m m181a(IntFunction intFunction) {
        if (intFunction == null) {
            return null;
        }
        return intFunction instanceof C3200T ? ((C3200T) intFunction).f1247a : new C3199S(intFunction);
    }

    @Override // p033j$.util.function.InterfaceC2827m
    public /* synthetic */ Object apply(int i) {
        return this.f1246a.apply(i);
    }
}
