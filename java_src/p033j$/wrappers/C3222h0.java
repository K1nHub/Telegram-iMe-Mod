package p033j$.wrappers;

import java.util.function.LongFunction;
import p033j$.util.function.InterfaceC2832r;
/* renamed from: j$.wrappers.h0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3222h0 implements LongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2832r f1269a;

    private /* synthetic */ C3222h0(InterfaceC2832r interfaceC2832r) {
        this.f1269a = interfaceC2832r;
    }

    /* renamed from: a */
    public static /* synthetic */ LongFunction m152a(InterfaceC2832r interfaceC2832r) {
        if (interfaceC2832r == null) {
            return null;
        }
        return interfaceC2832r instanceof C3220g0 ? ((C3220g0) interfaceC2832r).f1267a : new C3222h0(interfaceC2832r);
    }

    @Override // java.util.function.LongFunction
    public /* synthetic */ Object apply(long j) {
        return this.f1269a.apply(j);
    }
}
