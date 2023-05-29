package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.concurrent.C2682a;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2690b;
/* renamed from: j$.util.stream.I1 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2781I1 implements InterfaceC2690b {

    /* renamed from: a */
    public static final /* synthetic */ C2781I1 f758a = new C2781I1();

    private /* synthetic */ C2781I1() {
    }

    @Override // p034j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        Objects.requireNonNull(function);
        return new C2682a(this, function);
    }

    @Override // p034j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return new C2823P1((InterfaceC3012w1) obj, (InterfaceC3012w1) obj2);
    }
}
