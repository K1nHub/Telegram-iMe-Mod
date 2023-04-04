package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.concurrent.C2656a;
import p035j$.util.function.BiConsumer;
import p035j$.util.function.BiFunction;
import p035j$.util.function.Function;
import p035j$.util.function.InterfaceC2664b;
/* renamed from: j$.util.stream.C */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2717C implements InterfaceC2664b {

    /* renamed from: a */
    public final /* synthetic */ int f704a;

    /* renamed from: b */
    public final /* synthetic */ BiConsumer f705b;

    public /* synthetic */ C2717C(BiConsumer biConsumer, int i) {
        this.f704a = i;
        if (i == 1) {
            this.f705b = biConsumer;
        } else if (i != 2) {
            this.f705b = biConsumer;
        } else {
            this.f705b = biConsumer;
        }
    }

    @Override // p035j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        switch (this.f704a) {
            case 0:
                Objects.requireNonNull(function);
                return new C2656a(this, function);
            case 1:
                Objects.requireNonNull(function);
                return new C2656a(this, function);
            default:
                Objects.requireNonNull(function);
                return new C2656a(this, function);
        }
    }

    @Override // p035j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f704a) {
            case 0:
                this.f705b.accept(obj, obj2);
                return obj;
            case 1:
                this.f705b.accept(obj, obj2);
                return obj;
            default:
                this.f705b.accept(obj, obj2);
                return obj;
        }
    }
}
