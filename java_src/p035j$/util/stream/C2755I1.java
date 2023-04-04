package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.concurrent.C2656a;
import p035j$.util.function.BiFunction;
import p035j$.util.function.Function;
import p035j$.util.function.InterfaceC2664b;
/* renamed from: j$.util.stream.I1 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2755I1 implements InterfaceC2664b {

    /* renamed from: a */
    public static final /* synthetic */ C2755I1 f760a = new C2755I1();

    private /* synthetic */ C2755I1() {
    }

    @Override // p035j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        Objects.requireNonNull(function);
        return new C2656a(this, function);
    }

    @Override // p035j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return new C2797P1((InterfaceC2986w1) obj, (InterfaceC2986w1) obj2);
    }
}
