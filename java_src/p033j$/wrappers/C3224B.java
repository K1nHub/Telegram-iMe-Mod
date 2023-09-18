package p033j$.wrappers;

import java.util.function.DoubleFunction;
import p033j$.util.function.InterfaceC2876g;
/* renamed from: j$.wrappers.B */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3224B implements InterfaceC2876g {

    /* renamed from: a */
    final /* synthetic */ DoubleFunction f1217a;

    private /* synthetic */ C3224B(DoubleFunction doubleFunction) {
        this.f1217a = doubleFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2876g m248a(DoubleFunction doubleFunction) {
        if (doubleFunction == null) {
            return null;
        }
        return doubleFunction instanceof C3226C ? ((C3226C) doubleFunction).f1219a : new C3224B(doubleFunction);
    }

    @Override // p033j$.util.function.InterfaceC2876g
    public /* synthetic */ Object apply(double d) {
        return this.f1217a.apply(d);
    }
}
