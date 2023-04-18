package p034j$.wrappers;

import java.util.function.LongFunction;
import p034j$.util.function.InterfaceC2667r;
/* renamed from: j$.wrappers.h0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3057h0 implements LongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2667r f1181a;

    private /* synthetic */ C3057h0(InterfaceC2667r interfaceC2667r) {
        this.f1181a = interfaceC2667r;
    }

    /* renamed from: a */
    public static /* synthetic */ LongFunction m129a(InterfaceC2667r interfaceC2667r) {
        if (interfaceC2667r == null) {
            return null;
        }
        return interfaceC2667r instanceof C3055g0 ? ((C3055g0) interfaceC2667r).f1179a : new C3057h0(interfaceC2667r);
    }

    @Override // java.util.function.LongFunction
    public /* synthetic */ Object apply(long j) {
        return this.f1181a.apply(j);
    }
}
