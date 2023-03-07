package p034j$.wrappers;

import java.util.function.LongFunction;
import p034j$.util.function.InterfaceC2466r;
/* renamed from: j$.wrappers.h0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2856h0 implements LongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2466r f1175a;

    private /* synthetic */ C2856h0(InterfaceC2466r interfaceC2466r) {
        this.f1175a = interfaceC2466r;
    }

    /* renamed from: a */
    public static /* synthetic */ LongFunction m149a(InterfaceC2466r interfaceC2466r) {
        if (interfaceC2466r == null) {
            return null;
        }
        return interfaceC2466r instanceof C2854g0 ? ((C2854g0) interfaceC2466r).f1173a : new C2856h0(interfaceC2466r);
    }

    @Override // java.util.function.LongFunction
    public /* synthetic */ Object apply(long j) {
        return this.f1175a.apply(j);
    }
}
