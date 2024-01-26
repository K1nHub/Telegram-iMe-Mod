package p033j$.wrappers;

import java.util.function.LongBinaryOperator;
import p033j$.util.function.InterfaceC2823n;
/* renamed from: j$.wrappers.b0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3198b0 implements LongBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2823n f1302a;

    private /* synthetic */ C3198b0(InterfaceC2823n interfaceC2823n) {
        this.f1302a = interfaceC2823n;
    }

    /* renamed from: a */
    public static /* synthetic */ LongBinaryOperator m220a(InterfaceC2823n interfaceC2823n) {
        if (interfaceC2823n == null) {
            return null;
        }
        return interfaceC2823n instanceof C3196a0 ? ((C3196a0) interfaceC2823n).f1300a : new C3198b0(interfaceC2823n);
    }

    @Override // java.util.function.LongBinaryOperator
    public /* synthetic */ long applyAsLong(long j, long j2) {
        return this.f1302a.applyAsLong(j, j2);
    }
}
