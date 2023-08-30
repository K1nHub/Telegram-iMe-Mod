package p033j$.wrappers;

import java.util.function.IntBinaryOperator;
import p033j$.util.function.InterfaceC2963j;
/* renamed from: j$.wrappers.O */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3334O implements IntBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2963j f1252a;

    private /* synthetic */ C3334O(InterfaceC2963j interfaceC2963j) {
        this.f1252a = interfaceC2963j;
    }

    /* renamed from: a */
    public static /* synthetic */ IntBinaryOperator m186a(InterfaceC2963j interfaceC2963j) {
        if (interfaceC2963j == null) {
            return null;
        }
        return interfaceC2963j instanceof C3332N ? ((C3332N) interfaceC2963j).f1250a : new C3334O(interfaceC2963j);
    }

    @Override // java.util.function.IntBinaryOperator
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1252a.applyAsInt(i, i2);
    }
}
