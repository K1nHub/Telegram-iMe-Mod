package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.concurrent.C2566a;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2574b;
/* renamed from: j$.util.stream.F1 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2647F1 implements InterfaceC2574b {

    /* renamed from: a */
    public static final /* synthetic */ C2647F1 f732a = new C2647F1();

    private /* synthetic */ C2647F1() {
    }

    @Override // p034j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        Objects.requireNonNull(function);
        return new C2566a(this, function);
    }

    @Override // p034j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return new C2701O1((InterfaceC2884u1) obj, (InterfaceC2884u1) obj2);
    }
}
