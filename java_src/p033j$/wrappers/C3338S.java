package p033j$.wrappers;

import java.util.function.IntFunction;
import p033j$.util.function.InterfaceC2966m;
/* renamed from: j$.wrappers.S */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3338S implements InterfaceC2966m {

    /* renamed from: a */
    final /* synthetic */ IntFunction f1256a;

    private /* synthetic */ C3338S(IntFunction intFunction) {
        this.f1256a = intFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2966m m181a(IntFunction intFunction) {
        if (intFunction == null) {
            return null;
        }
        return intFunction instanceof C3339T ? ((C3339T) intFunction).f1257a : new C3338S(intFunction);
    }

    @Override // p033j$.util.function.InterfaceC2966m
    public /* synthetic */ Object apply(int i) {
        return this.f1256a.apply(i);
    }
}
