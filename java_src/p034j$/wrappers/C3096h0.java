package p034j$.wrappers;

import java.util.function.LongFunction;
import p034j$.util.function.InterfaceC2706r;
/* renamed from: j$.wrappers.h0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3096h0 implements LongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2706r f1184a;

    private /* synthetic */ C3096h0(InterfaceC2706r interfaceC2706r) {
        this.f1184a = interfaceC2706r;
    }

    /* renamed from: a */
    public static /* synthetic */ LongFunction m134a(InterfaceC2706r interfaceC2706r) {
        if (interfaceC2706r == null) {
            return null;
        }
        return interfaceC2706r instanceof C3094g0 ? ((C3094g0) interfaceC2706r).f1182a : new C3096h0(interfaceC2706r);
    }

    @Override // java.util.function.LongFunction
    public /* synthetic */ Object apply(long j) {
        return this.f1184a.apply(j);
    }
}
