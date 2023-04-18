package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.concurrent.C2643a;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2651b;
/* renamed from: j$.util.stream.F1 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2724F1 implements InterfaceC2651b {

    /* renamed from: a */
    public static final /* synthetic */ C2724F1 f733a = new C2724F1();

    private /* synthetic */ C2724F1() {
    }

    @Override // p034j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        Objects.requireNonNull(function);
        return new C2643a(this, function);
    }

    @Override // p034j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return new C2778O1((InterfaceC2961u1) obj, (InterfaceC2961u1) obj2);
    }
}
