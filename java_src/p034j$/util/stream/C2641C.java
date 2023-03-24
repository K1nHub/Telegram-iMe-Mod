package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.concurrent.C2580a;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2588b;
/* renamed from: j$.util.stream.C */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2641C implements InterfaceC2588b {

    /* renamed from: a */
    public final /* synthetic */ int f699a;

    /* renamed from: b */
    public final /* synthetic */ BiConsumer f700b;

    public /* synthetic */ C2641C(BiConsumer biConsumer, int i) {
        this.f699a = i;
        if (i == 1) {
            this.f700b = biConsumer;
        } else if (i != 2) {
            this.f700b = biConsumer;
        } else {
            this.f700b = biConsumer;
        }
    }

    @Override // p034j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        switch (this.f699a) {
            case 0:
                Objects.requireNonNull(function);
                return new C2580a(this, function);
            case 1:
                Objects.requireNonNull(function);
                return new C2580a(this, function);
            default:
                Objects.requireNonNull(function);
                return new C2580a(this, function);
        }
    }

    @Override // p034j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f699a) {
            case 0:
                this.f700b.accept(obj, obj2);
                return obj;
            case 1:
                this.f700b.accept(obj, obj2);
                return obj;
            default:
                this.f700b.accept(obj, obj2);
                return obj;
        }
    }
}
