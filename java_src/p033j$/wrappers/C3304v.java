package p033j$.wrappers;

import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import p033j$.util.function.InterfaceC2871b;
/* renamed from: j$.wrappers.v */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3304v implements BinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2871b f1297a;

    private /* synthetic */ C3304v(InterfaceC2871b interfaceC2871b) {
        this.f1297a = interfaceC2871b;
    }

    /* renamed from: a */
    public static /* synthetic */ BinaryOperator m114a(InterfaceC2871b interfaceC2871b) {
        if (interfaceC2871b == null) {
            return null;
        }
        return interfaceC2871b instanceof C3302u ? ((C3302u) interfaceC2871b).f1295a : new C3304v(interfaceC2871b);
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return C3300t.m118a(this.f1297a.andThen(C3244L.m207a(function)));
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1297a.apply(obj, obj2);
    }
}
