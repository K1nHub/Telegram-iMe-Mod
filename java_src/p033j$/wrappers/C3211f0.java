package p033j$.wrappers;

import java.util.function.LongFunction;
import p033j$.util.function.InterfaceC2831q;
/* renamed from: j$.wrappers.f0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3211f0 implements LongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2831q f1310a;

    private /* synthetic */ C3211f0(InterfaceC2831q interfaceC2831q) {
        this.f1310a = interfaceC2831q;
    }

    /* renamed from: a */
    public static /* synthetic */ LongFunction m206a(InterfaceC2831q interfaceC2831q) {
        if (interfaceC2831q == null) {
            return null;
        }
        return interfaceC2831q instanceof C3209e0 ? ((C3209e0) interfaceC2831q).f1308a : new C3211f0(interfaceC2831q);
    }

    @Override // java.util.function.LongFunction
    public /* synthetic */ Object apply(long j) {
        return this.f1310a.apply(j);
    }
}
