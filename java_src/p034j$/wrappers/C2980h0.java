package p034j$.wrappers;

import java.util.function.LongFunction;
import p034j$.util.function.InterfaceC2590r;
/* renamed from: j$.wrappers.h0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2980h0 implements LongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2590r f1180a;

    private /* synthetic */ C2980h0(InterfaceC2590r interfaceC2590r) {
        this.f1180a = interfaceC2590r;
    }

    /* renamed from: a */
    public static /* synthetic */ LongFunction m149a(InterfaceC2590r interfaceC2590r) {
        if (interfaceC2590r == null) {
            return null;
        }
        return interfaceC2590r instanceof C2978g0 ? ((C2978g0) interfaceC2590r).f1178a : new C2980h0(interfaceC2590r);
    }

    @Override // java.util.function.LongFunction
    public /* synthetic */ Object apply(long j) {
        return this.f1180a.apply(j);
    }
}
