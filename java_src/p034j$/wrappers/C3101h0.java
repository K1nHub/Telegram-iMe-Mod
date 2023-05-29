package p034j$.wrappers;

import java.util.function.LongFunction;
import p034j$.util.function.InterfaceC2711r;
/* renamed from: j$.wrappers.h0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3101h0 implements LongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2711r f1184a;

    private /* synthetic */ C3101h0(InterfaceC2711r interfaceC2711r) {
        this.f1184a = interfaceC2711r;
    }

    /* renamed from: a */
    public static /* synthetic */ LongFunction m134a(InterfaceC2711r interfaceC2711r) {
        if (interfaceC2711r == null) {
            return null;
        }
        return interfaceC2711r instanceof C3099g0 ? ((C3099g0) interfaceC2711r).f1182a : new C3101h0(interfaceC2711r);
    }

    @Override // java.util.function.LongFunction
    public /* synthetic */ Object apply(long j) {
        return this.f1184a.apply(j);
    }
}
