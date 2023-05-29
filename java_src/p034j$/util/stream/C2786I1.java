package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.concurrent.C2687a;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2695b;
/* renamed from: j$.util.stream.I1 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2786I1 implements InterfaceC2695b {

    /* renamed from: a */
    public static final /* synthetic */ C2786I1 f758a = new C2786I1();

    private /* synthetic */ C2786I1() {
    }

    @Override // p034j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        Objects.requireNonNull(function);
        return new C2687a(this, function);
    }

    @Override // p034j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return new C2828P1((InterfaceC3017w1) obj, (InterfaceC3017w1) obj2);
    }
}
