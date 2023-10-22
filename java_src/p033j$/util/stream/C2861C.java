package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.concurrent.C2804a;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2812b;
/* renamed from: j$.util.stream.C */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2861C implements InterfaceC2812b {

    /* renamed from: a */
    public final /* synthetic */ int f837a;

    /* renamed from: b */
    public final /* synthetic */ BiConsumer f838b;

    public /* synthetic */ C2861C(BiConsumer biConsumer, int i) {
        this.f837a = i;
        if (i == 1) {
            this.f838b = biConsumer;
        } else if (i != 2) {
            this.f838b = biConsumer;
        } else {
            this.f838b = biConsumer;
        }
    }

    @Override // p033j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        switch (this.f837a) {
            case 0:
                Objects.requireNonNull(function);
                return new C2804a(this, function);
            case 1:
                Objects.requireNonNull(function);
                return new C2804a(this, function);
            default:
                Objects.requireNonNull(function);
                return new C2804a(this, function);
        }
    }

    @Override // p033j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f837a) {
            case 0:
                this.f838b.accept(obj, obj2);
                return obj;
            case 1:
                this.f838b.accept(obj, obj2);
                return obj;
            default:
                this.f838b.accept(obj, obj2);
                return obj;
        }
    }
}
