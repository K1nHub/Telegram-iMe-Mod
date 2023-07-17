package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.concurrent.C2808a;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2816b;
/* renamed from: j$.util.stream.F1 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2889F1 implements InterfaceC2816b {

    /* renamed from: a */
    public static final /* synthetic */ C2889F1 f818a = new C2889F1();

    private /* synthetic */ C2889F1() {
    }

    @Override // p033j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        Objects.requireNonNull(function);
        return new C2808a(this, function);
    }

    @Override // p033j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return new C2943O1((InterfaceC3126u1) obj, (InterfaceC3126u1) obj2);
    }
}
