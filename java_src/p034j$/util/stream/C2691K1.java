package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.concurrent.C2580a;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2588b;
/* renamed from: j$.util.stream.K1 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2691K1 implements InterfaceC2588b {

    /* renamed from: a */
    public static final /* synthetic */ C2691K1 f774a = new C2691K1();

    private /* synthetic */ C2691K1() {
    }

    @Override // p034j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        Objects.requireNonNull(function);
        return new C2580a(this, function);
    }

    @Override // p034j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return new C2727Q1((InterfaceC2922y1) obj, (InterfaceC2922y1) obj2);
    }
}
