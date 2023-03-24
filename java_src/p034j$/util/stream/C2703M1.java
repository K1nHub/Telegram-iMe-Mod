package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.concurrent.C2580a;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2588b;
/* renamed from: j$.util.stream.M1 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2703M1 implements InterfaceC2588b {

    /* renamed from: a */
    public static final /* synthetic */ C2703M1 f788a = new C2703M1();

    private /* synthetic */ C2703M1() {
    }

    @Override // p034j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        Objects.requireNonNull(function);
        return new C2580a(this, function);
    }

    @Override // p034j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return new C2737S1((InterfaceC2631A1) obj, (InterfaceC2631A1) obj2);
    }
}
