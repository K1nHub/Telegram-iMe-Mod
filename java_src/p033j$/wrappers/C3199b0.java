package p033j$.wrappers;

import java.util.function.LongBinaryOperator;
import p033j$.util.function.InterfaceC2824n;
/* renamed from: j$.wrappers.b0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3199b0 implements LongBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2824n f1302a;

    private /* synthetic */ C3199b0(InterfaceC2824n interfaceC2824n) {
        this.f1302a = interfaceC2824n;
    }

    /* renamed from: a */
    public static /* synthetic */ LongBinaryOperator m216a(InterfaceC2824n interfaceC2824n) {
        if (interfaceC2824n == null) {
            return null;
        }
        return interfaceC2824n instanceof C3197a0 ? ((C3197a0) interfaceC2824n).f1300a : new C3199b0(interfaceC2824n);
    }

    @Override // java.util.function.LongBinaryOperator
    public /* synthetic */ long applyAsLong(long j, long j2) {
        return this.f1302a.applyAsLong(j, j2);
    }
}
