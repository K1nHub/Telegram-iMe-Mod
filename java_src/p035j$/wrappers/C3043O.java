package p035j$.wrappers;

import java.util.function.IntBinaryOperator;
import p035j$.util.function.InterfaceC2672j;
/* renamed from: j$.wrappers.O */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3043O implements IntBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2672j f1159a;

    private /* synthetic */ C3043O(InterfaceC2672j interfaceC2672j) {
        this.f1159a = interfaceC2672j;
    }

    /* renamed from: a */
    public static /* synthetic */ IntBinaryOperator m177a(InterfaceC2672j interfaceC2672j) {
        if (interfaceC2672j == null) {
            return null;
        }
        return interfaceC2672j instanceof C3041N ? ((C3041N) interfaceC2672j).f1157a : new C3043O(interfaceC2672j);
    }

    @Override // java.util.function.IntBinaryOperator
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1159a.applyAsInt(i, i2);
    }
}
