package p033j$.wrappers;

import java.util.function.LongBinaryOperator;
import p033j$.util.function.InterfaceC2968o;
/* renamed from: j$.wrappers.d0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3353d0 implements LongBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2968o f1271a;

    private /* synthetic */ C3353d0(InterfaceC2968o interfaceC2968o) {
        this.f1271a = interfaceC2968o;
    }

    /* renamed from: a */
    public static /* synthetic */ LongBinaryOperator m162a(InterfaceC2968o interfaceC2968o) {
        if (interfaceC2968o == null) {
            return null;
        }
        return interfaceC2968o instanceof C3351c0 ? ((C3351c0) interfaceC2968o).f1269a : new C3353d0(interfaceC2968o);
    }

    @Override // java.util.function.LongBinaryOperator
    public /* synthetic */ long applyAsLong(long j, long j2) {
        return this.f1271a.applyAsLong(j, j2);
    }
}
