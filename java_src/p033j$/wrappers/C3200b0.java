package p033j$.wrappers;

import java.util.function.LongBinaryOperator;
import p033j$.util.function.InterfaceC2825n;
/* renamed from: j$.wrappers.b0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3200b0 implements LongBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2825n f1302a;

    private /* synthetic */ C3200b0(InterfaceC2825n interfaceC2825n) {
        this.f1302a = interfaceC2825n;
    }

    /* renamed from: a */
    public static /* synthetic */ LongBinaryOperator m217a(InterfaceC2825n interfaceC2825n) {
        if (interfaceC2825n == null) {
            return null;
        }
        return interfaceC2825n instanceof C3198a0 ? ((C3198a0) interfaceC2825n).f1300a : new C3200b0(interfaceC2825n);
    }

    @Override // java.util.function.LongBinaryOperator
    public /* synthetic */ long applyAsLong(long j, long j2) {
        return this.f1302a.applyAsLong(j, j2);
    }
}
