package p033j$.wrappers;

import java.util.function.LongFunction;
import p033j$.util.function.InterfaceC2887r;
/* renamed from: j$.wrappers.h0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3277h0 implements LongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2887r f1270a;

    private /* synthetic */ C3277h0(InterfaceC2887r interfaceC2887r) {
        this.f1270a = interfaceC2887r;
    }

    /* renamed from: a */
    public static /* synthetic */ LongFunction m152a(InterfaceC2887r interfaceC2887r) {
        if (interfaceC2887r == null) {
            return null;
        }
        return interfaceC2887r instanceof C3275g0 ? ((C3275g0) interfaceC2887r).f1268a : new C3277h0(interfaceC2887r);
    }

    @Override // java.util.function.LongFunction
    public /* synthetic */ Object apply(long j) {
        return this.f1270a.apply(j);
    }
}
