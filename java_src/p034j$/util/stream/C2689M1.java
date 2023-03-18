package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.concurrent.C2566a;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2574b;
/* renamed from: j$.util.stream.M1 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2689M1 implements InterfaceC2574b {

    /* renamed from: a */
    public static final /* synthetic */ C2689M1 f787a = new C2689M1();

    private /* synthetic */ C2689M1() {
    }

    @Override // p034j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        Objects.requireNonNull(function);
        return new C2566a(this, function);
    }

    @Override // p034j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return new C2723S1((InterfaceC2617A1) obj, (InterfaceC2617A1) obj2);
    }
}
