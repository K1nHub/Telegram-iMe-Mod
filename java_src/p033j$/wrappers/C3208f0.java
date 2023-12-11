package p033j$.wrappers;

import java.util.function.LongFunction;
import p033j$.util.function.InterfaceC2828q;
/* renamed from: j$.wrappers.f0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3208f0 implements LongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2828q f1310a;

    private /* synthetic */ C3208f0(InterfaceC2828q interfaceC2828q) {
        this.f1310a = interfaceC2828q;
    }

    /* renamed from: a */
    public static /* synthetic */ LongFunction m206a(InterfaceC2828q interfaceC2828q) {
        if (interfaceC2828q == null) {
            return null;
        }
        return interfaceC2828q instanceof C3206e0 ? ((C3206e0) interfaceC2828q).f1308a : new C3208f0(interfaceC2828q);
    }

    @Override // java.util.function.LongFunction
    public /* synthetic */ Object apply(long j) {
        return this.f1310a.apply(j);
    }
}
