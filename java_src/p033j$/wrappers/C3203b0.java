package p033j$.wrappers;

import java.util.function.LongBinaryOperator;
import p033j$.util.function.InterfaceC2828n;
/* renamed from: j$.wrappers.b0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3203b0 implements LongBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2828n f1302a;

    private /* synthetic */ C3203b0(InterfaceC2828n interfaceC2828n) {
        this.f1302a = interfaceC2828n;
    }

    /* renamed from: a */
    public static /* synthetic */ LongBinaryOperator m217a(InterfaceC2828n interfaceC2828n) {
        if (interfaceC2828n == null) {
            return null;
        }
        return interfaceC2828n instanceof C3201a0 ? ((C3201a0) interfaceC2828n).f1300a : new C3203b0(interfaceC2828n);
    }

    @Override // java.util.function.LongBinaryOperator
    public /* synthetic */ long applyAsLong(long j, long j2) {
        return this.f1302a.applyAsLong(j, j2);
    }
}
