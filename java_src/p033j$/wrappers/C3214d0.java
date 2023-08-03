package p033j$.wrappers;

import java.util.function.LongBinaryOperator;
import p033j$.util.function.InterfaceC2829o;
/* renamed from: j$.wrappers.d0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3214d0 implements LongBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2829o f1261a;

    private /* synthetic */ C3214d0(InterfaceC2829o interfaceC2829o) {
        this.f1261a = interfaceC2829o;
    }

    /* renamed from: a */
    public static /* synthetic */ LongBinaryOperator m162a(InterfaceC2829o interfaceC2829o) {
        if (interfaceC2829o == null) {
            return null;
        }
        return interfaceC2829o instanceof C3212c0 ? ((C3212c0) interfaceC2829o).f1259a : new C3214d0(interfaceC2829o);
    }

    @Override // java.util.function.LongBinaryOperator
    public /* synthetic */ long applyAsLong(long j, long j2) {
        return this.f1261a.applyAsLong(j, j2);
    }
}
