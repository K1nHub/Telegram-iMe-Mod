package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.concurrent.C2682a;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2690b;
/* renamed from: j$.util.stream.F1 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2763F1 implements InterfaceC2690b {

    /* renamed from: a */
    public static final /* synthetic */ C2763F1 f736a = new C2763F1();

    private /* synthetic */ C2763F1() {
    }

    @Override // p034j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        Objects.requireNonNull(function);
        return new C2682a(this, function);
    }

    @Override // p034j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return new C2817O1((InterfaceC3000u1) obj, (InterfaceC3000u1) obj2);
    }
}