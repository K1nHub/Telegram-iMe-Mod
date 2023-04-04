package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.concurrent.C2656a;
import p035j$.util.function.BiFunction;
import p035j$.util.function.Function;
import p035j$.util.function.InterfaceC2664b;
/* renamed from: j$.util.stream.K1 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2767K1 implements InterfaceC2664b {

    /* renamed from: a */
    public static final /* synthetic */ C2767K1 f779a = new C2767K1();

    private /* synthetic */ C2767K1() {
    }

    @Override // p035j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        Objects.requireNonNull(function);
        return new C2656a(this, function);
    }

    @Override // p035j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return new C2803Q1((InterfaceC2998y1) obj, (InterfaceC2998y1) obj2);
    }
}
