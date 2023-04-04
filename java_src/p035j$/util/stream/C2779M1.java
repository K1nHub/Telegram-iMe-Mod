package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.concurrent.C2656a;
import p035j$.util.function.BiFunction;
import p035j$.util.function.Function;
import p035j$.util.function.InterfaceC2664b;
/* renamed from: j$.util.stream.M1 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2779M1 implements InterfaceC2664b {

    /* renamed from: a */
    public static final /* synthetic */ C2779M1 f793a = new C2779M1();

    private /* synthetic */ C2779M1() {
    }

    @Override // p035j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        Objects.requireNonNull(function);
        return new C2656a(this, function);
    }

    @Override // p035j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return new C2813S1((InterfaceC2707A1) obj, (InterfaceC2707A1) obj2);
    }
}
