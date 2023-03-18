package p034j$.wrappers;

import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import p034j$.util.function.InterfaceC2574b;
/* renamed from: j$.wrappers.v */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3007v implements BinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2574b f1207a;

    private /* synthetic */ C3007v(InterfaceC2574b interfaceC2574b) {
        this.f1207a = interfaceC2574b;
    }

    /* renamed from: a */
    public static /* synthetic */ BinaryOperator m111a(InterfaceC2574b interfaceC2574b) {
        if (interfaceC2574b == null) {
            return null;
        }
        return interfaceC2574b instanceof C3005u ? ((C3005u) interfaceC2574b).f1205a : new C3007v(interfaceC2574b);
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return C3003t.m115a(this.f1207a.andThen(C2947L.m204a(function)));
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1207a.apply(obj, obj2);
    }
}
