package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.concurrent.C2682a;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2690b;
/* renamed from: j$.util.stream.K1 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2793K1 implements InterfaceC2690b {

    /* renamed from: a */
    public static final /* synthetic */ C2793K1 f777a = new C2793K1();

    private /* synthetic */ C2793K1() {
    }

    @Override // p034j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        Objects.requireNonNull(function);
        return new C2682a(this, function);
    }

    @Override // p034j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return new C2829Q1((InterfaceC3024y1) obj, (InterfaceC3024y1) obj2);
    }
}
