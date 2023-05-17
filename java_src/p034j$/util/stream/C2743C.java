package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.concurrent.C2682a;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2690b;
/* renamed from: j$.util.stream.C */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2743C implements InterfaceC2690b {

    /* renamed from: a */
    public final /* synthetic */ int f702a;

    /* renamed from: b */
    public final /* synthetic */ BiConsumer f703b;

    public /* synthetic */ C2743C(BiConsumer biConsumer, int i) {
        this.f702a = i;
        if (i == 1) {
            this.f703b = biConsumer;
        } else if (i != 2) {
            this.f703b = biConsumer;
        } else {
            this.f703b = biConsumer;
        }
    }

    @Override // p034j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        switch (this.f702a) {
            case 0:
                Objects.requireNonNull(function);
                return new C2682a(this, function);
            case 1:
                Objects.requireNonNull(function);
                return new C2682a(this, function);
            default:
                Objects.requireNonNull(function);
                return new C2682a(this, function);
        }
    }

    @Override // p034j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f702a) {
            case 0:
                this.f703b.accept(obj, obj2);
                return obj;
            case 1:
                this.f703b.accept(obj, obj2);
                return obj;
            default:
                this.f703b.accept(obj, obj2);
                return obj;
        }
    }
}
