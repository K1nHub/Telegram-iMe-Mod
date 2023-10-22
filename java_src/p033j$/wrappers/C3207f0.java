package p033j$.wrappers;

import java.util.function.LongFunction;
import p033j$.util.function.InterfaceC2827q;
/* renamed from: j$.wrappers.f0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3207f0 implements LongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2827q f1310a;

    private /* synthetic */ C3207f0(InterfaceC2827q interfaceC2827q) {
        this.f1310a = interfaceC2827q;
    }

    /* renamed from: a */
    public static /* synthetic */ LongFunction m205a(InterfaceC2827q interfaceC2827q) {
        if (interfaceC2827q == null) {
            return null;
        }
        return interfaceC2827q instanceof C3205e0 ? ((C3205e0) interfaceC2827q).f1308a : new C3207f0(interfaceC2827q);
    }

    @Override // java.util.function.LongFunction
    public /* synthetic */ Object apply(long j) {
        return this.f1310a.apply(j);
    }
}
