package p033j$.wrappers;

import java.util.function.LongFunction;
import p033j$.util.function.InterfaceC2971r;
/* renamed from: j$.wrappers.h0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3361h0 implements LongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2971r f1279a;

    private /* synthetic */ C3361h0(InterfaceC2971r interfaceC2971r) {
        this.f1279a = interfaceC2971r;
    }

    /* renamed from: a */
    public static /* synthetic */ LongFunction m152a(InterfaceC2971r interfaceC2971r) {
        if (interfaceC2971r == null) {
            return null;
        }
        return interfaceC2971r instanceof C3359g0 ? ((C3359g0) interfaceC2971r).f1277a : new C3361h0(interfaceC2971r);
    }

    @Override // java.util.function.LongFunction
    public /* synthetic */ Object apply(long j) {
        return this.f1279a.apply(j);
    }
}
