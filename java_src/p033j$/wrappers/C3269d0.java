package p033j$.wrappers;

import java.util.function.LongBinaryOperator;
import p033j$.util.function.InterfaceC2884o;
/* renamed from: j$.wrappers.d0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3269d0 implements LongBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2884o f1262a;

    private /* synthetic */ C3269d0(InterfaceC2884o interfaceC2884o) {
        this.f1262a = interfaceC2884o;
    }

    /* renamed from: a */
    public static /* synthetic */ LongBinaryOperator m162a(InterfaceC2884o interfaceC2884o) {
        if (interfaceC2884o == null) {
            return null;
        }
        return interfaceC2884o instanceof C3267c0 ? ((C3267c0) interfaceC2884o).f1260a : new C3269d0(interfaceC2884o);
    }

    @Override // java.util.function.LongBinaryOperator
    public /* synthetic */ long applyAsLong(long j, long j2) {
        return this.f1262a.applyAsLong(j, j2);
    }
}
