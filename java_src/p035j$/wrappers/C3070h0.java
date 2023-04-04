package p035j$.wrappers;

import java.util.function.LongFunction;
import p035j$.util.function.InterfaceC2680r;
/* renamed from: j$.wrappers.h0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3070h0 implements LongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2680r f1186a;

    private /* synthetic */ C3070h0(InterfaceC2680r interfaceC2680r) {
        this.f1186a = interfaceC2680r;
    }

    /* renamed from: a */
    public static /* synthetic */ LongFunction m143a(InterfaceC2680r interfaceC2680r) {
        if (interfaceC2680r == null) {
            return null;
        }
        return interfaceC2680r instanceof C3068g0 ? ((C3068g0) interfaceC2680r).f1184a : new C3070h0(interfaceC2680r);
    }

    @Override // java.util.function.LongFunction
    public /* synthetic */ Object apply(long j) {
        return this.f1186a.apply(j);
    }
}
