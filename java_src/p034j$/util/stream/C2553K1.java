package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.concurrent.C2442a;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2450b;
/* renamed from: j$.util.stream.K1 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2553K1 implements InterfaceC2450b {

    /* renamed from: a */
    public static final /* synthetic */ C2553K1 f768a = new C2553K1();

    private /* synthetic */ C2553K1() {
    }

    @Override // p034j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        Objects.requireNonNull(function);
        return new C2442a(this, function);
    }

    @Override // p034j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return new C2589Q1((InterfaceC2784y1) obj, (InterfaceC2784y1) obj2);
    }
}
