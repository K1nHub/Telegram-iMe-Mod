package p033j$.wrappers;

import java.util.function.LongFunction;
import p033j$.util.function.InterfaceC2826q;
/* renamed from: j$.wrappers.f0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3206f0 implements LongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2826q f1310a;

    private /* synthetic */ C3206f0(InterfaceC2826q interfaceC2826q) {
        this.f1310a = interfaceC2826q;
    }

    /* renamed from: a */
    public static /* synthetic */ LongFunction m209a(InterfaceC2826q interfaceC2826q) {
        if (interfaceC2826q == null) {
            return null;
        }
        return interfaceC2826q instanceof C3204e0 ? ((C3204e0) interfaceC2826q).f1308a : new C3206f0(interfaceC2826q);
    }

    @Override // java.util.function.LongFunction
    public /* synthetic */ Object apply(long j) {
        return this.f1310a.apply(j);
    }
}
