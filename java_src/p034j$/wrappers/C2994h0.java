package p034j$.wrappers;

import java.util.function.LongFunction;
import p034j$.util.function.InterfaceC2604r;
/* renamed from: j$.wrappers.h0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2994h0 implements LongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2604r f1181a;

    private /* synthetic */ C2994h0(InterfaceC2604r interfaceC2604r) {
        this.f1181a = interfaceC2604r;
    }

    /* renamed from: a */
    public static /* synthetic */ LongFunction m148a(InterfaceC2604r interfaceC2604r) {
        if (interfaceC2604r == null) {
            return null;
        }
        return interfaceC2604r instanceof C2992g0 ? ((C2992g0) interfaceC2604r).f1179a : new C2994h0(interfaceC2604r);
    }

    @Override // java.util.function.LongFunction
    public /* synthetic */ Object apply(long j) {
        return this.f1181a.apply(j);
    }
}
