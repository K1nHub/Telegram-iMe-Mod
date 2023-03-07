package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.concurrent.C2442a;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2450b;
/* renamed from: j$.util.stream.I1 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2541I1 implements InterfaceC2450b {

    /* renamed from: a */
    public static final /* synthetic */ C2541I1 f749a = new C2541I1();

    private /* synthetic */ C2541I1() {
    }

    @Override // p034j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        Objects.requireNonNull(function);
        return new C2442a(this, function);
    }

    @Override // p034j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return new C2583P1((InterfaceC2772w1) obj, (InterfaceC2772w1) obj2);
    }
}
