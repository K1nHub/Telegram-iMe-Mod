package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.concurrent.C2566a;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2574b;
/* renamed from: j$.util.stream.I1 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2665I1 implements InterfaceC2574b {

    /* renamed from: a */
    public static final /* synthetic */ C2665I1 f754a = new C2665I1();

    private /* synthetic */ C2665I1() {
    }

    @Override // p034j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        Objects.requireNonNull(function);
        return new C2566a(this, function);
    }

    @Override // p034j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return new C2707P1((InterfaceC2896w1) obj, (InterfaceC2896w1) obj2);
    }
}
